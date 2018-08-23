package at.dotpoint.remote.socket;

import at.dotpoint.datastructure.Thenable;

/**
 *
 */
interface ISocketProcess<TInput>
{
	public function process( stream:TInput ):Void;
	public function then( resolve:Void->Void, ?reject:Dynamic->Void ):Void;
}
