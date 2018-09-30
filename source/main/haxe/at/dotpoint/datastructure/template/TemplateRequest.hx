package at.dotpoint.datastructure.template;


import at.dotpoint.processor.parser.NullParser;
import at.dotpoint.processor.loader.StringLoader;
import at.dotpoint.processor.IDataProcess;
import at.dotpoint.processor.DataRequest;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.remote.http.Request;

/**
 *
 */
class TemplateRequest extends DataRequest<Request, String, String>
{

	//
	public function new( request:Request, ?proxy:IEventDispatcher, ratio:Float = 0.9, weight:Float = 1 )
	{
		super( request, proxy, ratio, weight );
	}

	//
	override private function getLoader():IDataProcess<Request,String>
	{
		return new StringLoader();
	}

	//
	override private function getParser( ):IDataProcess<String,String>
	{
		return new NullParser<String>();
	}
}
