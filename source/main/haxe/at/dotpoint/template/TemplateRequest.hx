package at.dotpoint.template;

import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.loader.DataRequest;
import at.dotpoint.loader.process.NullParser;
import at.dotpoint.loader.process.StringLoader;
import at.dotpoint.remote.http.Request;

/**
 *
 */
class TemplateRequest extends DataRequest<Request, String, String>
{

	/**
	 *
	 */
	public function new( request:Request, ?proxy:IEventDispatcher, ?parser:TemplateParser,
						 ratio:Float = 0.9, weight:Float = 1 )
	{
		super( request, proxy, ratio, weight );

		//
		this.parser = parser != null ? parser : new NullParser();
		this.loader = new StringLoader();
	}

	//
	public static function from( url:String, ?context:Dynamic, ?macros:Dynamic ):TemplateRequest
	{
		if( context != null || macros != null )
			return new TemplateRequest( new Request( url ), new TemplateParser( context, macros ) );

		return new TemplateRequest( new Request( url ), null );
	}

}
