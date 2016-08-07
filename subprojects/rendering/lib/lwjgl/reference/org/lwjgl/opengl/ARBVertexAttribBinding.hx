package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBVertexAttribBinding")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/vertex_attrib_binding.txt">ARB_vertex_attrib_binding</a> extension.
 * 
 * <p>OpenGL currently supports (at least) 16 vertex attributes and 16 vertex buffer bindings, with a fixed mapping between vertex attributes and vertex
 * buffer bindings. This extension allows the application to change the mapping between attributes and bindings, which can make it more efficient to update
 * vertex buffer bindings for interleaved vertex formats where many attributes share the same buffer.</p>
 * 
 * <p>This extension also separates the vertex binding update from the vertex attribute format update, which saves applications the effort of redundantly
 * specifying the same format state over and over.</p>
 * 
 * <p>Conceptually, this extension splits the state for generic vertex attribute arrays into:
 * <ul>
 * <li>An array of vertex buffer binding points, each of which specifies:
 * <ul>
 * <li>a bound buffer object</li>
 * <li>a starting offset for the vertex attribute data in that buffer object</li>
 * <li>a stride used by all attributes using that binding point, and</li>
 * <li>a frequency divisor used by all attributes using that binding point.</li>
 * </ul></li>
 * <li>An array of generic vertex attribute format information records, each of which specifies:
 * <ul>
 * <li>a reference to one of the new buffer binding points above</li>
 * <li>a component count and format, and a normalization flag for the attribute data, and</li>
 * <li>the offset of the attribute data relative to the base offset of each vertex found at the associated binding point.</li>
 * </ul></li>
 * </ul>
 * Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBVertexAttribBinding 
{
/** Accepted by the {@code pname} parameter of GetVertexAttrib*v.  */
	inline static public var GL_VERTEX_ATTRIB_BINDING:Int = 33492;
/** Accepted by the {@code pname} parameter of GetVertexAttrib*v.  */
	inline static public var GL_VERTEX_ATTRIB_RELATIVE_OFFSET:Int = 33493;
/** Accepted by the {@code target} parameter of GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_VERTEX_BINDING_DIVISOR:Int = 33494;
/** Accepted by the {@code target} parameter of GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_VERTEX_BINDING_OFFSET:Int = 33495;
/** Accepted by the {@code target} parameter of GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_VERTEX_BINDING_STRIDE:Int = 33496;
/** Accepted by the {@code target} parameter of GetBooleani_v, GetIntegeri_v, GetFloati_v, GetDoublei_v, and GetInteger64i_v.  */
	inline static public var GL_VERTEX_BINDING_BUFFER:Int = 36687;
/** Accepted by the {@code pname} parameter of GetIntegerv, ....  */
	inline static public var GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET:Int = 33497;
/** Accepted by the {@code pname} parameter of GetIntegerv, ....  */
	inline static public var GL_MAX_VERTEX_ATTRIB_BINDINGS:Int = 33498;
/** Function address.  */
	public var BindVertexBuffer:haxe.Int64;
/** Function address.  */
	public var VertexAttribFormat:haxe.Int64;
/** Function address.  */
	public var VertexAttribIFormat:haxe.Int64;
/** Function address.  */
	public var VertexAttribLFormat:haxe.Int64;
/** Function address.  */
	public var VertexAttribBinding:haxe.Int64;
/** Function address.  */
	public var VertexBindingDivisor:haxe.Int64;
/** Function address.  */
	public var VertexArrayBindVertexBufferEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexAttribFormatEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexAttribIFormatEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexAttribLFormatEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexAttribBindingEXT:haxe.Int64;
/** Function address.  */
	public var VertexArrayVertexBindingDivisorEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * DSA version of {@link #glVertexAttribBinding VertexAttribBinding}.
 *
 * @param vaobj        the vertex array object
 * @param attribindex  the index of the attribute to associate with a vertex buffer binding
 * @param bindingindex the index of the vertex buffer binding with which to associate the generic vertex attribute
 */
	static public function glVertexArrayVertexAttribBindingEXT(vaobj:Int,attribindex:Int,bindingindex:Int):Void;
/** JNI method for {@link #glVertexArrayVertexBindingDivisorEXT VertexArrayVertexBindingDivisorEXT}  */
	static public function nglVertexArrayVertexBindingDivisorEXT(vaobj:Int,bindingindex:Int,divisor:Int,__functionAddress:haxe.Int64):Void;
/**
 * DSA version of {@link #glVertexAttribIFormat VertexAttribIFormat}.
 *
 * @param vaobj          the vertex array object
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexArrayVertexAttribIFormatEXT(vaobj:Int,attribindex:Int,size:Int,type:Int,relativeoffset:Int):Void;
/**
 * Specifies the organization of pure integer data in vertex arrays.
 *
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexAttribIFormat(attribindex:Int,size:Int,type:Int,relativeoffset:Int):Void;
/**
 * DSA version of {@link #glVertexAttribFormat VertexAttribFormat}.
 *
 * @param vaobj          the vertex array object
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param normalized     if true then integer data is normalized to the range [-1, 1] or [0, 1] if it is signed or unsigned, respectively. If false then integer data is
 *                       directly converted to floating point.
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexArrayVertexAttribFormatEXT(vaobj:Int,attribindex:Int,size:Int,type:Int,normalized:Bool,relativeoffset:Int):Void;
/**
 * DSA version of {@link #glVertexAttribLFormat VertexAttribLFormat}.
 *
 * @param vaobj          the vertex array object
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexArrayVertexAttribLFormatEXT(vaobj:Int,attribindex:Int,size:Int,type:Int,relativeoffset:Int):Void;
/**
 * Specifies the organization of 64-bit double data in vertex arrays.
 *
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexAttribLFormat(attribindex:Int,size:Int,type:Int,relativeoffset:Int):Void;
/** JNI method for {@link #glVertexArrayBindVertexBufferEXT VertexArrayBindVertexBufferEXT}  */
	static public function nglVertexArrayBindVertexBufferEXT(vaobj:Int,bindingindex:Int,buffer:Int,offset:haxe.Int64,stride:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexArrayVertexAttribLFormatEXT VertexArrayVertexAttribLFormatEXT}  */
	static public function nglVertexArrayVertexAttribLFormatEXT(vaobj:Int,attribindex:Int,size:Int,type:Int,relativeoffset:Int,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glVertexArrayVertexAttribBindingEXT VertexArrayVertexAttribBindingEXT}  */
	static public function nglVertexArrayVertexAttribBindingEXT(vaobj:Int,attribindex:Int,bindingindex:Int,__functionAddress:haxe.Int64):Void;
/**
 * DSA version of {@link #glBindVertexBuffer BindVertexBuffer}.
 *
 * @param vaobj        the vertex array object
 * @param bindingindex the index of the vertex buffer binding point to which to bind the buffer
 * @param buffer       the name of an existing buffer to bind to the vertex buffer binding point
 * @param offset       the offset of the first element of the buffer
 * @param stride       the distance between elements within the buffer
 */
	static public function glVertexArrayBindVertexBufferEXT(vaobj:Int,bindingindex:Int,buffer:Int,offset:haxe.Int64,stride:Int):Void;
/**
 * DSA version of {@link #glVertexBindingDivisor VertexBindingDivisor}.
 *
 * @param vaobj        the vertex array object
 * @param bindingindex the index of the generic vertex attribute
 * @param divisor      the number of instances that will pass between updates of the generic attribute at slot {@code index}
 */
	static public function glVertexArrayVertexBindingDivisorEXT(vaobj:Int,bindingindex:Int,divisor:Int):Void;
/**
 * Binds a buffer to a vertex buffer bind point.
 *
 * @param bindingindex the index of the vertex buffer binding point to which to bind the buffer
 * @param buffer       the name of an existing buffer to bind to the vertex buffer binding point
 * @param offset       the offset of the first element of the buffer
 * @param stride       the distance between elements within the buffer
 */
	static public function glBindVertexBuffer(bindingindex:Int,buffer:Int,offset:haxe.Int64,stride:Int):Void;
/** JNI method for {@link #glVertexArrayVertexAttribIFormatEXT VertexArrayVertexAttribIFormatEXT}  */
	static public function nglVertexArrayVertexAttribIFormatEXT(vaobj:Int,attribindex:Int,size:Int,type:Int,relativeoffset:Int,__functionAddress:haxe.Int64):Void;
/**
 * Associate a vertex attribute and a vertex buffer binding.
 *
 * @param attribindex  the index of the attribute to associate with a vertex buffer binding
 * @param bindingindex the index of the vertex buffer binding with which to associate the generic vertex attribute
 */
	static public function glVertexAttribBinding(attribindex:Int,bindingindex:Int):Void;
/** JNI method for {@link #glVertexArrayVertexAttribFormatEXT VertexArrayVertexAttribFormatEXT}  */
	static public function nglVertexArrayVertexAttribFormatEXT(vaobj:Int,attribindex:Int,size:Int,type:Int,normalized:Bool,relativeoffset:Int,__functionAddress:haxe.Int64):Void;
/** Returns the {@link ARBVertexAttribBinding} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBVertexAttribBinding;
/**
 * Specifies the organization of data in vertex arrays.
 *
 * @param attribindex    the generic vertex attribute array being described
 * @param size           the number of values per vertex that are stored in the array. One of:<br>1, 2, 3, 4, {@link GL12#GL_BGRA BGRA}
 * @param type           the type of the data stored in the array
 * @param normalized     if true then integer data is normalized to the range [-1, 1] or [0, 1] if it is signed or unsigned, respectively. If false then integer data is
 *                       directly converted to floating point.
 * @param relativeoffset the offset, measured in basic machine units of the first element relative to the start of the vertex buffer binding this attribute fetches from
 */
	static public function glVertexAttribFormat(attribindex:Int,size:Int,type:Int,normalized:Bool,relativeoffset:Int):Void;
/**
 * Modifies the rate at which generic vertex attributes advance during instanced rendering.
 *
 * @param bindingindex the index of the generic vertex attribute
 * @param divisor      the number of instances that will pass between updates of the generic attribute at slot {@code index}
 */
	static public function glVertexBindingDivisor(bindingindex:Int,divisor:Int):Void;

}
