package at.dotpoint.loader.process;

import at.dotpoint.exception.NullArgumentException;
import haxe.Unserializer;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 *
 */
class HaxeSerializeParser<TResult> extends ADataProcess<String, TResult>
{

	//
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
			var unserializer:Unserializer = new Unserializer( this.input );
			var resolver:TypeResolver = this.getResolver( unserializer.getResolver() );

			if( resolver == null )
				throw new NullArgumentException("unserializer-resolver");

			unserializer.setResolver( resolver );
			this.result = cast unserializer.unserialize();
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

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public dynamic function getResolver( current:TypeResolver ):TypeResolver
	{
		return current;
	}
}
