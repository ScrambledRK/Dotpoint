package at.dotpoint.exception;

import haxe.CallStack;
import haxe.CallStack.StackItem;
import haxe.PosInfos;

/**
 *
 */
class RuntimeException implements IException
{

	@:isVar public var code(get,null):Int;
	@:isVar public var message(get,null):String;
	@:isVar public var position(get,null):PosInfos;

	@:isVar public var exceptionStack(get,null):Array<StackItem>;
	@:isVar public var callStack(get,null):Array<StackItem>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?code:Int, ?message:String, ?position:PosInfos )
	{
		this.code = code;
		this.message = message;
		this.position = position;

		this.exceptionStack = CallStack.exceptionStack();
		this.callStack = CallStack.callStack();
	}

	//
	public static function from( instance:Dynamic, ?code:Int, ?info:PosInfos ):IException
	{
		var exception:IException = null;

		if( instance != null )
		{
			if( Std.is( instance, IException ) )
			{
				exception = cast instance;
			}
			else
			{
				exception = new RuntimeException( code, Std.string( instance ), info );
			}
		}
		else
		{
			exception = new RuntimeException( info );
		}

		return exception;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private function get_code( ):Int
	{
		if( this.code == null )
			this.code = 500;

		return this.code;
	}

	//
	private function get_message( ):String
	{
		if( this.message == null )
			this.message = "unknown error";

		return this.message;
	}

	//
	private function get_exceptionStack( ):Array<StackItem>
	{
		return this.exceptionStack;
	}

	//
	private function get_callStack( ):Array<StackItem>
	{
		return this.callStack;
	}

	//
	private function get_position( ):PosInfos
	{
		return this.position;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function toString():String
	{
		return '$code: $message';
	}
}
