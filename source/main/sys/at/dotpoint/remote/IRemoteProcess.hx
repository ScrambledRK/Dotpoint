package at.dotpoint.remote;

import at.dotpoint.datastructure.Thenable;

/**
 *
 */
interface IRemoteProcess<TInput>
{
	public function process( stream:TInput ):Void;
	public function then( resolve:Void->Void, ?reject:Dynamic->Void ):Void;
}
