package at.dotpoint.remote;

/**
 *
 */
interface IRemoteListener
{
	public function isRunning():Bool;

	public function process():Void;
	public function shutdown():Void;
}
