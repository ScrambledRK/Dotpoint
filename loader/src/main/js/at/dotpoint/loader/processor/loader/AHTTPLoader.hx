package js.at.dotpoint.loader.processor.loader;

import haxe.at.dotpoint.core.dispatcher.event.generic.ErrorEvent;
import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.loader.event.HTTPStatusEvent;
import haxe.at.dotpoint.loader.event.ProgressEvent;
import haxe.at.dotpoint.loader.processor.ADataProcessor;
import haxe.at.dotpoint.loader.processor.loader.IDataLoader;
import haxe.at.dotpoint.loader.URLRequest;
import js.html.XMLHttpRequest;

/**
 * ...
 * @author RK
 */
@:require(js)
//
class AHTTPLoader<TOutput:Dynamic> extends ADataProcessor implements IDataLoader<TOutput>
{

	/**
	 *
	 */
	private var loader:XMLHttpRequest;

	/**
	 *
	 */
	public var result(default, null):TOutput;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
		this.loader = new XMLHttpRequest();
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
		this.loader.onreadystatechange 	= this.onStatus;
		this.loader.onerror 			= this.onError;
		this.loader.onprogress 			= this.onProgress;
		this.loader.onload 				= this.onComplete;

		var url:String = request.url;

		if( request.data != null )
			url += "?" + request.data;

		this.loader.open( request.method, url, true );
		this.loader.send();

		this.setStatus( StatusEvent.STARTED );
	}

	// ----------------------------------------------------- //
	// ----------------------------------------------------- //

	/**
	 *
	 */
	override private function close():Void
	{
		if( this.loader == null ) return;

		this.loader.onreadystatechange 	= null;
		this.loader.onerror 			= null;
		this.loader.onprogress 			= null;
		this.loader.onload 				= null;

		if( this.isProcessing )
			this.loader.abort();

		this.loader = null;
	}

	/**
	 *
	 * @param	event
	 */
	override private function onComplete( ?event:Dynamic ):Void
	{
		if (this.loader.response != null)
		{
			this.result = cast this.loader.response;
		}
		else
		{
			this.result = cast this.loader.responseText;
		}

		super.onComplete();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	event
	 */
	private function onStatus( event:Dynamic ):Void
	{
		if( this.loader.readyState != 4 ) return;

		var status:Null<Int> = null;

		try
		{
			status = this.loader.status;
		}
		catch( error:Dynamic )
		{
			status = null;
		}

		// ----------------------- //

		if (status != null && this.hasListener( HTTPStatusEvent.HTTP_STATUS ) )
		{
			var statusEvent:HTTPStatusEvent = new HTTPStatusEvent( HTTPStatusEvent.HTTP_STATUS );
				statusEvent.status = status;

			this.dispatch( statusEvent );
		}

		// ----------------------- //

		if (status != null && status >= 200 && status < 400)
		{
			this.onComplete( null );
		}
		else
		{
			var msg:String = "unknown error";

			if (status == null)
			{
				msg = "Failed to connect or resolve host";
			}
			else if (status == 12029)
			{
				msg = "Failed to connect to host";
			}
			else if (status == 12007)
			{
				msg = "Unknown host";
			}
			else if (status == 0)
			{
				msg = "Unable to make request (may be blocked due to cross-domain permissions)";
			}
			else
			{
				msg = "Http Error #" + status;
			}

			this.onError( new ErrorEvent( ErrorEvent.ERROR, msg ) );
		}
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
				evt.bytesLoaded = event.loaded;
				evt.bytesTotal = event.total;

			this.dispatch( evt );
		}
	}
}