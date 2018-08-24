package at.dotpoint.remote;

import haxe.io.Input;
import haxe.io.Output;

/**
 * 
 */
interface IRemoteHandler<TRequest,TResponse>
{
	public var request:IRemoteProcess<TRequest>;
	public var response:IRemoteProcess<TResponse>;
}
