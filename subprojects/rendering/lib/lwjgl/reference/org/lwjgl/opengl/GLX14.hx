package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GLX14")
@:final
/** Native bindings to GLX 1.4.  */
extern class GLX14 
{
/** Added in GLX 1.4.  */
	inline static public var GLX_SAMPLE_BUFFERS:Int = 100000;
/** Added in GLX 1.4.  */
	inline static public var GLX_SAMPLES:Int = 100001;
/** Function address.  */
	public var GetProcAddress:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glXGetProcAddress GetProcAddress}  */
/** JNI method for {@link #glXGetProcAddress GetProcAddress}  */
	static public function nglXGetProcAddress(procName:haxe.Int64,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (procName:haxe.Int64):haxe.Int64 {})
/**
 * Returns the address of the extension function named by {@code procName}. The pointer returned should be cast to a function pointer type matching the
 * extension function's definition in that extension specification. A return value of {@code NULL} indicates that the specified function does not exist for the
 * implementation.
 * 
 * <p>A non-{@code NULL} return value for {@code glXGetProcAddress} does not guarantee that an extension function is actually supported at runtime. The client must
 * also query {@link GL11#glGetString}({@link GL11#GL_EXTENSIONS}) or {@link GLX11#glXQueryExtensionsString QueryExtensionsString} to determine if an extension is supported
 * by a particular context.</p>
 * 
 * <p>GL function pointers returned by {@code glXGetProcAddress} are independent of the currently bound context and may be used by any context which
 * supports the extension.</p>
 * 
 * <p>{@code glXGetProcAddress} may be queried for all of the following functions:
 * <ul>
 * <li>All GL and GLX extension functions supported by the implementation (whether those extensions are supported by the current context or not).</li>
 * <li>All core (non-extension) functions in GL and GLX from version 1.0 up to and including the versions of those specifications supported by the
 * implementation, as determined by {@link GL11#glGetString}({@link GL11#GL_VERSION}) and {@link GLX#glXQueryVersion QueryVersion} queries.</li>
 * </ul></p>
 *
 * @param procName the function name to query
 */
	static public function glXGetProcAddress(procName:java.nio.ByteBuffer):haxe.Int64;
/** Returns the {@link GLX14} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GLX14;

}
