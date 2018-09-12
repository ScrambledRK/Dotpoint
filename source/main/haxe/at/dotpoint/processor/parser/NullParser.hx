package at.dotpoint.processor.parser;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;

//
class NullParser<T> extends ADataProcess<T,T>
{

	/**
	 *
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

		this.result = this.input;

		this.setStatus( StatusEvent.COMPLETE, true );
	}

	//
	override public function stop( ):Void
	{
		this.setStatus( StatusEvent.STOPPED, true );
	}
}
