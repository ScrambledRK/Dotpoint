package at.dotpoint.loader.process;

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
		this.setStatus( StatusEvent.STARTED );

		//
		this.loader.open( this.input.method, url, true );
		this.loader.send( );
	}

	/**
	 * stops and removes any dependencies
	 */
	override public function stop( ):Void
	{
		if( this.isProcessing )
		{
			this.loader.onreadystatechange = null;
			this.loader.onerror = null;
			this.loader.onprogress = null;
			this.loader.onload = null;

			this.loader.abort( );
			this.loader = null;
		}

		this.setStatus( StatusEvent.STOPPED );
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

		//
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

//		if( status != null && this.hasListener( HTTPStatusEvent.HTTP_STATUS ) )
//		{
//			var statusEvent:HTTPStatusEvent = new HTTPStatusEvent( HTTPStatusEvent.HTTP_STATUS );
//				statusEvent.status = status;
//
//			this.dispatch( statusEvent );
//		}

		// ----------------------- //

		if( status != null && status >= 200 && status < 400 )
		{
			// complete ...
		}
		else
		{
			var msg:String = "unknown error";

			if( status == null )
			{
				msg = "Failed to connect or resolve host";
			}
			else if( status == 12029 )
			{
				msg = "Failed to connect to host";
			}
			else if( status == 12007 )
			{
				msg = "Unknown host";
			}
			else if( status == 0 )
			{
				msg = "Unable to make request (may be blocked due to cross-domain permissions)";
			}
			else
			{
				msg = "Http Error #" + status;
			}

			//
			this.onError( new ErrorEvent( ErrorEvent.ERROR, msg ) );
		}
	}

	/**
	 *
	 * @param	event
	 */
	private function onError( ?event:Dynamic ):Void
	{
		if( this.hasListener( ErrorEvent.ERROR ) )
		{
			if( Std.is( event, ErrorEvent ) )
			{
				this.dispatch( ErrorEvent.ERROR, cast( event, ErrorEvent ) );
			}
			else
			{
				var error:ErrorEvent = new ErrorEvent( ErrorEvent.ERROR );
					error.message = Std.string( event );

				this.dispatch( ErrorEvent.ERROR, error );
			}
		}

		//
		this.stop();
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
