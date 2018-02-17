package at.dotpoint.loader;

import at.dotpoint.processor.task.ATask;
import at.dotpoint.dispatcher.event.IEventDispatcher;


//
class ADataProcess<TInput,TResult> extends ATask implements IDataProcess<TInput,TResult>
{

    public var input:TInput;
    public var result:TResult;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?proxy:IEventDispatcher, ?weight:Float )
	{
		super( proxy, weight );
	}

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	override public function start():Void
	{
		if( this.input == null )
			throw "input must be set for data process";

		super.start();
	}
}
