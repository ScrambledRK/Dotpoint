package at.dotpoint.controls.keyboard;

/**
 * @author RK
 */

interface IKeyboardInput
{
	//
	public function isKeyDown( keyCode:Int ):Bool;

	//
	public function getKeyStatus( keyCode:Int ):KeyStatus;

	//
	public function setKeyStatus( keyCode:Int, status:KeyStatus ):Void;

	//
	public function initialize():Void;
	public function clear():Void;
}