package at.dotpoint.dispatcher.event.generic;

import haxe.PosInfos;
import haxe.ds.Either;
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
	private var callStack:Array<StackItem>;
	private var position:PosInfos;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?type:String, ?code:Int, ?message:String, ?info:PosInfos )
	{
		if( type == null )
			type = ErrorEvent.ERROR;

		//
		super( type );

		this.message = message != null ? message : "Unknown Error";
		this.code = code != null ? code : Status.INTERNAL_SERVER_ERROR;

		this.exceptionStack = CallStack.exceptionStack();
		this.callStack = CallStack.callStack();
		this.position = info;
	}

	//
	public static function from( message:Dynamic, ?code:Int, ?info:PosInfos ):ErrorEvent
	{
		var event:ErrorEvent = null;

		if( message != null )
		{
			if( Std.is( message, ErrorEvent ) )
			{
				event = cast message;
			}
			else
			{
				event = new ErrorEvent( ErrorEvent.ERROR, code, Std.string( message ), info );
			}
		}
		else
		{
			event = new ErrorEvent( info );
		}

		return event;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function getCallStack( ):String
	{
		var exception = CallStack.toString( this.exceptionStack );
		var callstack = CallStack.toString( this.callStack );

		return '$exception\n$callstack';
	}

	//
	public function getPosition( ):String
	{
		return this.position.className + "::" + this.position.methodName + " line " + position.lineNumber;
	}

	//
	override public function toString():String
	{
		return '$code: $message';
	}
}