package at.dotpoint.remote.http;
import haxe.ds.StringMap;
using StringTools;

/**
	Host: localhost:8080
	Connection: keep-alive
	Pragma: no-cache
	Cache-Control: no-cache
	Upgrade-Insecure-Requests: 1
	User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)
	Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng;q = 0.8
	Accept-Encoding: gzip, deflate, br
	Accept-Language: en-US, en;q = 0.8
	Cookie: XDEBUG_SESSION=PHPSTORM
 */
class Header extends StringMap<String>
{

	public var host(get,set):{host:String,port:Int};

	public var accept(get, set):Array<MimeType>;
	public var acceptEncoding(get, set):Array<EncodingType>;
	public var acceptLanguage(get, set):Array<LanguageType>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	//
	inline private function get_host():{host:String, port:Int}
	{
		var value:String = this.get( "host" );

		if( value != null )
		{
			var split:Array<String> = value.split( ":" );

			var result:Dynamic = {host:null, port:-1};
				result.host = split[0];
				result.port = split.length >= 1 ? Std.parseInt( split[1] ) : -1;

			return result;
		}

		return null;
	}

	inline private function set_host( value:{host:String, port:Int} ):{host:String, port:Int}
	{
		if( value != null )
		{
			this.set( "host", value.host + ":" + value.port );
		}
		else
		{
			this.remove( "host" );
		}

		return value;
	}

	//
	inline private function get_accept():Array<MimeType>
	{
		var value:String = this.get( "accept" );

		if( value != null )
			return value.split( "," );

		return null;
	}

	inline private function set_accept( value:Array<MimeType> ):Array<MimeType>
	{
		if( value != null )
		{
			this.set( "accept", value.join( "," ) );
		}
		else
		{
			this.remove( "accept" );
		}

		return value;
	}

	//
	inline private function get_acceptEncoding( ):Array<EncodingType>
	{
		var value:String = this.get( "accept-encoding" );

		if( value != null )
			return value.split( "," );

		return null;
	}

	inline private function set_acceptEncoding( value:Array<EncodingType> ):Array<EncodingType>
	{
		if( value != null )
		{
			this.set( "accept-encoding", value.join( "," ) );
		}
		else
		{
			this.remove( "accept-encoding" );
		}

		return value;
	}

	//
	inline private function get_acceptLanguage( ):Array<LanguageType>
	{
		var value:String = this.get( "accept-language" );

		if( value != null )
			return value.split( "," );

		return null;
	}

	inline private function set_acceptLanguage( value:Array<LanguageType> ):Array<LanguageType>
	{
		if( value != null )
		{
			this.set( "accept-language", value.join( "," ) );
		}
		else
		{
			this.remove( "accept-language" );
		}

		return value;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public static function decode( input:Array<String> ):Header
	{
		var result:Header = new Header();

		for( line in input )
		{
			var idxColon:Int = line.indexOf( ":" );

			var param:String = line.substring( 0, idxColon ).trim().toLowerCase();
			var value:String = line.substring( idxColon + 1 ).trim( );

			//
			result.set( param, value );
		}

		return result;
	}

	//
	public static function encode( input:Header ):Array<String>
	{
		var result:Array<String> = new Array<String>();

		for( key in input.keys() )
		{
			result.push( key + ":" + input.get( key ) );
		}

		return result;
	}

	//
	public static function parseQualityFactor( input:String ):Float
	{
		var idx:Int = input.indexOf( ";q=" );

		if( idx != -1 )
			return Std.parseFloat( input.substring( idx + 1 ) );

		return 1;
	}
}
