package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBInstancedArrays")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/instanced_arrays.txt">ARB_instanced_arrays</a> extension.
 * 
 * <p>A common use case in GL for some applications is to be able to draw the same object, or groups of similar objects that share vertex data, primitive
 * count and type, multiple times. This extension provides a means of accelerating such use cases while restricting the number of API calls, and keeping
 * the amount of duplicate data to a minimum.</p>
 * 
 * <p>In particular, this extension specifies an alternative to the read-only shader variable introduced by ARB_draw_instanced. It uses the same draw calls
 * introduced by that extension, but redefines them so that a vertex shader can instead use vertex array attributes as a source of instance data.</p>
 * 
 * <p>This extension introduces an array "divisor" for generic vertex array attributes, which when non-zero specifies that the attribute is "instanced". An
 * instanced attribute does not advance per-vertex as usual, but rather after every <divisor> conceptual draw calls.</p>
 * 
 * <p>(Attributes which aren't instanced are repeated in their entirety for every conceptual draw call.)</p>
 * 
 * <p>By specifying transform data in an instanced attribute or series of instanced attributes, vertex shaders can, in concert with the instancing draw calls,
 * draw multiple instances of an object with one draw call.</p>
 * 
 * <p>Promoted to core in {@link GL33 OpenGL 3.3}.</p>
 */
extern class ARBInstancedArrays 
{
/** Accepted by the {@code pname} parameters of GetVertexAttribdv, GetVertexAttribfv, and GetVertexAttribiv.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB:Int = 35070;
/** Function address.  */
	public var VertexAttribDivisorARB:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexAttribDivisorEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glVertexArrayVertexAttribDivisorEXT VertexArrayVertexAttribDivisorEXT}  */
	static public function nglVertexArrayVertexAttribDivisorEXT(vaobj:Int,index:Int,divisor:Int,__functionAddress:haxe.Int64):Void;
/**
 * <a href="http://www.opengl.org/registry/specs/EXT/direct_state_access.txt">EXT_direct_state_access</a> version of {@link #glVertexAttribDivisorARB VertexAttribDivisorARB}.
 * 
 * <p>This function was added to the extension specification in July 2013. Implemenations are allowed to expose ARB_instanced_arrays without providing this
 * function. The correct way to test its availability is:
 * <pre><code style="font-family: monospace">
 * ContextCapabilities caps = GL.getCapabilities();
 * if ( caps.GL_ARB_instanced_arrays && ARBInstancedArrays.getInstance().VertexArrayVertexAttribDivisorEXT != NULL )
 * 	glVertexArrayVertexAttribDivisorEXT(...); // the DSA function can now be used</code></pre></p>
 *
 * @param vaobj   the vertex array object
 * @param index   the attribute index
 * @param divisor the divisor value
 */
	static public function glVertexArrayVertexAttribDivisorEXT(vaobj:Int,index:Int,divisor:Int):Void;
/** Returns the {@link ARBInstancedArrays} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBInstancedArrays;
/** JNI method for {@link #glVertexAttribDivisorARB VertexAttribDivisorARB}  */
	static public function nglVertexAttribDivisorARB(index:Int,divisor:Int,__functionAddress:haxe.Int64):Void;
/**
 * Modifies the rate at which generic vertex attributes advance when rendering multiple instances of primitives in a single draw call. If {@code divisor}
 * is zero, the attribute at slot {@code index} advances once per vertex. If {@code divisor} is non-zero, the attribute advances once per {@code divisor}
 * instances of the set(s) of vertices being rendered. An attribute is referred to as {@code instanced} if its {@code divisor} value is non-zero.
 *
 * @param index   the attribute index
 * @param divisor the divisor value
 */
	static public function glVertexAttribDivisorARB(index:Int,divisor:Int):Void;

}
