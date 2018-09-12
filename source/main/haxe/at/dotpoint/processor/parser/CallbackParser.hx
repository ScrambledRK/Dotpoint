package at.dotpoint.processor.parser;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.dispatcher.event.IEventDispatcher;

//
class CallbackParser<TInput, TResult> extends ADataProcess<TInput, TResult>
{

	//
	public var callback:TInput -> TResult;

	/**
	 * is sync - so make it quick ...
	 */
	public function new( ?proxy:IEventDispatcher, ?callback:TInput -> TResult )
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

		try
		{
			this.result = this.callback( this.input );
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
