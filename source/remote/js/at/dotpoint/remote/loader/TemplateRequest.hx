package at.dotpoint.remote.loader;

import at.dotpoint.loader.process.TemplateParser;
import at.dotpoint.loader.process.StringLoader;
import at.dotpoint.loader.process.NullParser;
import at.dotpoint.loader.IDataProcess;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.Event;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.remote.http.Request;
import at.dotpoint.loader.DataRequest;
import js.Promise;

/**
 *
 */
class TemplateRequest extends Promise<String> implements IEventDispatcher
{

	//
	private var request:DataRequest<Request, String, String>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 *
	 */
	public function new( request:Request, ?parser:IDataProcess<String, String>, ratio:Float = 0.9 )
	{
		this.request = new DataRequest( request, this, ratio );
		this.request.parser = parser != null ? parser : new NullParser();
		this.request.loader = new StringLoader();

		//
		super( this.promise );
	}

	//
	public static function from( url:String, ?context:Dynamic, ?macros:Dynamic ):TemplateRequest
	{
		if( context != null || macros != null )
			return new TemplateRequest( new Request( url ), new TemplateParser( null, context, macros ) );

		return new TemplateRequest( new Request( url ), null );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private function promise( resolve:String->Void, reject:Dynamic->Void ):Void
	{
		if( this.request == null )
			reject( "request null" );

		//
		var onComplete = function( event:StatusEvent )
		{
			resolve( this.request.result );
		};

		var onError = function( event:ErrorEvent )
		{
			reject( event );
		};

		//
		this.request.addStatusListener( onComplete, onError );
	}

	// ************************************************************************ //
	// EventDispatcher
	// ************************************************************************ //

	//
	public function dispatch<T:(Event)>( type:String, data:T ):Void
	{
		this.request.dispatch( type, data );
	}

	//
	public function addListener<T:(Event)>( type:String, callback:T->Void ):Void
	{
		this.request.addListener( type, callback );
	}

	//
	public function removeListener<T:(Event)>( type:String, callback:T->Void ):Void
	{
		this.request.removeListener( type, callback );
	}

	//
	public function hasListener<T:(Event)>( type:String, ?callback:T->Void ):Bool
	{
		return this.request.hasListener( type, callback );
	}

	//
	public function clearListener( ?type:String ):Void
	{
		this.request.clearListener( type );
	}
}
