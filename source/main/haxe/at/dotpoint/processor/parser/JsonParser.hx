package at.dotpoint.processor.parser;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;

//
class JsonParser extends ADataProcess<String, Dynamic>
{

	/**
	 * is sync - so make it quick ...
	 */
	public function new( ?proxy:IEventDispatcher )
	{
		super( proxy );
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
			this.result = haxe.Json.parse( this.input );
		}
		catch( error:Dynamic )
		{
			this.error( error );
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
