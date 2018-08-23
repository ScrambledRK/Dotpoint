package at.dotpoint.loader.process;

import haxe.Template;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;

//
class TemplateParser extends ADataProcess<String,String>
{

	//
	private var context:Dynamic;
	private var macros:Dynamic;

	/**
	 *
	 */
	public function new( context:Dynamic, ?macros:Dynamic, ?proxy:IEventDispatcher )
	{
		super( proxy );

		this.context = context;
		this.macros = macros;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	override public function start( ):Void
	{
		this.setStatus( StatusEvent.STARTED, true );

		try
		{
			this.result = new Template( this.input ).execute( this.context, this.macros );
		}
		catch( error:Dynamic )
		{
			this.error( Std.string( error ), true );
			return;
		}

		this.setStatus( StatusEvent.COMPLETE, true );
	}

	//
	override public function stop( ):Void
	{
		this.setStatus( StatusEvent.STOPPED, true );
	}
}
