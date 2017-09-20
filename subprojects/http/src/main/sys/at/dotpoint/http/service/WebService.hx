package at.dotpoint.http.service;

#if php
typedef WebService = php.Web;
#else
typedef WebService = neko.Web;
#end

//
class WebServiceExtension
{
	//
	public static function dumpRequest( clazz:Class<WebService> ):String
	{
		var result:String = "";
			result = WebService.getClientHeaders( ).join( "\n" );
			result = "uri: " + WebService.getURI() + "\n";
			result = "params: " + WebService.getParamsString( ) + "\n";
			result = "client: " + WebService.getClientIP( ) + "\n";
			result = "method: " + WebService.getMethod( );

		return result;
	}

	//
	public static function respond( clazz:Class<WebService>, data:Dynamic ):Void
	{
		#if neko
		neko.Lib.println( data );
		#else
		trace( data );
		#end
	}
}