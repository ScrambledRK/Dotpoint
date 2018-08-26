package at.dotpoint.dispatcher.event.generic;

import at.dotpoint.exception.RuntimeException;
import at.dotpoint.exception.IException;
import haxe.PosInfos;
import haxe.CallStack;
import haxe.CallStack.StackItem;
import at.dotpoint.dispatcher.event.Event;

class ErrorEvent extends Event implements IException
{
	
	//
	@:isvar public static var ERROR(default,never):String = "ErrorEvent.error";

	//
	private var exception:IException;

	public var code(get,null):Int;
	public var message(get,null):String;
	public var position(get,null):PosInfos;

	public var exceptionStack(get,null):Array<StackItem>;
	public var callStack(get,null):Array<StackItem>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?type:String, ?exception:IException )
	{
		if( type == null )
			type = ErrorEvent.ERROR;

		//
		super( type );

		this.exception = exception;
	}

	//
	public static function from( instance:Dynamic, ?code:Int, ?info:PosInfos ):ErrorEvent
	{
		if( instance != null && Std.is( instance, ErrorEvent ) )
			return cast instance;

		return new ErrorEvent( RuntimeException.from( instance, code, info ) );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private function get_code( ):Int
	{
		return this.exception.code;
	}

	//
	private function get_message( ):String
	{
		return this.exception.message;
	}

	//
	private function get_exceptionStack( ):Array<StackItem>
	{
		return this.exception.exceptionStack;
	}

	//
	private function get_callStack( ):Array<StackItem>
	{
		return this.exception.callStack;
	}

	//
	private function get_position( ):PosInfos
	{
		return this.exception.position;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	override public function toString():String
	{
		return '$code: $message';
	}
}