package at.dotpoint.template;

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
		super( request, proxy, this.getParser( ), ratio );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private function getParser( ):TemplateParser
	{
		return new TemplateParser( null, null );
	}

	//
	override public function start( ):Void
	{
		var parser:TemplateParser = cast this.parser;	// for possible lazy init/update of context, etc.
			parser.setContext( this.getContext() );
			parser.setMacros( this.getMacros() );

		//
		var children:Array<TemplateRequest> = this.getChildren();

		if( children != null && children.length > 0 )
		{
			for( template in children )
				parser.addChild( template );
		}

		//
		super.start();
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getChildren():Array<TemplateRequest>
	{
		return null;
	}

	//
	public function getMacros( ):Dynamic
	{
		return null;
	}

	//
	public function getContext( ):TContext
	{
		return null;
	}


}
