package at.dotpoint.remote.http.request;

import at.dotpoint.remote.http.header.LanguageType;
import at.dotpoint.remote.http.header.EncodingType;
import at.dotpoint.remote.http.header.MimeType;

/**
	GET / HTTP/1.1
	Host: www.newhere.org
	Connection: keep-alive
	Pragma: no-cache
	Cache-Control: no-cache
	Upgrade-Insecure-Requests: 1
	User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186
	Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*|*;q=0.8
	Accept-Encoding: gzip, deflate, br
	Accept-Language: en-US, en;q=0.9
	Cookie: XDEBUG_SESSION=PHPSTORM
 */
class RequestHeader extends Header
{

	public var accept(get, set):Array<MimeType>;
	public var acceptEncoding(get, set):Array<EncodingType>;
	public var acceptLanguage(get, set):Array<LanguageType>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		super();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	inline private function get_accept( ):Array<MimeType>
	{
		var value:String = this.get( "accept" );

		if( value != null )
		{
			var result:Array<MimeType> = new Array<MimeType>();
			var input:Array<String> = new Array<String>();

			for( j in 0...input.length )
				result[j] = input[j];

			return result;
		}

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
}
