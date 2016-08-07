package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXARBCreateContext")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/glx_create_context.txt">GLX_ARB_create_context</a> extension.
 * 
 * <p>With the advent of new versions of OpenGL which deprecate features and/or break backward compatibility with older versions, there is a need and desire
 * to indicate at context creation which interface will be used. These extensions add a new context creation routine with attributes specifying the GL
 * version and context properties requested for the context, and additionally add an attribute specifying the GL profile requested for a context of OpenGL
 * 3.2 or later. It also allows making an OpenGL 3.0 or later context current without providing a default framebuffer.</p>
 * 
 * <p>Requires {@link GLX14 GLX 1.4}.</p>
 */
extern class GLXARBCreateContext 
{
/** Accepted as an attribute name in {@code attrib_list}.  */
	inline static public var GLX_CONTEXT_MAJOR_VERSION_ARB:Int = 8337;
/** Accepted as an attribute name in {@code attrib_list}.  */
	inline static public var GLX_CONTEXT_MINOR_VERSION_ARB:Int = 8338;
/** Accepted as an attribute name in {@code attrib_list}.  */
	inline static public var GLX_CONTEXT_FLAGS_ARB:Int = 8340;
/** Accepted as bits in the attribute value for {@link #GLX_CONTEXT_FLAGS_ARB CONTEXT_FLAGS_ARB} in {@code attrib_list}.  */
	inline static public var GLX_CONTEXT_DEBUG_BIT_ARB:Int = 1;
/** Accepted as bits in the attribute value for {@link #GLX_CONTEXT_FLAGS_ARB CONTEXT_FLAGS_ARB} in {@code attrib_list}.  */
	inline static public var GLX_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB:Int = 2;
/** Function address.  */
	public var CreateContextAttribsARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glXCreateContextAttribsARB CreateContextAttribsARB}  */
/** JNI method for {@link #glXCreateContextAttribsARB CreateContextAttribsARB}  */
	static public function nglXCreateContextAttribsARB(display:haxe.Int64,config:haxe.Int64,share_context:haxe.Int64,direct:Int,attrib_list:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,share_context:haxe.Int64,direct:Int,attrib_list:haxe.Int64):haxe.Int64 {})
/**
 * Creates an OpenGL rendering context.
 * 
 * <p>If {@code glXCreateContextAttribsARB} succeeds, it initializes the context to the initial state defined by the OpenGL specification, and returns a
 * handle to it. This handle can be used to render to any GLX surface (window, pixmap, or pbuffer) compatible with {@code config}, subject to constraints
 * imposed by the OpenGL API version of the context.</p>
 * 
 * <p>If {@code share_context} is not {@code NULL}, then all shareable data (excluding OpenGL texture objects named 0) will be shared by {@code share_context}, all
 * other contexts {@code share_context} already shares with, and the newly created context. An arbitrary number of {@code GLXContexts} can share data in
 * this fashion. The server context state for all sharing contexts must exist in a single address space.</p>
 *
 * @param display       the connection to the X server
 * @param config        the {@code GLXFBConfig}
 * @param share_context if not {@code NULL}, then all shareable data (excluding OpenGL texture objects named 0) will be shared by {@code share_context}, all other contexts
 *                      {@code share_context} already shares with, and the newly created context. An arbitrary number of GLXContexts can share data in this fashion. The
 *                      server context state for all sharing contexts must exist in a single address space.
 * @param direct        direct rendering is requested if {@code direct} is {@link Xlib#True}, and indirect rendering if {@code direct} is {@link Xlib#False}. If
 *                      {@code direct} is {@link Xlib#True}, the implementation may nonetheless create an indirect rendering context if any of the following conditions hold:
 *                      <ul>
 *                      <li>The implementation does not support direct rendering.</li>
 *                      <li>{@code display} is not a local X server.</li>
 *                      <li>Implementation-dependent limits on the number of direct rendering contexts that can be supported simultaneously are exceeded.</li>
 *                      </ul>
 *                      Use {@link GLX#glXIsDirect IsDirect} to determine whether or not a request for a direct rendering context succeeded.
 * @param attrib_list   an optional list of attributes for the context, terminated with {@link X#None}
 */
/** Alternative version of: {@link #glXCreateContextAttribsARB CreateContextAttribsARB}  */
	static public function glXCreateContextAttribsARB(display:haxe.Int64,config:haxe.Int64,share_context:haxe.Int64,direct:Int,attrib_list:java.nio.IntBuffer):haxe.Int64;
	@:overload(function (display:haxe.Int64,config:haxe.Int64,share_context:haxe.Int64,direct:Int,attrib_list:java.nio.ByteBuffer):haxe.Int64 {})
/** Returns the {@link GLXARBCreateContext} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXARBCreateContext;

}
