package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBInternalformatQuery")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/internalformat_query.txt">ARB_internalformat_query</a> extension.
 * 
 * <p>OpenGL 4.1 has a number of queries to indicate the maximum number of samples available for different formats. These give a coarse-grained query
 * mechanism e.g. an implementation can expose different sample counts for integer and floating-point formats, but not for different floating-point
 * formats. There is also no convenient way for the user to determine the granularity of sample counts available, only the maximum.</p>
 * 
 * <p>This extension adds a query mechanism that allows the user to determine which sample counts are available for a specific internal format.</p>
 * 
 * <p>Requires {@link GL30 OpenGL 3.0} or {@link ARBFramebufferObject ARB_framebuffer_object}. Promoted to core in {@link GL42 OpenGL 4.2}.</p>
 */
extern class ARBInternalformatQuery 
{
/** Accepted by the {@code pname} parameter of GetInternalformativ.  */
	inline static public var GL_NUM_SAMPLE_COUNTS:Int = 37760;
/** Function address.  */
	public var GetInternalformativ:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glGetInternalformativ GetInternalformativ}  */
	static public function nglGetInternalformativ(target:Int,internalformat:Int,pname:Int,bufSize:Int,params:haxe.Int64):Void;
/** Single return value version of: {@link #glGetInternalformativ GetInternalformativ}  */
	static public function glGetInternalformati(target:Int,internalformat:Int,pname:Int):Int;
/** Returns the {@link ARBInternalformatQuery} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBInternalformatQuery;
/** Alternative version of: {@link #glGetInternalformativ GetInternalformativ}  */
/**
 * Retrieves information about implementation-dependent support for internal formats.
 *
 * @param target         the usage of the internal format. One of:<br>{@link GL11#GL_TEXTURE_1D TEXTURE_1D}, {@link GL11#GL_TEXTURE_2D TEXTURE_2D}, {@link GL30#GL_TEXTURE_1D_ARRAY TEXTURE_1D_ARRAY}, {@link GL31#GL_TEXTURE_RECTANGLE TEXTURE_RECTANGLE}, {@link GL13#GL_TEXTURE_CUBE_MAP TEXTURE_CUBE_MAP}, {@link GL12#GL_TEXTURE_3D TEXTURE_3D}, {@link GL30#GL_TEXTURE_2D_ARRAY TEXTURE_2D_ARRAY}, {@link GL40#GL_TEXTURE_CUBE_MAP_ARRAY TEXTURE_CUBE_MAP_ARRAY}, {@link GL30#GL_RENDERBUFFER RENDERBUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE TEXTURE_2D_MULTISAMPLE}, {@link GL32#GL_TEXTURE_2D_MULTISAMPLE_ARRAY TEXTURE_2D_MULTISAMPLE_ARRAY}
 * @param internalformat the internal format about which to retrieve information
 * @param pname          the type of information to query
 * @param bufSize        the maximum number of values that may be written to params by the function
 * @param params         a variable into which to write the retrieved information
 */
	static public function glGetInternalformativ(target:Int,internalformat:Int,pname:Int,bufSize:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,pname:Int,params:java.nio.IntBuffer):Void {})

}
