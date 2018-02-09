package at.dotpoint.loader.process;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;

//
class CallbackParser<TInput,TResult> extends ADataProcess<TInput,TResult>
{

	//
	public var callback:TInput->TResult;

	//
	public function new( ?proxy:IEventDispatcher, ?callback:TInput->TResult )
	{
		super( proxy );

		//
		this.callback = callback;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	override public function start( ):Void
	{
		this.setStatus( StatusEvent.STARTED, true );

		this.result = this.callback( this.input );

		this.setStatus( StatusEvent.COMPLETE, true );
	}

	//
	override public function stop( ):Void
	{
		this.setStatus( StatusEvent.STOPPED, true );
	}
}
