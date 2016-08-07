package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.GL15")
@:final
/**
 * The core OpenGL 1.5 functionality.
 * 
 * <p>Extensions promoted to core in this release:
 * <ul>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/vertex_buffer_object.txt">ARB_vertex_buffer_object</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/ARB/occlusion_query.txt">ARB_occlusion_query</a></li>
 * <li><a href="http://www.opengl.org/registry/specs/EXT/shadow_funcs.txt">EXT_shadow_funcs</a></li>
 * </ul></p>
 */
extern class GL15 
{
/** New token names.  */
	inline static public var GL_FOG_COORD_SRC:Int = 33872;
/** New token names.  */
	inline static public var GL_FOG_COORD:Int = 33873;
/** New token names.  */
	inline static public var GL_CURRENT_FOG_COORD:Int = 33875;
/** New token names.  */
	inline static public var GL_FOG_COORD_ARRAY_TYPE:Int = 33876;
/** New token names.  */
	inline static public var GL_FOG_COORD_ARRAY_STRIDE:Int = 33877;
/** New token names.  */
	inline static public var GL_FOG_COORD_ARRAY_POINTER:Int = 33878;
/** New token names.  */
	inline static public var GL_FOG_COORD_ARRAY:Int = 33879;
/** New token names.  */
	inline static public var GL_FOG_COORD_ARRAY_BUFFER_BINDING:Int = 34973;
/** New token names.  */
	inline static public var GL_SRC0_RGB:Int = 34176;
/** New token names.  */
	inline static public var GL_SRC1_RGB:Int = 34177;
/** New token names.  */
	inline static public var GL_SRC2_RGB:Int = 34178;
/** New token names.  */
	inline static public var GL_SRC0_ALPHA:Int = 34184;
/** New token names.  */
	inline static public var GL_SRC1_ALPHA:Int = 34185;
/** New token names.  */
	inline static public var GL_SRC2_ALPHA:Int = 34186;
/**
 * Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData,
 * GetBufferParameteriv, and GetBufferPointerv.
 */
	inline static public var GL_ARRAY_BUFFER:Int = 34962;
/**
 * Accepted by the {@code target} parameters of BindBuffer, BufferData, BufferSubData, MapBuffer, UnmapBuffer, GetBufferSubData,
 * GetBufferParameteriv, and GetBufferPointerv.
 */
	inline static public var GL_ELEMENT_ARRAY_BUFFER:Int = 34963;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_ARRAY_BUFFER_BINDING:Int = 34964;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_ELEMENT_ARRAY_BUFFER_BINDING:Int = 34965;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_VERTEX_ARRAY_BUFFER_BINDING:Int = 34966;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_NORMAL_ARRAY_BUFFER_BINDING:Int = 34967;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_COLOR_ARRAY_BUFFER_BINDING:Int = 34968;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_INDEX_ARRAY_BUFFER_BINDING:Int = 34969;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING:Int = 34970;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_EDGE_FLAG_ARRAY_BUFFER_BINDING:Int = 34971;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING:Int = 34972;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING:Int = 34973;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_WEIGHT_ARRAY_BUFFER_BINDING:Int = 34974;
/** Accepted by the {@code pname} parameter of GetVertexAttribiv.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:Int = 34975;
/** Accepted by the {@code usage} parameter of BufferData.  */
	inline static public var GL_STREAM_DRAW:Int = 35040;
/** Accepted by the {@code usage} parameter of BufferData.  */
	inline static public var GL_STREAM_READ:Int = 35041;
/** Accepted by the {@code usage} parameter of BufferData.  */
	inline static public var GL_STREAM_COPY:Int = 35042;
/** Accepted by the {@code usage} parameter of BufferData.  */
	inline static public var GL_STATIC_DRAW:Int = 35044;
/** Accepted by the {@code usage} parameter of BufferData.  */
	inline static public var GL_STATIC_READ:Int = 35045;
/** Accepted by the {@code usage} parameter of BufferData.  */
	inline static public var GL_STATIC_COPY:Int = 35046;
/** Accepted by the {@code usage} parameter of BufferData.  */
	inline static public var GL_DYNAMIC_DRAW:Int = 35048;
/** Accepted by the {@code usage} parameter of BufferData.  */
	inline static public var GL_DYNAMIC_READ:Int = 35049;
/** Accepted by the {@code usage} parameter of BufferData.  */
	inline static public var GL_DYNAMIC_COPY:Int = 35050;
/** Accepted by the {@code access} parameter of MapBuffer.  */
	inline static public var GL_READ_ONLY:Int = 35000;
/** Accepted by the {@code access} parameter of MapBuffer.  */
	inline static public var GL_WRITE_ONLY:Int = 35001;
/** Accepted by the {@code access} parameter of MapBuffer.  */
	inline static public var GL_READ_WRITE:Int = 35002;
/** Accepted by the {@code pname} parameter of GetBufferParameteriv.  */
	inline static public var GL_BUFFER_SIZE:Int = 34660;
/** Accepted by the {@code pname} parameter of GetBufferParameteriv.  */
	inline static public var GL_BUFFER_USAGE:Int = 34661;
/** Accepted by the {@code pname} parameter of GetBufferParameteriv.  */
	inline static public var GL_BUFFER_ACCESS:Int = 35003;
/** Accepted by the {@code pname} parameter of GetBufferParameteriv.  */
	inline static public var GL_BUFFER_MAPPED:Int = 35004;
/** Accepted by the {@code pname} parameter of GetBufferPointerv.  */
	inline static public var GL_BUFFER_MAP_POINTER:Int = 35005;
/** Accepted by the {@code target} parameter of BeginQuery, EndQuery, and GetQueryiv.  */
	inline static public var GL_SAMPLES_PASSED:Int = 35092;
/** Accepted by the {@code pname} parameter of GetQueryiv.  */
	inline static public var GL_QUERY_COUNTER_BITS:Int = 34916;
/** Accepted by the {@code pname} parameter of GetQueryiv.  */
	inline static public var GL_CURRENT_QUERY:Int = 34917;
/** Accepted by the {@code pname} parameter of GetQueryObjectiv and GetQueryObjectuiv.  */
	inline static public var GL_QUERY_RESULT:Int = 34918;
/** Accepted by the {@code pname} parameter of GetQueryObjectiv and GetQueryObjectuiv.  */
	inline static public var GL_QUERY_RESULT_AVAILABLE:Int = 34919;
/** Function address.  */
	public var BindBuffer:haxe.Int64;
/** Function address.  */
	public var DeleteBuffers:haxe.Int64;
/** Function address.  */
	public var GenBuffers:haxe.Int64;
/** Function address.  */
	public var IsBuffer:haxe.Int64;
/** Function address.  */
	public var BufferData:haxe.Int64;
/** Function address.  */
	public var BufferSubData:haxe.Int64;
/** Function address.  */
	public var GetBufferSubData:haxe.Int64;
/** Function address.  */
	public var MapBuffer:haxe.Int64;
/** Function address.  */
	public var UnmapBuffer:haxe.Int64;
/** Function address.  */
	public var GetBufferParameteriv:haxe.Int64;
/** Function address.  */
	public var GetBufferPointerv:haxe.Int64;
/** Function address.  */
	public var GenQueries:haxe.Int64;
/** Function address.  */
	public var DeleteQueries:haxe.Int64;
/** Function address.  */
	public var IsQuery:haxe.Int64;
/** Function address.  */
	public var BeginQuery:haxe.Int64;
/** Function address.  */
	public var EndQuery:haxe.Int64;
/** Function address.  */
	public var GetQueryiv:haxe.Int64;
/** Function address.  */
	public var GetQueryObjectiv:haxe.Int64;
/** Function address.  */
	public var GetQueryObjectuiv:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Determines if a name corresponds to a buffer object.
 *
 * @param buffer a value that may be the name of a buffer object
 */
	static public function glIsBuffer(buffer:Int):Bool;
/** Unsafe version of {@link #glGetBufferParameteriv GetBufferParameteriv}  */
/** JNI method for {@link #glGetBufferParameteriv GetBufferParameteriv}  */
	static public function nglGetBufferParameteriv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBindBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Binds a named buffer object.
 *
 * @param target the target to which the buffer object is bound. One of:<br>{@link #GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link #GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param buffer the name of a buffer object
 */
	static public function glBindBuffer(target:Int,buffer:Int):Void;
/** Unsafe version of {@link #glGenBuffers GenBuffers}  */
/** JNI method for {@link #glGenBuffers GenBuffers}  */
	static public function nglGenBuffers(n:Int,buffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,buffers:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetQueryObjectuiv GetQueryObjectuiv}  */
	static public function glGetQueryObjectui(id:Int,pname:Int):Int;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glUnmapBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Relinquishes the mapping of a buffer object and invalidates the pointer to its data store.
 * 
 * <p>Returns TRUE unless data values in the buffer’s data store have become corrupted during the period that the buffer was mapped. Such corruption can be
 * the result of a screen resolution change or other window system-dependent event that causes system heaps such as those for high-performance graphics
 * memory to be discarded. GL implementations must guarantee that such corruption can occur only during the periods that a buffer’s data store is mapped.
 * If such corruption has occurred, UnmapBuffer returns FALSE, and the contents of the buffer’s data store become undefined.</p>
 *
 * @param target the target buffer object being unmapped. One of:<br>{@link #GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link #GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 */
	static public function glUnmapBuffer(target:Int):Bool;
/** JNI method for {@link #glBeginQuery BeginQuery}  */
	static public function nglBeginQuery(target:Int,id:Int,__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glGenQueries GenQueries}  */
/** JNI method for {@link #glGenQueries GenQueries}  */
	static public function nglGenQueries(n:Int,ids:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,ids:haxe.Int64):Void {})
/** JNI method for {@link #glIsQuery IsQuery}  */
	static public function nglIsQuery(id:Int,__functionAddress:haxe.Int64):Bool;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glIsQuery.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Determine if a name corresponds to a query object.
 *
 * @param id a value that may be the name of a query object
 */
	static public function glIsQuery(id:Int):Bool;
/** Single return value version of: {@link #glGetQueryiv GetQueryiv}  */
	static public function glGetQueryi(target:Int,pname:Int):Int;
/** ByteBuffer version of: {@link #glBufferSubData BufferSubData}  */
/** DoubleBuffer version of: {@link #glBufferSubData BufferSubData}  */
/** FloatBuffer version of: {@link #glBufferSubData BufferSubData}  */
/** IntBuffer version of: {@link #glBufferSubData BufferSubData}  */
/** ShortBuffer version of: {@link #glBufferSubData BufferSubData}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBufferSubData.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Updates a subset of a buffer object's data store.
 *
 * @param target the target buffer object. One of:<br>{@link #GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link #GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param offset the offset into the buffer object's data store where data replacement will begin, measured in bytes
 * @param size   the size in bytes of the data store region being replaced
 * @param data   a pointer to the new data that will be copied into the data store
 */
	static public function glBufferSubData(target:Int,offset:haxe.Int64,size:haxe.Int64,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.DoubleBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.IntBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.ShortBuffer):Void {})
/** Alternative version of: {@link #glBufferData BufferData}  */
/** ByteBuffer version of: {@link #glBufferData BufferData}  */
/** DoubleBuffer version of: {@link #glBufferData BufferData}  */
/** FloatBuffer version of: {@link #glBufferData BufferData}  */
/** IntBuffer version of: {@link #glBufferData BufferData}  */
/** ShortBuffer version of: {@link #glBufferData BufferData}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBufferData.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Creates and initializes a buffer object's data store.
 * 
 * <p>{@code usage} is a hint to the GL implementation as to how a buffer object's data store will be accessed. This enables the GL implementation to make
 * more intelligent decisions that may significantly impact buffer object performance. It does not, however, constrain the actual usage of the data store.
 * {@code usage} can be broken down into two parts: first, the frequency of access (modification and usage), and second, the nature of that access. The
 * frequency of access may be one of these:
 * <ul>
 * <li><em>STREAM</em> - The data store contents will be modified once and used at most a few times.</li>
 * <li><em>STATIC</em> - The data store contents will be modified once and used many times.</li>
 * <li><em>DYNAMIC</em> - The data store contents will be modified repeatedly and used many times.</li>
 * </ul>
 * The nature of access may be one of these:
 * <ul>
 * <li><em>DRAW</em> - The data store contents are modified by the application, and used as the source for GL drawing and image specification commands.</li>
 * <li><em>READ</em> - The data store contents are modified by reading data from the GL, and used to return that data when queried by the application.</li>
 * <li><em>COPY</em> - The data store contents are modified by reading data from the GL, and used as the source for GL drawing and image specification commands.</li>
 * </ul></p>
 *
 * @param target the target buffer object. One of:<br>{@link #GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link #GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param size   the size in bytes of the buffer object's new data store
 * @param data   a pointer to data that will be copied into the data store for initialization, or NULL if no data is to be copied
 * @param usage  the expected usage pattern of the data store. One of:<br>{@link #GL_STREAM_DRAW STREAM_DRAW}, {@link #GL_STREAM_READ STREAM_READ}, {@link #GL_STREAM_COPY STREAM_COPY}, {@link #GL_STATIC_DRAW STATIC_DRAW}, {@link #GL_STATIC_READ STATIC_READ}, {@link #GL_STATIC_COPY STATIC_COPY}, {@link #GL_DYNAMIC_DRAW DYNAMIC_DRAW}, {@link #GL_DYNAMIC_READ DYNAMIC_READ}, {@link #GL_DYNAMIC_COPY DYNAMIC_COPY}
 */
	static public function glBufferData(target:Int,size:haxe.Int64,data:java.nio.ByteBuffer,usage:Int):Void;
	@:overload(function (target:Int,size:haxe.Int64,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.ByteBuffer,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.DoubleBuffer,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.FloatBuffer,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.IntBuffer,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.ShortBuffer,usage:Int):Void {})
/** JNI method for {@link #glUnmapBuffer UnmapBuffer}  */
	static public function nglUnmapBuffer(target:Int,__functionAddress:haxe.Int64):Bool;
/** Unsafe version of {@link #glGetQueryObjectiv GetQueryObjectiv}  */
/** JNI method for {@link #glGetQueryObjectiv GetQueryObjectiv}  */
	static public function nglGetQueryObjectiv(id:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (id:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glDeleteQueries DeleteQueries}  */
/** JNI method for {@link #glDeleteQueries DeleteQueries}  */
	static public function nglDeleteQueries(n:Int,ids:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,ids:haxe.Int64):Void {})
/** Unsafe version of {@link #glBufferData BufferData}  */
/** JNI method for {@link #glBufferData BufferData}  */
	static public function nglBufferData(target:Int,size:haxe.Int64,data:haxe.Int64,usage:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,size:haxe.Int64,data:haxe.Int64,usage:Int):Void {})
