package haxe.at.dotpoint.core.processor.event;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.processor.ITask;

/**
 * ...
 * @author RK
 */
class ProcessEvent extends Event	// TODO: extend from StatusEvent
{

	public static var PROCESS_STARTED:String 	= "ActionEvent.PROCESS_STARTED";
	public static var PROCESS_COMPLETE:String 	= "ActionEvent.PROCESS_COMPLETE";

	public static var TASK_STARTED:String 	= "ActionEvent.TASK_STARTED";
	public static var TASK_COMPLETE:String 	= "ActionEvent.TASK_COMPLETE";

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

		var event:ProcessEvent 	= cast super.clone( instance );
			event.task = this.task;

		return event;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

}