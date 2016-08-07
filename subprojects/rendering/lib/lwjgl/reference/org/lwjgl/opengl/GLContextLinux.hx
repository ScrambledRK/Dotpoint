package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLContextLinux")
extern class GLContextLinux extends org.lwjgl.opengl.GLContext 
{
	public function new(capabilities:org.lwjgl.opengl.ContextCapabilities,display:haxe.Int64,ctx:haxe.Int64):Void;
	//override private function makeCurrentImpl(target:haxe.Int64):Void;
	@:overload(function (target:haxe.Int64):Void {})
	static public function createFromCurrent(display:haxe.Int64):org.lwjgl.opengl.GLContextLinux;
	@:overload(function ():org.lwjgl.opengl.GLContextLinux {})
	override public function isCurrent():Bool;
	public function getPointer():haxe.Int64;
	override private function destroyImpl():Void;

}