/** Unsafe version of {@link #glGetBufferPointerv GetBufferPointerv}  */
/** JNI method for {@link #glGetBufferPointerv GetBufferPointerv}  */
	static public function nglGetBufferPointerv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Single value version of: {@link #glDeleteQueries DeleteQueries}  */
/** Alternative version of: {@link #glDeleteQueries DeleteQueries}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteQueries.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes named query objects.
 *
 * @param n   the number of query objects to be deleted
 * @param ids an array of query objects to be deleted
 */
	static public function glDeleteQueries(n:Int,ids:java.nio.ByteBuffer):Void;
	@:overload(function (id:Int):Void {})
	@:overload(function (ids:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetQueryiv GetQueryiv}  */
/** JNI method for {@link #glGetQueryiv GetQueryiv}  */
	static public function nglGetQueryiv(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glMapBuffer MapBuffer}  */
/** JNI method for {@link #glMapBuffer MapBuffer}  */
	static public function nglMapBuffer(target:Int,access:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (target:Int,access:Int):haxe.Int64 {})
/** JNI method for {@link #glBindBuffer BindBuffer}  */
	static public function nglBindBuffer(target:Int,buffer:Int,__functionAddress:haxe.Int64):Void;
/** Single return value version of: {@link #glGenQueries GenQueries}  */
/** Alternative version of: {@link #glGenQueries GenQueries}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGenQueries.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Generates query object names.
 *
 * @param n   the number of query object names to be generated
 * @param ids a buffer in which the generated query object names are stored
 */
	static public function glGenQueries(n:Int,ids:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (ids:java.nio.IntBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetQuery.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns parameters of a query object target.
 *
 * @param target the query object target. One of:<br>{@link #GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 * @param pname  the symbolic name of a query object target parameter. One of:<br>{@link #GL_QUERY_COUNTER_BITS QUERY_COUNTER_BITS}, {@link #GL_CURRENT_QUERY CURRENT_QUERY}
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryiv GetQueryiv}  */
	static public function glGetQueryiv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetQueryObject.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Unsigned version of {@link #glGetQueryObjectiv GetQueryObjectiv}.
 *
 * @param id     the name of a query object
 * @param pname  the symbolic name of a query object parameter. One of:<br>{@link #GL_QUERY_RESULT QUERY_RESULT}, {@link #GL_QUERY_RESULT_AVAILABLE QUERY_RESULT_AVAILABLE}
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryObjectuiv GetQueryObjectuiv}  */
	static public function glGetQueryObjectuiv(id:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (id:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetBufferParameter.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the value of a buffer object parameter.
 *
 * @param target the target buffer object. One of:<br>{@link #GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link #GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param pname  the symbolic name of a buffer object parameter. One of:<br>{@link #GL_BUFFER_SIZE BUFFER_SIZE}, {@link #GL_BUFFER_USAGE BUFFER_USAGE}, {@link #GL_BUFFER_ACCESS BUFFER_ACCESS}, {@link #GL_BUFFER_MAPPED BUFFER_MAPPED}, {@link GL30#GL_BUFFER_ACCESS_FLAGS BUFFER_ACCESS_FLAGS}, {@link GL30#GL_BUFFER_MAP_LENGTH BUFFER_MAP_LENGTH}, {@link GL30#GL_BUFFER_MAP_OFFSET BUFFER_MAP_OFFSET}, {@link GL44#GL_BUFFER_IMMUTABLE_STORAGE BUFFER_IMMUTABLE_STORAGE}, {@link GL44#GL_BUFFER_STORAGE_FLAGS BUFFER_STORAGE_FLAGS}
 * @param params the requested parameter
 */
/** Alternative version of: {@link #glGetBufferParameteriv GetBufferParameteriv}  */
	static public function glGetBufferParameteriv(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBeginQuery.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Creates a query object and makes it active.
 *
 * @param target the target type of query object established. One of:<br>{@link #GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 * @param id     the name of a query object
 */
	static public function glBeginQuery(target:Int,id:Int):Void;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glBeginQuery.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Marks the end of the sequence of commands to be tracked for the active query specified by {@code target}.
 *
 * @param target the query object target. One of:<br>{@link #GL_SAMPLES_PASSED SAMPLES_PASSED}, {@link GL30#GL_PRIMITIVES_GENERATED PRIMITIVES_GENERATED}, {@link GL30#GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN}, {@link GL33#GL_TIME_ELAPSED TIME_ELAPSED}, {@link GL33#GL_TIMESTAMP TIMESTAMP}, {@link GL33#GL_ANY_SAMPLES_PASSED ANY_SAMPLES_PASSED}, {@link GL43#GL_ANY_SAMPLES_PASSED_CONSERVATIVE ANY_SAMPLES_PASSED_CONSERVATIVE}
 */
	static public function glEndQuery(target:Int):Void;
/** Unsafe version of {@link #glGetQueryObjectuiv GetQueryObjectuiv}  */
/** JNI method for {@link #glGetQueryObjectuiv GetQueryObjectuiv}  */
	static public function nglGetQueryObjectuiv(id:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (id:Int,pname:Int,params:haxe.Int64):Void {})
/** Single return value version of: {@link #glGenBuffers GenBuffers}  */
/** Alternative version of: {@link #glGenBuffers GenBuffers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGenBuffers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Generates buffer object names.
 *
 * @param n       the number of buffer object names to be generated
 * @param buffers a buffer in which the generated buffer object names are stored
 */
	static public function glGenBuffers(n:Int,buffers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (buffers:java.nio.IntBuffer):Void {})
/** ByteBuffer version of: {@link #glGetBufferSubData GetBufferSubData}  */
/** DoubleBuffer version of: {@link #glGetBufferSubData GetBufferSubData}  */
/** FloatBuffer version of: {@link #glGetBufferSubData GetBufferSubData}  */
/** IntBuffer version of: {@link #glGetBufferSubData GetBufferSubData}  */
/** ShortBuffer version of: {@link #glGetBufferSubData GetBufferSubData}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetBufferSubData.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns a subset of a buffer object's data store.
 *
 * @param target the target buffer object. One of:<br>{@link #GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link #GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param offset the offset into the buffer object's data store from which data will be returned, measured in bytes
 * @param size   the size in bytes of the data store region being returned
 * @param data   a pointer to the location where buffer object data is returned
 */
	static public function glGetBufferSubData(target:Int,offset:haxe.Int64,size:haxe.Int64,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.DoubleBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.IntBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.ShortBuffer):Void {})
/** JNI method for {@link #glIsBuffer IsBuffer}  */
	static public function nglIsBuffer(buffer:Int,__functionAddress:haxe.Int64):Bool;
/** Unsafe version of {@link #glBufferSubData BufferSubData}  */
/** JNI method for {@link #glBufferSubData BufferSubData}  */
	static public function nglBufferSubData(target:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glGetBufferSubData GetBufferSubData}  */
/** JNI method for {@link #glGetBufferSubData GetBufferSubData}  */
	static public function nglGetBufferSubData(target:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetQueryObject.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the integer value of a query object parameter.
 *
 * @param id     the name of a query object
 * @param pname  the symbolic name of a query object parameter. One of:<br>{@link #GL_QUERY_RESULT QUERY_RESULT}, {@link #GL_QUERY_RESULT_AVAILABLE QUERY_RESULT_AVAILABLE}
 * @param params the requested data
 */
/** Alternative version of: {@link #glGetQueryObjectiv GetQueryObjectiv}  */
	static public function glGetQueryObjectiv(id:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (id:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glGetBufferPointer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Returns the pointer to a mapped buffer object's data store.
 *
 * @param target the target buffer object. One of:<br>{@link #GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link #GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param pname  the pointer to be returned. Must be:<br>{@link #GL_BUFFER_MAP_POINTER BUFFER_MAP_POINTER}
 * @param params the pointer value specified by {@code pname}
 */
/** Alternative version of: {@link #glGetBufferPointerv GetBufferPointerv}  */
	static public function glGetBufferPointerv(target:Int,pname:Int,params:org.lwjgl.PointerBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glDeleteBuffers DeleteBuffers}  */
/** JNI method for {@link #glDeleteBuffers DeleteBuffers}  */
	static public function nglDeleteBuffers(n:Int,buffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,buffers:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetBufferPointerv GetBufferPointerv}  */
	static public function glGetBufferPointer(target:Int,pname:Int):haxe.Int64;
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glMapBuffer.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Maps a buffer object's data store.
 * 
 * <p><b>LWJGL note</b>: This method comes in 3 flavors:
 * <ol>
 * <li>{@link #glMapBuffer(int, int)} - Calls {@link #glGetBufferParameteri GetBufferParameteri} to retrieve the buffer size and a new ByteBuffer instance is always returned.</li>
 * <li>{@link #glMapBuffer(int, int, ByteBuffer)} - Calls {@link #glGetBufferParameteri GetBufferParameteri} to retrieve the buffer size and the {@code old_buffer} parameter is reused if the returned size and pointer match the buffer capacity and address, respectively.</li>
 * <li>{@link #glMapBuffer(int, int, long, ByteBuffer)} - The buffer size is explicitly specified and the {@code old_buffer} parameter is reused if {@code size} and the returned pointer match the buffer capacity and address, respectively. This is the most efficient method.</li>
 * </ol></p>
 *
 * @param target the target buffer object being mapped. One of:<br>{@link #GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link #GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param access the access policy, indicating whether it will be possible to read from, write to, or both read from and write to the buffer object's mapped data store. One of:<br>{@link #GL_READ_ONLY READ_ONLY}, {@link #GL_WRITE_ONLY WRITE_ONLY}, {@link #GL_READ_WRITE READ_WRITE}
 */
/** Alternative version of: {@link #glMapBuffer MapBuffer}  */
/** Explicit size alternative version of: {@link #glMapBuffer MapBuffer}  */
	static public function glMapBuffer(target:Int,access:Int,length:haxe.Int64,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (target:Int,access:Int):java.nio.ByteBuffer {})
	@:overload(function (target:Int,access:Int,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/** Single return value version of: {@link #glGetBufferParameteriv GetBufferParameteriv}  */
	static public function glGetBufferParameteri(target:Int,pname:Int):Int;
/** Single return value version of: {@link #glGetQueryObjectiv GetQueryObjectiv}  */
	static public function glGetQueryObjecti(id:Int,pname:Int):Int;
/** Single value version of: {@link #glDeleteBuffers DeleteBuffers}  */
/** Alternative version of: {@link #glDeleteBuffers DeleteBuffers}  */
/**
 * <p><a href="http://www.opengl.org/sdk/docs/man/html/glDeleteBuffers.xhtml">OpenGL SDK Reference</a></p>
 * 
 * Deletes named buffer objects.
 *
 * @param n       the number of buffer objects to be deleted
 * @param buffers an array of buffer objects to be deleted
 */
	static public function glDeleteBuffers(n:Int,buffers:java.nio.ByteBuffer):Void;
	@:overload(function (buffer:Int):Void {})
	@:overload(function (buffers:java.nio.IntBuffer):Void {})
/** Returns the {@link GL15} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.GL15;
/** JNI method for {@link #glEndQuery EndQuery}  */
	static public function nglEndQuery(target:Int,__functionAddress:haxe.Int64):Void;

}
