package at.dotpoint.remote.http.response;

import at.dotpoint.remote.http.header.ContentType;
import at.dotpoint.remote.http.header.Status;
import at.dotpoint.remote.http.header.MimeType;
import at.dotpoint.remote.http.header.EncodingType;

/**
	Cache-Control:no-cache
	Connection:keep-alive
	Content-Encoding:gzip
	Content-Type:text/html; charset=UTF-8
	Date:Sun, 25 Feb 2018 08:46:48 GMT
	Server:nginx/1.10.2
	Set-Cookie:XSRF-TOKEN=eyJpdiI6Ik5GTkJWNDl4cWox
	Transfer-Encoding:chunked
	Vary:Accept-Encoding
	X-Powered-By:PHP/5.6.21
 */
class ResponseHeader extends Header
{

	public var status:Null<Status>;
	public var contentType(get, set):ContentType;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?code:Status )
	{
		super();

		//
		this.status = code;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	inline private function get_contentType( ):ContentType
	{
		return this.getValue( "content-type", ContentType.fromString );
	}

	inline private function set_contentType( value:ContentType ):ContentType
	{
		return this.setValue( "content-type", value );
	}
}
