package at.dotpoint.remote.routing.http;

import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.remote.http.header.MimeType;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import haxe.io.Bytes;
import at.dotpoint.remote.http.Response;
import at.dotpoint.remote.http.Request;
import at.dotpoint.template.Template;

/**
 *
 */
class TemplateResponse extends ConditionList implements IRouteResponse
{

	//
	private var template:Template<Dynamic>;
	private var contentType:MimeType;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( template:Template<Dynamic>, ?contentType:MimeType, ?options:Array<IRouteCondition> )
	{
		super( options );

		//
		this.template = template;
		this.contentType = contentType != null ? contentType : MimeType.html;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process( request:Request, callback:Response<Bytes>->Void ):Void
	{
		trace(">> template response");

		var onComplete = function( event:StatusEvent ):Void
		{
			var response:Response<Bytes> = new Response<Bytes>();
				response.body = Bytes.ofString( this.template.result );
				response.header.contentType = this.contentType;

			callback( response );
			trace("<<");
		};

		this.template.addStatusListener( onComplete, onError );
		this.template.start();
	}

	//
	private function onError( event:ErrorEvent ):Void
	{
		throw event;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function toString():String
	{
		var url:String = "unknown";

		if( this.template != null && this.template.input != null)
			url = this.template.input.url;

		return '[TemplateResponse:$url]';
	}
}
