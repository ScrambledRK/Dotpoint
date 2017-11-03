package at.dotpoint.remote.http.response;

import haxe.io.Output;

/**
 *
 */
interface IResponse
{
	//
	public var state(default, null):ResponseState;

	//
	public function open( output:Output ):Void;
	public function write( ):Void;
	public function close( ):Void;
}
