package at.dotpoint.http.service;

import sys.io.File;
import haxe.Json;
import haxe.Serializer;
using at.dotpoint.http.service.WebService.WebServiceExtension;

/**
 *
 */
class RestService
{

	//
	private var settings:ResponseSettings;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?settings:ResponseSettings )
	{
		this.settings = settings != null ? settings : new ResponseSettings();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function getContentType( ):MimeType
	{
		var accept:String = WebService.getClientHeader( Header.Accept );

		if( accept.indexOf( MimeType.Haxe ) != -1 )
			return MimeType.Haxe;

		if( accept.indexOf( MimeType.Json ) != -1 )
			return MimeType.Json;

		if( accept.indexOf( MimeType.Javascript ) != -1 )
			return MimeType.Javascript;

		if( accept.indexOf( MimeType.Css ) != -1 )
			return MimeType.Css;

		if( accept.indexOf( MimeType.Html ) != -1 )
			return MimeType.Html;

		return null;
	}

	//
	public function setContentType( type:MimeType ):Void
	{
		if( type == null )
			type = MimeType.Html;

		WebService.setHeader( Header.ContentType, type );
	}

	// ************************************************************************ //
	// RESPOND
	// ************************************************************************ //

	//
	public function respondData( data:Dynamic, ?type:MimeType ):Void
	{
		this.respond( data, type );
	}

	//
	public function respondFile( path:String, ?type:MimeType ):Void
	{
		this.respond( File.getContent( path ), type );
	}

	/**
	 *
	 */
	private function respond( data:Dynamic, ?type:MimeType ):Void
	{
		var send = function()
		{
			if( type == null )
				type = this.getContentType( );

			this.setContentType( type );

			//
			switch( type )
			{
				case MimeType.Haxe: WebService.respond( Serializer.run( data ) );
				case MimeType.Json: WebService.respond( Json.stringify( data ) );

				default:
					WebService.respond( data );
			}
		}

		//
		if( this.settings.delay > 0 )
		{
			haxe.Timer.delay( send, this.settings.delay );
		}
		else
		{
			send();
		}
	}

}
