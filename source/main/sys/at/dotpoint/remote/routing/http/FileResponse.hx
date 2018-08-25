package at.dotpoint.remote.routing.http;

import at.dotpoint.remote.http.request.Method;
import at.dotpoint.remote.http.header.Status;
import String;
import at.dotpoint.remote.http.header.MimeType;
import sys.io.File;
import sys.FileSystem;
import haxe.io.Bytes;
import haxe.io.Path;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.Response;

/**
 *
 */
class FileResponse extends ConditionList implements IRouteResponse
{

	//
	private var root:String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?root:String )
	{
		super();

		//
		this.root = root != null ? root : ".";

		this.add( new DynamicCondition(this.isFile) );
		this.add( new RestCondition(null, Method.GET) );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private function isFile(request:Request):Bool
	{
		var file:String = this.getFilePath(request);
		return FileSystem.exists( file ) && !FileSystem.isDirectory( file );
	}

	//
	public function process(request:Request, callback:Response<Bytes>->Void ):Void
	{
		var file:String = this.getFilePath(request);

		var response:Response<Bytes> = new Response<Bytes>();
			response.body = File.getBytes(file);
			response.header.contentType = getContentType(file);

		callback(response);
	}

	//
	private function getFilePath( request:Request ):String
	{
		return Path.normalize( this.root + request.url);
	}

	//
	private function getContentType( file:String ):MimeType
	{
		var extension:String = Path.extension(file).toLowerCase();

		switch( extension)
		{
			case "json": 	return MimeType.json;
			case "xml": 	return MimeType.xml;
			case "xhtml": 	return MimeType.xhtml;
			case "html": 	return MimeType.html;
			case "css": 	return MimeType.css;
			case "js": 		return MimeType.javascript;
			case "webp": 	return MimeType.webp;
			case "png": 	return MimeType.png;

			default:
				throw new RoutingException( Status.UNSUPPORTED_MEDIA_TYPE, 'unknown extension for: $file' );
		}
	}

}
