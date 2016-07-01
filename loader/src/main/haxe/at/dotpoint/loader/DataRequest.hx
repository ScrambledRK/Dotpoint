package haxe.at.dotpoint.loader;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.generic.ErrorEvent;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.event.ProgressEvent;
import haxe.at.dotpoint.loader.format.IDataFormat;
import haxe.at.dotpoint.loader.processor.ADataProcessor;
import haxe.at.dotpoint.loader.processor.IDataProcessor;
import haxe.at.dotpoint.loader.processor.IDataRequest;

/**
 * ...
 * @author Gerald Hattensauer
 */
class DataRequest extends ADataProcessor implements IDataRequest<URLRequest,Dynamic>
{

	public var request(default, null):URLRequest;
	public var format(default, null):IDataFormat;

	public var loader:IDataProcessor<URLRequest,Dynamic>;
	public var parser:IDataProcessor<Dynamic,Dynamic>;

	public var result(default, null):Dynamic;

	// --------------- //

	/**
	 *
	 */
	public var url(get,set):String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( request:URLRequest, ?format:IDataFormat )
	{
		super();

		this.request = request;
		this.format = format;
	}

	/**
	 * creates an DataRequest by analyzing the extension of the url and determining a useful DataType
	 * if none can be found its assumed to be binary. if you can also specify it by hand in case
	 * you load an url without extension for example
	 */
	public static function createFromURL( url:String, ?format:IDataFormat ):DataRequest
	{
		return new DataRequest( new URLRequest( url ), format );
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	//
	private function get_url():String
	{
		if( this.request == null )
			return null;

		return this.request.url;
	}

	//
	private function set_url( value:String ):String
	{
		if( this.request == null )
			return null;

		return this.request.url = value;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	?complete
	 */
	public function load( ?complete:StatusEvent->Void, ?progress:ProgressEvent->Void, ?error:ErrorEvent->Void ):Void
	{
		this.addStatusListener( complete, progress, error );
		this.start( null );
	}

	/**
	 *
	 */
	override private function close():Void
	{
		if( this.loader != null && this.loader.isProcessing )
			this.loader.stop();

		if( this.parser != null && this.parser.isProcessing )
			this.parser.stop();

		this.loader = null;
		this.parser = null;
	}

	// --------------------------------------------- //
	// --------------------------------------------- //

	/**
	 *
	 */
	@:noComplete
	//
	public function start( request:URLRequest ):Void
	{
		if( request != null )
			this.request = request;

		this.setRequirements();

		// -------------- //

		this.setStatus( StatusEvent.STARTED );

		this.loader.addStatusListener( this.onComplete, this.onProgress, this.onError );
		this.loader.start( this.request );
	}

	/**
	 *
	 * @param	event
	 */
	override function onComplete( ?event:Dynamic ):Void
	{
		if( this.loader.isComplete && !this.parser.isComplete )
		{
			this.loader.removeStatusListener( this.onComplete, this.onProgress, this.onError );

			this.parser.addStatusListener( this.onComplete, this.onProgress, this.onError );
			this.parser.start( this.loader.result );
		}
		else
		{
			this.parser.removeStatusListener( this.onComplete, this.onProgress, this.onError );

			this.result = this.parser.result;

			super.onComplete();
		}
	}

	/**
	 * TODO: split progress between loading and parsing
	 * @param	event
	 */
	private function onProgress( event:ProgressEvent ):Void
	{
		if( this.hasListener( event.type ) )
		{
			var total:ProgressEvent = new ProgressEvent( event.type );
				total.bytesLoaded = event.bytesLoaded;
				total.bytesTotal = event.bytesLoaded;

			this.dispatch( total );
		}
	}

	/**
	 *
	 * @param	event
	 */
	override function onError( event:Event ):Void
	{
		if( event != null && this.hasListener( event.type ) )
			this.dispatch( event );
	}

	// --------------------------------------------- //
	// --------------------------------------------- //

	/**
	 *
	 */
	private function setRequirements():Void
	{
		if( this.format == null && (this.loader == null || this.parser == null) )
		{
			this.format = DataHelper.instance.guessFormat( this );

			if( this.format == null )
				throw "cannot guess DataRequest format from (" + this.request.url + ")";
		}

		if( this.loader == null )
			this.loader = this.format.createLoader( this );

		if( this.parser == null )
			this.parser = this.format.createParser( this );

		if( this.loader == null || this.parser == null )
			throw "cannot guess loader/parser for DataRequest format: " + this.format;
	}

	/**
	 *
	 * @return
	 */
	override public function toString():String
	{
		var url:String = this.request != null ? this.request.url : "null";
		return "[DataRequest;" + url + "]";
	}
}