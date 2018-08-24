package at.dotpoint.remote;

/**
 *
 */
interface IRemoteListener
{
	public function process():Void;
	public function isRunning():Bool;
}
