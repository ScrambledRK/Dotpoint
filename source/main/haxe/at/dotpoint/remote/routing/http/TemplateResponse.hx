package at.dotpoint.remote.routing.http;

import at.dotpoint.remote.http.header.ContentType;
import at.dotpoint.datastructure.template.TemplateRequest;
import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.remote.http.header.MimeType;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import haxe.io.Bytes;
import at.dotpoint.remote.http.Response;
import at.dotpoint.remote.http.Request;
import at.dotpoint.datastructure.template.Template;

/**
 *
 */
class TemplateResponse<TContext> extends ConditionList implements IRouteResponse
{

	//
	private var template:Template<TContext>;
	private var contentType:ContentType;

	//
	public var getChildren(get,set):Void->Array<TemplateRequest>;
	public var getContext(get,set):Void->TContext;
	public var getMacros(get,set):Void->Dynamic;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( template:Template<TContext>, ?contentType:ContentType, ?options:Array<IRouteCondition> )
	{
		super( options );

		//
		this.template = template;
		this.contentType = contentType != null ? contentType : MimeType.html;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	//
	private function get_getChildren( ):Void->Array<TemplateRequest>
	{
		return this.template.getChildren;
	}

	private function set_getChildren( value:Void->Array<TemplateRequest> ):Void->Array<TemplateRequest>
	{
		return this.template.getChildren = value;
	}

	//
	private function get_getContext( ):Void->TContext
	{
		return this.template.getContext;
	}

	private function set_getContext( value:Void->TContext ):Void->TContext
	{
		return this.template.getContext = value;
	}

	//
	private function get_getMacros( ):Void->Dynamic
	{
		return this.template.getMacros;
	}

	private function set_getMacros( value:Void->Dynamic ):Void->Dynamic
	{
		return this.template.getMacros = value;
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
