package at.dotpoint.loader.process;

import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.utils.Delay;
import haxe.Timer;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import sys.FileSystem;
import sys.io.File;
import haxe.io.Bytes;
import sys.io.FileInput;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.remote.http.Request;

/**
 *
 */
class AFileLoader<TResult> extends ADataProcess<Request,TResult>
{

	//
	private var file:FileInput;
	private var bytes:Bytes;

	//
	private var time:Float;
	private var isBlocking:Bool;
	private var readLength:Int;
	private var readPosition:Int;

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	//
	public function new( ?proxy:IEventDispatcher, isBlocking:Bool = false, readLength:Int = 256 )
	{
		super( proxy );

		this.isBlocking 	= isBlocking;
		this.readLength 	= readLength;
		this.readPosition 	= 0;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //


	/**
	 * starts the actions, fires StatusEvents according to the current state
	 */
	override public function start( ):Void
	{
		super.start();

		//
		this.setStatus( StatusEvent.STARTED, true );

		try
		{
			var file:String = this.input.url;
			trace("f", file);
			//
			if( !FileSystem.exists( file ) || FileSystem.isDirectory( file ) )
				throw 'file $file does not exist or is a directory';

			trace("f", "k");

			this.file = File.read( file );
			this.bytes = Bytes.alloc( FileSystem.stat( file ).size );

			//
			this.read();
		}
		catch( error:Dynamic )
		{
			trace(error);
			this.error( 'FileRead Error: $error', true );
		}
	}

	/**
	 *
	 */
	private function read():Void
	{
		this.time = Timer.stamp( );

		if( !this.isProcessing || this.isComplete )
			return;

		//
		this.onProgress();

		var p:Int = this.readPosition;
		var l:Int = this.readLength;

		while( true )
		{
			if( p + l > this.bytes.length )
			{
				l = this.bytes.length - p;
			}

			// --------------------- //

			if( l > 0 )
			{
				try
				{
					var line:Bytes = this.file.read( l );
					this.bytes.blit( p, line, 0, l );

					p += l;
				}
				catch( error:Dynamic )
				{
					this.error( 'FileRead Error: $error' );
					return;
				}
			}

			// --------------------- //

			//
			if( this.file.eof() || p > this.bytes.length || l <= 0 )
			{
				this.onComplete( null );
				return;
			}

			//
			if( !isBlocking && Delay.interrupt( this.time, this.read ) )
				break;
		}

		this.readPosition = p;
	}

	/**
	 * stops and removes any dependencies
	 */
	override public function stop( ):Void
	{
		super.stop();
		this.clear();

		//
		this.setStatus( StatusEvent.STOPPED, true );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	// Complete + Error

	/**
	 *
	 * @param	event
	 */
	private function onComplete( ?event:Dynamic ):Void
	{
		this.setResult( );
		this.setStatus( StatusEvent.COMPLETE, true );
	}

	//
	private function setResult( ):Void
	{
		throw "must implement setResults method";
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	// Status + Progress

	//
	private function onProgress():Void
	{
		if( !this.hasListener( ProgressEvent.PROGRESS ) )
			return;

		//
		var event:ProgressEvent = new ProgressEvent();
			event.current = this.readPosition;
			event.total = this.bytes.length;

		this.dispatch( event.type, event );
	}
}