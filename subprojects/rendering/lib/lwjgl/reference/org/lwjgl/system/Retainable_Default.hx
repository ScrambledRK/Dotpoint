package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.Retainable.Default")
extern class Retainable_Default implements org.lwjgl.system.Retainable
{
	public function new():Void;
	public function release():Void;
	public function retain():Void;
/** Destroys any resources held by this Retainable instance.  */
	private function destroy():Void;

}
