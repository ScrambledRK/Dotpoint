package at.dotpoint.remote;

import haxe.io.Input;
import haxe.io.Output;

/**
 * 
 */
interface IRemoteHandler<TRequest,TResponse>
{
	public var request(default,null):IRemoteProcess<TRequest>;
	public var response(default,null):IRemoteProcess<TResponse>;
}
