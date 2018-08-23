package at.dotpoint.loader;

import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
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

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function then( resolve:TResult -> Void, ?reject:Dynamic -> Void ):Void
	{
		var onComplete = function( event:StatusEvent )
		{
			resolve( this.result );
		};

		var onError = function( event:ErrorEvent )
		{
			if( reject != null )
				reject( event );
		};

		//
		if( this.isComplete )
		{
			resolve( this.result );
			return;
		}

		this.addStatusListener( onComplete, onError );
	}
}
