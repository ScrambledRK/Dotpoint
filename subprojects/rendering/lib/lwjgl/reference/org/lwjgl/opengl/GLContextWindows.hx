package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLContextWindows")
extern class GLContextWindows extends org.lwjgl.opengl.GLContext 
{
	public function new(capabilities:org.lwjgl.opengl.ContextCapabilities,hglrc:haxe.Int64):Void;
	//override private function makeCurrentImpl(target:haxe.Int64):Void;
	@:overload(function (target:haxe.Int64):Void {})
/**
 * Creates a {@link GLContextWindows} from the current OpenGL context of the current thread.
 *
 * @return the new {@link GLContextWindows}
 *
 * @throws IllegalStateException if no OpenGL context is current in the current thread.
 */
	static public function createFromCurrent():org.lwjgl.opengl.GLContextWindows;
	override public function isCurrent():Bool;
/**
 * Creates an OpenGL context on the specified device context and returns a {@code WindowContext} instance that describes it.
 *
 * @param hdc the device context
 *
 * @return the new WindowsContext
 */
	static public function create(hdc:haxe.Int64):org.lwjgl.opengl.GLContextWindows;
	public function getPointer():haxe.Int64;
	override private function destroyImpl():Void;

}
