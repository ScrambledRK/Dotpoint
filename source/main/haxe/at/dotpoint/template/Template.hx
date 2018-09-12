package at.dotpoint.template;

import at.dotpoint.processor.loader.StringLoader;
import at.dotpoint.processor.IDataProcess;
import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.remote.http.Request;

/**
 *
 */
class Template<TContext> extends TemplateRequest
{

	//
	public function new( request:Request, ?proxy:IEventDispatcher, ratio:Float = 0.9, weight:Float = 1.0 )
	{
		super( request, proxy, ratio );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	override private function getLoader():IDataProcess<Request,String>
	{
		return new StringLoader();
	}

	//
	override private function getParser( ):IDataProcess<String,String>
	{
		var parser:TemplateParser = new TemplateParser();
			parser.setContext( this.getContext() );
			parser.setMacros( this.getMacros() );

		//
		var children:Array<TemplateRequest> = this.getChildren();

		if( children != null && children.length > 0 )
		{
			for( template in children )
				parser.addChild( template );
		}

		return parser;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public dynamic function getChildren():Array<TemplateRequest>
	{
		return null;
	}

	//
	public dynamic function getMacros( ):Dynamic
	{
		return null;
	}

	//
	public dynamic function getContext( ):TContext
	{
		return null;
	}

}
