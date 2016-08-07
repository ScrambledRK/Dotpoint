package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.WGLARBCreateContext")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/wgl_create_context.txt">WGL_ARB_create_context</a> extension.
 * 
 * <p>With the advent of new versions of OpenGL which deprecate features and/or break backward compatibility with older versions, there is a need and desire
 * to indicate at context creation which interface will be used. This extension add a new context creation routine with attributes specifying the GL
 * version and context properties requested for the context.</p>
 * 
 * <p>Requires {@link WGLARBExtensionsString WGL_ARB_extensions_string}.</p>
 */
extern class WGLARBCreateContext 
{
/** Accepted as an attribute name in {@code attribList}.  */
	inline static public var WGL_CONTEXT_MAJOR_VERSION_ARB:Int = 8337;
/** Accepted as an attribute name in {@code attribList}.  */
	inline static public var WGL_CONTEXT_MINOR_VERSION_ARB:Int = 8338;
/** Accepted as an attribute name in {@code attribList}.  */
	inline static public var WGL_CONTEXT_LAYER_PLANE_ARB:Int = 8339;
/** Accepted as an attribute name in {@code attribList}.  */
	inline static public var WGL_CONTEXT_FLAGS_ARB:Int = 8340;
/** Accepted as bits in the attribute value for {@link #WGL_CONTEXT_FLAGS_ARB CONTEXT_FLAGS_ARB} in {@code attribList}.  */
	inline static public var WGL_CONTEXT_DEBUG_BIT_ARB:Int = 1;
/** Accepted as bits in the attribute value for {@link #WGL_CONTEXT_FLAGS_ARB CONTEXT_FLAGS_ARB} in {@code attribList}.  */
	inline static public var WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB:Int = 2;
/** New errors returned by {@link org.lwjgl.system.windows.WinBase#GetLastError}.  */
	inline static public var ERROR_INVALID_VERSION_ARB:Int = 8341;
/** Function address.  */
	public var CreateContextAttribsARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #wglCreateContextAttribsARB CreateContextAttribsARB}  */
/** JNI method for {@link #wglCreateContextAttribsARB CreateContextAttribsARB}  */
	static public function nwglCreateContextAttribsARB(hdc:haxe.Int64,shareContext:haxe.Int64,attribList:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (hdc:haxe.Int64,shareContext:haxe.Int64,attribList:haxe.Int64):haxe.Int64 {})
/** Returns the {@link WGLARBCreateContext} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.WGLARBCreateContext;
/**
 * Creates an OpenGL context.
 * 
 * <p>If {@code shareContext} is not {@code NULL}, then all shareable data (excluding OpenGL texture objects named 0) will be shared by {@code shareContext}, all
 * other contexts {@code shareContext} already shares with, and the newly created context. An arbitrary number of contexts can share data in this fashion.</p>
 *
 * @param hdc          
 * @param shareContext 
 * @param attribList   a list of attributes for the context. The list consists of a sequence of &lt;name, value&gt; pairs terminated by the value 0. If an attribute is not
 *                     specified in {@code attribList}, then the default value is used instead. If an attribute is specified more than once, then the last value specified
 *                     is used.
 */
/** Alternative version of: {@link #wglCreateContextAttribsARB CreateContextAttribsARB}  */
	static public function wglCreateContextAttribsARB(hdc:haxe.Int64,shareContext:haxe.Int64,attribList:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (hdc:haxe.Int64,shareContext:haxe.Int64,attribList:java.nio.ByteBuffer):haxe.Int64 {})

}
