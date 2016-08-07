package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBUniformBufferObject")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/uniform_buffer_object.txt">ARB_uniform_buffer_object</a> extension.
 * 
 * <p>This extension introduces the concept of a group of GLSL uniforms known as a "uniform block", and the API mechanisms to store "uniform blocks" in GL
 * buffer objects.</p>
 * 
 * <p>The extension also defines both a standard cross-platform layout in memory for uniform block data, as well as mechanisms to allow the GL to optimize the
 * data layout in an implementation-defined manner.</p>
 * 
 * <p>Prior to this extension, the existing interface for modification of uniform values allowed modification of large numbers of values using glUniform*
 * calls, but only for a single uniform name (or a uniform array) at a time. However, updating uniforms in this manner may not map well to heterogenous
 * uniform data structures defined for a GL application and in these cases, the application is forced to either:
 * <ol type=A>
 * <li>restructure their uniform data definitions into arrays or</li>
 * <li>make an excessive number of calls through the GL interface to one of the Uniform* variants.</li>
 * </ol></p>
 * 
 * <p>These solutions have their disadvantages. Solution A imposes considerable development overhead on the application developer. Solution B may impose
 * considerable run-time overhead on the application if the number of uniforms modified in a given frame of rendering is sufficiently large.</p>
 * 
 * <p>This extension provides a better alternative to either (A) or (B) by allowing buffer object backing for the storage associated with all uniforms of a
 * given GLSL program.</p>
 * 
 * <p>Storing uniform blocks in buffer objects enables several key use cases:
 * <ul>
 * <li>sharing of uniform data storage between program objects and between program stages</li>
 * <li>rapid swapping of sets of previously defined uniforms by storing sets of uniform data on the GL server</li>
 * <li>rapid updates of uniform data from both the client and the server</li>
 * </ul>
 * The data storage for a uniform block can be declared to use one of three layouts in memory: packed, shared, or std140.
 * <ul>
 * <li>"packed" uniform blocks have an implementation-dependent data layout for efficiency, and unused uniforms may be eliminated by the compiler to save
 * space.</li>
 * <li>"shared" uniform blocks, the default layout, have an implementation-dependent data layout for efficiency, but the layout will be uniquely determined
 * by the structure of the block, allowing data storage to be shared across programs.</li>
 * <li>"std140" uniform blocks have a standard cross-platform cross-vendor layout (see below). Unused uniforms will not be eliminated.</li>
 * </ul>
 * Any uniforms not declared in a named uniform block are said to be part of the "default uniform block".</p>
 * 
 * <p>While uniforms in the default uniform block are updated with glUniform* entry points and can have static initializers, uniforms in named uniform blocks
 * are not. Instead, uniform block data is updated using the routines that update buffer objects and can not use static initializers.</p>
 * 
 * <p>Rules and Concepts Guiding this Specification:</p>
 * 
 * <p>For reference, a uniform has a "uniform index" (subsequently referred to as "u_index) and also a "uniform location" to efficiently identify it in the
 * uniform data store of the implementation. We subsequently refer to this uniform data store of the implementation as the "uniform database".</p>
 * 
 * <p>A "uniform block" only has a "uniform block index" used for queries and connecting the "uniform block" to a buffer object. A "uniform block" has no
 * "location" because "uniform blocks" are not updated directly. The buffer object APIs are used instead.</p>
 * 
 * <p>Properties of Uniforms and uniform blocks:
 * <ol type=a>
 * <li>A uniform is "active" if it exists in the database and has a valid u_index.</li>
 * <li>A "uniform block" is "active" if it exists in the database and has a valid ub_index.</li>
 * <li>Uniforms and "uniform blocks" can be inactive because they don't exist in the source, or because they have been removed by dead code elimination.</li>
 * <li>An inactive uniform has u_index == {@link #GL_INVALID_INDEX INVALID_INDEX}.</li>
 * <li>An inactive uniform block has ub_index == {@link #GL_INVALID_INDEX INVALID_INDEX}.</li>
 * <li>A u_index or ub_index of {@link #GL_INVALID_INDEX INVALID_INDEX} generates the {@link GL11#GL_INVALID_VALUE INVALID_VALUE} error if given as a function argument.</li>
 * <li>The default uniform block, which is not assigned any ub_index, uses a private, internal data storage, and does not have any buffer object associated
 * with it.</li>
 * <li>An active uniform that is a member of the default uniform block has location >= 0 and it has offset == stride == -1.</li>
 * <li>An active uniform that is a member of a named uniform block has location == -1.</li>
 * <li>A uniform location of -1 is silently ignored if given as a function argument.</li>
 * <li>Uniform block declarations may not be nested</li>
 * </ol>
 * Requires {@link GL20 OpenGL 2.0} or {@link ARBShaderObjects ARB_shader_objects} and {@link GL15 OpenGL 1.5} or {@link ARBVertexBufferObject ARB_vertex_buffer_object}. Promoted to core in {@link GL31 OpenGL 3.1}.</p>
 */
extern class ARBUniformBufferObject 
{
/** Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData, and GetBufferPointerv.  */
	inline static public var GL_UNIFORM_BUFFER:Int = 35345;
/** Accepted by the {@code pname} parameter of GetIntegeri_v, GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_UNIFORM_BUFFER_BINDING:Int = 35368;
/** Accepted by the {@code pname} parameter of GetIntegeri_v.  */
	inline static public var GL_UNIFORM_BUFFER_START:Int = 35369;
/** Accepted by the {@code pname} parameter of GetIntegeri_v.  */
	inline static public var GL_UNIFORM_BUFFER_SIZE:Int = 35370;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_VERTEX_UNIFORM_BLOCKS:Int = 35371;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_GEOMETRY_UNIFORM_BLOCKS:Int = 35372;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_FRAGMENT_UNIFORM_BLOCKS:Int = 35373;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_UNIFORM_BLOCKS:Int = 35374;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_UNIFORM_BUFFER_BINDINGS:Int = 35375;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_UNIFORM_BLOCK_SIZE:Int = 35376;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS:Int = 35377;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS:Int = 35378;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS:Int = 35379;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT:Int = 35380;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH:Int = 35381;
/** Accepted by the {@code pname} parameter of GetProgramiv.  */
	inline static public var GL_ACTIVE_UNIFORM_BLOCKS:Int = 35382;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_TYPE:Int = 35383;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_SIZE:Int = 35384;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_NAME_LENGTH:Int = 35385;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_BLOCK_INDEX:Int = 35386;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_OFFSET:Int = 35387;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_ARRAY_STRIDE:Int = 35388;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_MATRIX_STRIDE:Int = 35389;
/** Accepted by the {@code pname} parameter of GetActiveUniformsiv.  */
	inline static public var GL_UNIFORM_IS_ROW_MAJOR:Int = 35390;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_BINDING:Int = 35391;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_DATA_SIZE:Int = 35392;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_NAME_LENGTH:Int = 35393;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS:Int = 35394;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES:Int = 35395;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER:Int = 35396;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER:Int = 35397;
/** Accepted by the {@code pname} parameter of GetActiveUniformBlockiv.  */
	inline static public var GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:Int = 35398;
/** Returned by GetActiveUniformsiv and GetUniformBlockIndex.  */
	inline static public var GL_INVALID_INDEX:Int = -1;
/** Function address.  */
	public var GetUniformIndices:haxe.Int64;
/** Function address.  */
	public var GetActiveUniformsiv:haxe.Int64;
/** Function address.  */
	public var GetActiveUniformName:haxe.Int64;
/** Function address.  */
	public var GetUniformBlockIndex:haxe.Int64;
/** Function address.  */
	public var GetActiveUniformBlockiv:haxe.Int64;
/** Function address.  */
	public var GetActiveUniformBlockName:haxe.Int64;
/** Function address.  */
	public var BindBufferRange:haxe.Int64;
/** Function address.  */
	public var BindBufferBase:haxe.Int64;
/** Function address.  */
	public var GetIntegeri_v:haxe.Int64;
/** Function address.  */
	public var UniformBlockBinding:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Assigns a binding point to an active uniform block.
 *
 * @param program             the name of a program object containing the active uniform block whose binding to assign
 * @param uniformBlockIndex   the index of the active uniform block within {@code program} whose binding to assign
 * @param uniformBlockBinding the binding point to which to bind the uniform block with index {@code uniformBlockIndex} within {@code program}
 */
	static public function glUniformBlockBinding(program:Int,uniformBlockIndex:Int,uniformBlockBinding:Int):Void;
/** Unsafe version of {@link #glGetActiveUniformsiv GetActiveUniformsiv}  */
	static public function nglGetActiveUniformsiv(program:Int,uniformCount:Int,uniformIndices:haxe.Int64,pname:Int,params:haxe.Int64):Void;
/** Unsafe version of {@link #glGetActiveUniformBlockiv GetActiveUniformBlockiv}  */
	static public function nglGetActiveUniformBlockiv(program:Int,uniformBlockIndex:Int,pname:Int,params:haxe.Int64):Void;
/** Single value version of: {@link #glGetActiveUniformsiv GetActiveUniformsiv}  */
	static public function glGetActiveUniformsi(program:Int,uniformIndex:Int,pname:Int):Int;
/** CharSequence version of: {@link #glGetUniformBlockIndex GetUniformBlockIndex}  */
/**
 * Retrieves the index of a named uniform block.
 *
 * @param program          the name of a program containing the uniform block
 * @param uniformBlockName an array of characters to containing the name of the uniform block whose index to retrieve
 */
	static public function glGetUniformBlockIndex(program:Int,uniformBlockName:java.nio.ByteBuffer):Int;
	@:overload(function (program:Int,uniformBlockName:java.lang.CharSequence):Int {})
/** Unsafe version of {@link #glGetActiveUniformBlockName GetActiveUniformBlockName}  */
	static public function nglGetActiveUniformBlockName(program:Int,uniformBlockIndex:Int,bufSize:Int,length:haxe.Int64,uniformBlockName:haxe.Int64):Void;
/** Unsafe version of {@link #glGetUniformBlockIndex GetUniformBlockIndex}  */
	static public function nglGetUniformBlockIndex(program:Int,uniformBlockName:haxe.Int64):Int;
/** Single return value version of: {@link #glGetActiveUniformBlockiv GetActiveUniformBlockiv}  */
	static public function glGetActiveUniformBlocki(program:Int,uniformBlockIndex:Int,pname:Int):Int;
/** String return (w/ implicit max length) version of: {@link #glGetActiveUniformBlockName GetActiveUniformBlockName}  */
/** String return version of: {@link #glGetActiveUniformBlockName GetActiveUniformBlockName}  */
/** Alternative version of: {@link #glGetActiveUniformBlockName GetActiveUniformBlockName}  */
/**
 * Retrieves the name of an active uniform block.
 *
 * @param program           the name of a program containing the uniform block
 * @param uniformBlockIndex the index of the uniform block within {@code program}
 * @param bufSize           the size of the buffer addressed by {@code uniformBlockName}
 * @param length            the address of a variable to receive the number of characters that were written to {@code uniformBlockName}
 * @param uniformBlockName  an array of characters to receive the name of the uniform block at {@code uniformBlockIndex}
 */
	static public function glGetActiveUniformBlockName(program:Int,uniformBlockIndex:Int,bufSize:Int,length:java.nio.ByteBuffer,uniformBlockName:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,uniformBlockIndex:Int):String {})
	@:overload(function (program:Int,uniformBlockIndex:Int,bufSize:Int):String {})
	@:overload(function (program:Int,uniformBlockIndex:Int,length:java.nio.IntBuffer,uniformBlockName:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetUniformIndices GetUniformIndices}  */
	static public function nglGetUniformIndices(program:Int,uniformCount:Int,uniformNames:haxe.Int64,uniformIndices:haxe.Int64):Void;
/**
 * Binds a buffer object to an indexed buffer target.
 *
 * @param target the target of the bind operation. One of:<br>{@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}
 * @param index  the index of the binding point within the array specified by {@code target}
 * @param buffer a buffer object to bind to the specified binding point
 */
	static public function glBindBufferBase(target:Int,index:Int,buffer:Int):Void;
/** String return (w/ implicit max length) version of: {@link #glGetActiveUniformName GetActiveUniformName}  */
/** String return version of: {@link #glGetActiveUniformName GetActiveUniformName}  */
/** Alternative version of: {@link #glGetActiveUniformName GetActiveUniformName}  */
/**
 * Queries the name of an active uniform.
 *
 * @param program      the program containing the active uniform index {@code uniformIndex}
 * @param uniformIndex the index of the active uniform whose name to query
 * @param bufSize      the size of the buffer, in units of {@code GLchar}, of the buffer whose address is specified in {@code uniformName}
 * @param length       the address of a variable that will receive the number of characters that were or would have been written to the buffer addressed by {@code uniformName}
 * @param uniformName  the address of a buffer into which the GL will place the name of the active uniform at {@code uniformIndex} within {@code program}
 */
	static public function glGetActiveUniformName(program:Int,uniformIndex:Int,bufSize:Int,length:java.nio.ByteBuffer,uniformName:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,uniformIndex:Int):String {})
	@:overload(function (program:Int,uniformIndex:Int,bufSize:Int):String {})
	@:overload(function (program:Int,uniformIndex:Int,length:java.nio.IntBuffer,uniformName:java.nio.ByteBuffer):Void {})
/**
 * Queries information about an active uniform block.
 *
 * @param program           the name of a program containing the uniform block
 * @param uniformBlockIndex the index of the uniform block within {@code program}
 * @param pname             the name of the parameter to query. One of:<br>{@link #GL_UNIFORM_BLOCK_BINDING UNIFORM_BLOCK_BINDING}, {@link #GL_UNIFORM_BLOCK_DATA_SIZE UNIFORM_BLOCK_DATA_SIZE}, {@link #GL_UNIFORM_BLOCK_NAME_LENGTH UNIFORM_BLOCK_NAME_LENGTH}, {@link #GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS UNIFORM_BLOCK_ACTIVE_UNIFORMS}, {@link #GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES}, {@link #GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER}, {@link #GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER}, {@link #GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER}
 * @param params            the address of a variable to receive the result of the query
 */
/** Alternative version of: {@link #glGetActiveUniformBlockiv GetActiveUniformBlockiv}  */
	static public function glGetActiveUniformBlockiv(program:Int,uniformBlockIndex:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (program:Int,uniformBlockIndex:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * Binds a range within a buffer object to an indexed buffer target.
 *
 * @param target the target of the bind operation. One of:<br>{@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}
 * @param index  the index of the binding point within the array specified by {@code target}
 * @param buffer a buffer object to bind to the specified binding point
 * @param offset the starting offset in basic machine units into the buffer object {@code buffer}
 * @param size   the amount of data in machine units that can be read from the buffer object while used as an indexed target
 */
	static public function glBindBufferRange(target:Int,index:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64):Void;
/**
 * Queries the integer value of an indexed state variable.
 *
 * @param target the indexed state to query
 * @param index  the index of the element being queried
 * @param data   a scalar or buffer in which to place the returned data
 */
/** Alternative version of: {@link #glGetIntegeri_v GetIntegeri_v}  */
	static public function glGetIntegeri_v(target:Int,index:Int,data:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,index:Int,data:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetIntegeri_v GetIntegeri_v}  */
	static public function nglGetIntegeri_v(target:Int,index:Int,data:haxe.Int64):Void;
/** Alternative version of: {@link #glGetActiveUniformsiv GetActiveUniformsiv}  */
/**
 * Returns information about several active uniform variables for the specified program object.
 *
 * @param program        the program object to be queried
 * @param uniformCount   the number of elements in the array of indices {@code uniformIndices} and the number of parameters written to {@code params} upon successful return
 * @param uniformIndices an array of {@code uniformCount} integers containing the indices of uniforms within {@code program}
 * @param pname          the property of the each uniform in {@code uniformIndices} that should be written into the corresponding element of {@code params}
 * @param params         an array of {@code uniformCount} integers which are to receive the value of {@code pname} for each uniform in {@code uniformIndices}
 */
	static public function glGetActiveUniformsiv(program:Int,uniformCount:Int,uniformIndices:java.nio.ByteBuffer,pname:Int,params:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,uniformIndices:java.nio.IntBuffer,pname:Int,params:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetActiveUniformName GetActiveUniformName}  */
	static public function nglGetActiveUniformName(program:Int,uniformIndex:Int,bufSize:Int,length:haxe.Int64,uniformName:haxe.Int64):Void;
/** Returns the {@link ARBUniformBufferObject} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBUniformBufferObject;
/** Single return value version of: {@link #glGetIntegeri_v GetIntegeri_v}  */
	static public function glGetIntegeri(target:Int,index:Int):Int;
/** Single uniformName version of: {@link #glGetUniformIndices GetUniformIndices}  */
/** Array version of: {@link #glGetUniformIndices GetUniformIndices}  */
/** Alternative version of: {@link #glGetUniformIndices GetUniformIndices}  */
/**
 * Retrieves the indices of a number of uniforms within a program object
 *
 * @param program        the name of a program containing uniforms whose indices to query
 * @param uniformCount   the number of uniforms whose indices to query
 * @param uniformNames   an array of pointers to buffers containing the names of the queried uniforms
 * @param uniformIndices an array that will receive the indices of the uniforms
 */
	static public function glGetUniformIndices(program:Int,uniformCount:Int,uniformNames:java.nio.ByteBuffer,uniformIndices:java.nio.ByteBuffer):Void;
	@:overload(function (program:Int,uniformName:java.lang.CharSequence):Int {})
	@:overload(function (program:Int,uniformNames:java.NativeArray<java.lang.CharSequence>,uniformIndices:java.nio.IntBuffer):Void {})
	@:overload(function (program:Int,uniformNames:org.lwjgl.PointerBuffer,uniformIndices:java.nio.IntBuffer):Void {})

}
