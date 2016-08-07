package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLEXTExtensionsString")
@:final
/** Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/wgl_extensions_string.txt">WGL_EXT_extensions_string</a> extension.  */
extern class WGLEXTExtensionsString 
{
/** Function address.  */
	public var GetExtensionsStringEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #wglGetExtensionsStringEXT GetExtensionsStringEXT}  */
/** JNI method for {@link #wglGetExtensionsStringEXT GetExtensionsStringEXT}  */
	static public function nwglGetExtensionsStringEXT(__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function ():haxe.Int64 {})
/**
 * Returns a list of supported extensions to WGL. Although the contents of the string is implementation specific, the string will be NULL terminated and
 * will contain a space-separated list of extension names. (The extension names themselves do not contain spaces.) If there are no extensions then the
 * empty string is returned.
 */
	static public function wglGetExtensionsStringEXT():String;
/** Returns the {@link WGLEXTExtensionsString} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLEXTExtensionsString;

}
