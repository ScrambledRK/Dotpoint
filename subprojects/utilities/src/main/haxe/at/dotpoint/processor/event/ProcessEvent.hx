package haxe.at.dotpoint.processor.event;

import haxe.at.dotpoint.dispatcher.event.Event;
import haxe.at.dotpoint.processor.ITask;

/**
 * ...
 * @author RK
 */
class ProcessEvent extends Event	// TODO: extend from StatusEvent
{

	@:isVar public static var PROCESS_STARTED(default,never):String 	= "ActionEvent.PROCESS_STARTED";
	@:isVar public static var PROCESS_COMPLETE(default,never):String 	= "ActionEvent.PROCESS_COMPLETE";

	@:isVar public static var TASK_STARTED(default,never):String 	    = "ActionEvent.TASK_STARTED";
	@:isVar public static var TASK_COMPLETE(default,never):String 	    = "ActionEvent.TASK_COMPLETE";

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