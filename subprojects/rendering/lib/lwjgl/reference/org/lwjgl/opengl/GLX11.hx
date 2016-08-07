package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLX11")
@:final
/** Native bindings to GLX 1.1.  */
extern class GLX11 
{
/** Names for attributes to {@link #glXGetClientString GetClientString}.  */
	inline static public var GLX_VENDOR:Int = 1;
/** Names for attributes to {@link #glXGetClientString GetClientString}.  */
	inline static public var GLX_VERSION:Int = 2;
/** Names for attributes to {@link #glXGetClientString GetClientString}.  */
	inline static public var GLX_EXTENSIONS:Int = 3;
/** Function address.  */
	public var QueryExtensionsString:haxe.Int64;
/** Function address.  */
	public var GetClientString:haxe.Int64;
/** Function address.  */
	public var QueryServerString:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Returns a string describing which GLX extensions are supported on the connection.
 *
 * @param display the connection to the X server
 * @param screen  the screen number
 */
	static public function glXQueryExtensionsString(display:haxe.Int64,screen:Int):String;
/** Unsafe version of {@link #glXQueryServerString QueryServerString}  */
/** JNI method for {@link #glXQueryServerString QueryServerString}  */
	static public function nglXQueryServerString(display:haxe.Int64,screen:Int,name:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,screen:Int,name:Int):haxe.Int64 {})
/**
 * Returns a pointer to a string describing some aspect of the server's GLX extension.
 *
 * @param display the connection to the X server
 * @param screen  the screen number
 * @param name    the string to query
 */
	static public function glXQueryServerString(display:haxe.Int64,screen:Int,name:Int):String;
/** Unsafe version of {@link #glXQueryExtensionsString QueryExtensionsString}  */
/** JNI method for {@link #glXQueryExtensionsString QueryExtensionsString}  */
	static public function nglXQueryExtensionsString(display:haxe.Int64,screen:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,screen:Int):haxe.Int64 {})
/** Unsafe version of {@link #glXGetClientString GetClientString}  */
/** JNI method for {@link #glXGetClientString GetClientString}  */
	static public function nglXGetClientString(display:haxe.Int64,name:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,name:Int):haxe.Int64 {})
/** Returns the {@link GLX11} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLX11;
/**
 * Returns a pointer to a string describing some aspect of the client library.
 *
 * @param display the connection to the X server
 * @param name    the string to query
 */
	static public function glXGetClientString(display:haxe.Int64,name:Int):String;

}
