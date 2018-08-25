package at.dotpoint.dispatcher.event.generic;

import haxe.CallStack;
import haxe.CallStack.StackItem;
import at.dotpoint.remote.http.header.Status;
import at.dotpoint.dispatcher.event.Event;

class ErrorEvent extends Event
{

	@:isvar public static var ERROR(default,never):String = "ErrorEvent.error";

	// ------------------------------ //

	public var code:Status;
	public var message:String;

	//
	private var exceptionStack:Array<StackItem>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?type:String, ?code:Int, ?message:String )
	{
		if( type == null )
			type = ErrorEvent.ERROR;

		super( type );

		this.message = message != null ? message : "Unknown Error";
		this.code = code != null ? code : Status.INTERNAL_SERVER_ERROR;

		this.exceptionStack = CallStack.exceptionStack();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function getCallStack( ):String
	{
		return CallStack.toString( this.exceptionStack );
	}

	//
	override public function toString():String
	{
		return '$code: $message';
	}
}