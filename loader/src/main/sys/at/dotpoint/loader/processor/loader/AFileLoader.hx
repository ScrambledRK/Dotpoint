package sys.at.dotpoint.loader.processor.loader;

import haxe.at.dotpoint.core.dispatcher.event.generic.ErrorEvent;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.core.StringTool;
import haxe.at.dotpoint.loader.event.ProgressEvent;
import haxe.at.dotpoint.loader.processor.ADataProcessor;
import haxe.at.dotpoint.loader.URLRequest;
import haxe.io.Bytes;
import haxe.Timer;
import sys.FileSystem;
import sys.io.File;
import sys.io.FileInput;

/**
 * ...
 * @author RK
 */
class AFileLoader extends ADataProcessor
{

	/**
	 *
	 */
	private var file:FileInput;
	private var bytes:Bytes;

	// ------------------- //

	/**
	 *
	 */
	private var timer:Timer;

	/**
	 *
	 */
	private var readInterval:Int;

	/**
	 *
	 */
	private var readLength:Int;

	/**
	 *
	 */
	private var readPosition:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( readInterval:Int = 20, readLength:Int = 256 )
	{
		super();

		this.readInterval 	= readInterval;
		this.readLength 	= readLength;
		this.readPosition 	= 0;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	request
	 */
	public function start( request:URLRequest ):Void
	{
		this.setStatus( StatusEvent.STARTED );

		try
		{
			this.file = File.read( request.url );
			this.bytes = Bytes.alloc( FileSystem.stat( request.url ).size );
		}
		catch( error:Dynamic )
		{
			this.onError( new ErrorEvent( "Unknown Error", Std.string( error ) ) );
		}

		#if !php
			this.timer = new Timer( this.readInterval );
			this.timer.run = this.read;
		#else
			this.readInterval = 20000;
			this.read();
		#end
	}

	/**
	 *
	 */
	private function read():Void
	{
		var startTime:Float = Timer.stamp();

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
					this.onError( new ErrorEvent( "Unknown Error", StringTool.dumpObject( error ) ) );
				}
			}

			// --------------------- //

			// end of file?
			if( this.file.eof() || p > this.bytes.length || l <= 0 )
			{
				this.onComplete( null );
				break;
			}

			// timelimit exeeded?
			if( Timer.stamp() - startTime > ( (this.readInterval - 1) / 1000) )
			{
				var progress:ProgressEvent = new ProgressEvent( ProgressEvent.PROGRESS );
					progress.bytesLoaded = p;
					progress.bytesTotal = this.bytes.length;

				this.dispatch( progress );
				break;
			}
		}

		this.readPosition = p;
	}

	/**
	 *
	 */
	override private function close():Void
	{
		this.file.close();
		this.file = null;

		#if !php
			this.timer.stop();
			this.timer = null;
		#end

		this.bytes = null;
		this.readPosition = 0;
	}
}