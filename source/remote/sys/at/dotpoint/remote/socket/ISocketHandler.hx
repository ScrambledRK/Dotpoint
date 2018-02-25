package at.dotpoint.remote.socket;

import haxe.io.Input;
import haxe.io.Output;

/**
 * 
 */
interface ISocketHandler
{
	public var request:ISocketProcess<Input>;
	public var response:ISocketProcess<Output>;
}
