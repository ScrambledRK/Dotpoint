package at.dotpoint.loader.request;

import at.dotpoint.loader.process.TemplateParser;
import at.dotpoint.loader.process.StringLoader;
import at.dotpoint.loader.process.NullParser;
import at.dotpoint.loader.IDataProcess;
import at.dotpoint.remote.http.Request;
import at.dotpoint.loader.DataRequest;

/**
 *
 */
@:require(js)
//
class TemplateRequest extends DataRequest<Request, String, String>
{

	/**
	 *
	 */
	public function new( request:Request, ?parser:IDataProcess<String, String>, ratio:Float = 0.9 )
	{
		super( request, ratio );

		//
		this.parser = parser != null ? parser : new NullParser();
		this.loader = new StringLoader();
	}

	//
	public static function from( url:String, ?context:Dynamic, ?macros:Dynamic ):TemplateRequest
	{
		if( context != null || macros != null )
			return new TemplateRequest( new Request( url ), new TemplateParser( null, context, macros ) );

		return new TemplateRequest( new Request( url ), null );
	}

}
