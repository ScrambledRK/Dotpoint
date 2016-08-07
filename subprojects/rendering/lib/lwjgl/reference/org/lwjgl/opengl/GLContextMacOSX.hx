package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLContextMacOSX")
extern class GLContextMacOSX extends org.lwjgl.opengl.GLContext 
{
	public function new(capabilities:org.lwjgl.opengl.ContextCapabilities,handle:haxe.Int64):Void;
	//override private function makeCurrentImpl(target:haxe.Int64):Void;
	@:overload(function (target:haxe.Int64):Void {})
	static public function createFromCurrent():org.lwjgl.opengl.GLContextMacOSX;
	override public function isCurrent():Bool;
	public function getPointer():haxe.Int64;
	override private function destroyImpl():Void;

}
