package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLX12")
@:final
/** Native bindings to GLX 1.2.  */
extern class GLX12 
{
/** Function address.  */
	public var GetCurrentDisplay:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glXGetCurrentDisplay GetCurrentDisplay}  */
	static public function nglXGetCurrentDisplay(__functionAddress:haxe.Int64):haxe.Int64;
/** Returns the {@link GLX12} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLX12;
/** Returns the display associated with the current context and drawable.  */
	static public function glXGetCurrentDisplay():haxe.Int64;

}
