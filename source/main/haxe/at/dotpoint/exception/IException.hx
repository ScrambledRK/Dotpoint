package at.dotpoint.exception;

import haxe.CallStack.StackItem;
import haxe.PosInfos;

/**
 *
 */

interface IException
{
	public var code(get,null):Int;
	public var message(get,null):String;
	public var position(get,null):PosInfos;

	public var exceptionStack(get,null):Array<StackItem>;
	public var callStack(get,null):Array<StackItem>;
}
