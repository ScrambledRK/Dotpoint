package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLXARBGetProcAddress")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/get_proc_address.txt">GLX_ARB_get_proc_address</a> extension.
 * 
 * <p>This extension adds a function to return the address of GLX and GL extension functions, given the function name. This is necessary with (for example)
 * heterogenous implementations where hardware drivers may implement extension functions not known to the link library; a similar situation on Windows
 * implementations resulted in the {@code wglGetProcAddress} function.</p>
 */
extern class GLXARBGetProcAddress 
{
/** Function address.  */
	public var GetProcAddressARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glXGetProcAddressARB GetProcAddressARB}  */
/** JNI method for {@link #glXGetProcAddressARB GetProcAddressARB}  */
	static public function nglXGetProcAddressARB(procName:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (procName:haxe.Int64):haxe.Int64 {})
/** Returns the {@link GLXARBGetProcAddress} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLXARBGetProcAddress;
/**
 * Returns the address of the extension function named by procName. The pointer returned should be cast to a function pointer type matching the extension
 * function's definition in that extension specification. A return value of {@code NULL} indicates that the specified function does not exist for the
 * implementation.
 * 
 * <p>A non-{@code NULL} return value for {@code glXGetProcAddressARB} does not guarantee that an extension function is actually supported at runtime. The client
 * must must also query {@link GL11#glGetString}({@link GL11#GL_EXTENSIONS}) or {@link GLX11#glXQueryExtensionsString QueryExtensionsString} to determine if an extension is
 * supported by a particular context.</p>
 * 
 * <p>GL function pointers returned by {@code glXGetProcAddressARB} are independent of the currently bound context and may be used by any context which
 * supports the extension.</p>
 * 
 * <p>{@code glXGetProcAddressARB} may be queried for all of the following functions:
 * <ul>
 * <li>All GL and GLX extension functions supported by the implementation (whether those extensions are supported by the current context or not).</li>
 * <li>All core (non-extension) functions in GL and GLX from version 1.0 up to and including the versions of those specifications supported by the
 * implementation, as determined by {@link GL11#glGetString}({@link GL11#GL_VERSION}) and {@link GLX#glXQueryVersion QueryVersion} queries.</li>
 * </ul></p>
 *
 * @param procName the function name to query
 */
	static public function glXGetProcAddressARB(procName:java.nio.ByteBuffer):haxe.Int64;

}
