package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBExtensionsString")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_extensions_string.txt">WGL_ARB_extensions_string</a> extension.
 * 
 * <p>This extension provides a way for applications to determine which WGL extensions are supported by a device. This is the foundation upon which other WGL
 * extensions are built.</p>
 */
extern class WGLARBExtensionsString 
{
/** Function address.  */
	public var GetExtensionsStringARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #wglGetExtensionsStringARB GetExtensionsStringARB}  */
/** JNI method for {@link #wglGetExtensionsStringARB GetExtensionsStringARB}  */
	static public function nwglGetExtensionsStringARB(hdc:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (hdc:haxe.Int64):haxe.Int64 {})
/**
 * Returns a list of supported extensions to WGL. Although the contents of the string is implementation specific, the string will be NULL terminated and
 * will contain a space-separated list of extension names. (The extension names themselves do not contain spaces.) If there are no extensions then the
 * empty string is returned.
 *
 * @param hdc the device context to query extensions for
 */
	static public function wglGetExtensionsStringARB(hdc:haxe.Int64):String;
/** Returns the {@link WGLARBExtensionsString} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLARBExtensionsString;

}
