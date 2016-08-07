package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.WindowsDisplay")
extern class WindowsDisplay 
{
/** Handle to the default window proc.  */
	static public var DEF_WINDOW_PROC:haxe.Int64;
	@:overload(function ():Void {})
	@:overload(function (title:String):Void {})
	public function new(title:String,width:Int,height:Int):Void;
	public function setVisible(visible:Bool):Void;
	public function getX():Int;
	public function getHeight():Int;
	public function isCloseRequested():Bool;
	public function getY():Int;
	public function setSize(width:Int,height:Int):Void;
	public function setLocation(x:Int,y:Int):Void;
	public function getHdc():haxe.Int64;
	public function destroy():Void;
	public function getHwnd():haxe.Int64;
	public function getWidth():Int;

}
