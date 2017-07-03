package at.dotpoint.processor.event;

import at.dotpoint.dispatcher.event.Event;
import at.dotpoint.processor.ITask;

/**
 * ...
 * @author RK
 */
class ProcessEvent extends Event // TODO: extend from StatusEvent
{

	public static var PROCESS_STARTED(default,never):String = "ActionEvent.PROCESS_STARTED";
	public static var PROCESS_COMPLETE(default,never):String = "ActionEvent.PROCESS_COMPLETE";

	public static var TASK_STARTED(default,never):String = "ActionEvent.TASK_STARTED";
	public static var TASK_COMPLETE(default,never):String = "ActionEvent.TASK_COMPLETE";

	public var task:ITask;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String )
	{
		super( type );
	}

	public override function clone( ?instance:Event ):Event
	{
		if( instance != null && !Std.is( instance, ProcessEvent ) )
			throw "must provide ProcessEvent instance for clone";

		instance = instance != null ? instance : new ProcessEvent( this.type );

		var event:ProcessEvent = cast super.clone( instance );
		event.task = this.task;

		return event;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

}