package at.dotpoint.processor.loader;

import at.dotpoint.remote.http.Header;
import at.dotpoint.remote.http.response.ResponseHeader;
import at.dotpoint.remote.http.request.Parameters;
import at.dotpoint.dispatcher.event.generic.ProgressEvent;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import js.html.XMLHttpRequest;
import at.dotpoint.remote.http.Request;

//
@:require(js)
//
class AHTTPLoader<TResult> extends ADataProcess<Request,TResult>
{
	//
	private var loader:XMLHttpRequest;

	public var response:ResponseHeader;
	public var status:Null<Int>;

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	//
	public function new( ?proxy:IEventDispatcher )
	{
		super( proxy );

		//
		this.loader = new XMLHttpRequest();
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
		this.loader.onreadystatechange  = this.onStatus;
		this.loader.onerror             = this.onError;
		this.loader.onprogress          = this.onProgress;
		this.loader.onload              = this.onComplete;

		//
		var url:String = this.input.url;

		if( this.input.parameter != null )
			url += "?" + Parameters.encode( this.input.parameter );

		//
		this.loader.open( this.input.method, url, true );

		for( header in this.input.header.keys() )
			this.loader.setRequestHeader( header, this.input.header.get( header ) );

		//
		this.setStatus( StatusEvent.STARTED );
		this.loader.send( );
	}

	/**
	 * stops and removes any dependencies
	 */
	override public function stop( ):Void
	{
		super.stop();
		this.clear();

		this.setStatus( StatusEvent.STOPPED, true );
	}

	//
	override public function clear( ):Void
	{
		if( this.loader != null )
		{
			this.loader.onreadystatechange = null;
			this.loader.onerror = null;
			this.loader.onprogress = null;
			this.loader.onload = null;

			this.loader.abort( );
			this.loader = null;
		}
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
		this.setResponse();
		this.setResult( );

		this.setStatus( StatusEvent.COMPLETE );
	}

	//
	private function setResult( ):Void
	{
		if( this.loader.response != null )
		{
			this.result = cast this.loader.response;
		}
		else
		{
			this.result = cast this.loader.responseText;
		}
	}

	//
	private function setResponse():Void
	{
		this.response = new ResponseHeader( this.status );
		Header.decode( this.loader.getAllResponseHeaders(), this.response );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	// Status + Progress

	/**
	 *
	 * @param	event
	 */
	private function onStatus( event:Dynamic ):Void
	{
		if( this.loader.readyState != 4 )
			return;

		try
		{
			this.status = this.loader.status;
		}
		catch( error:Dynamic )
		{
			this.status = null;
		}

		//
		if( this.status != null && this.status >= 200 && this.status < 400 )
			return;

		this.error( "Unknown XMLHttpRequest Status-Error", this.status );
	}

	/**
	 *
	 * @param	event
	 */
	private function onError( ?event:Dynamic ):Void
	{
		this.error( event );
	}

	/**
	 *
	 * @param	data
	 */
	private function onProgress( event:Dynamic ):Void
	{
		if( this.hasListener( ProgressEvent.PROGRESS ) )
		{
			var evt:ProgressEvent = new ProgressEvent( ProgressEvent.PROGRESS );
				evt.current = event.loaded;
				evt.total = event.total;

			this.dispatch( ProgressEvent.PROGRESS, evt );
		}
	}
}
