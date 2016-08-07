package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBVertexBufferObject")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/vertex_buffer_object.txt">ARB_vertex_buffer_object</a> extension.
 * 
 * <p>This extension defines an interface that allows various types of data (especially vertex array data) to be cached in high-performance graphics memory on
 * the server, thereby increasing the rate of data transfers.</p>
 * 
 * <p>Chunks of data are encapsulated within "buffer objects", which conceptually are nothing more than arrays of bytes, just like any chunk of memory. An API
 * is provided whereby applications can read from or write to buffers, either via the GL itself ({@link #glBufferDataARB BufferDataARB}, {@link #glBufferSubDataARB BufferSubDataARB},
 * {@link #glGetBufferSubDataARB GetBufferSubDataARB}) or via a pointer to the memory.</p>
 * 
 * <p>The latter technique is known as "mapping" a buffer.  When an application maps a buffer, it is given a pointer to the memory. When the application
 * finishes reading from or writing to the memory, it is required to "unmap" the buffer before it is once again permitted to use that buffer as a GL data
 * source or sink. Mapping often allows applications to eliminate an extra data copy otherwise required to access the buffer, thereby enhancing
 * performance. In addition, requiring that applications unmap the buffer to use it as a data source or sink ensures that certain classes of latent
 * synchronization bugs cannot occur.</p>
 * 
 * <p>Although this extension only defines hooks for buffer objects to be used with OpenGL's vertex array APIs, the API defined in this extension permits
 * buffer objects to be used as either data sources or sinks for any GL command that takes a pointer as an argument. Normally, in the absence of this
 * extension, a pointer passed into the GL is simply a pointer to the user's data. This extension defines a mechanism whereby this pointer is used not as a
 * pointer to the data itself, but as an offset into a currently bound buffer object. The buffer object ID zero is reserved, and when buffer object zero is
 * bound to a given target, the commands affected by that buffer binding behave normally. When a nonzero buffer ID is bound, then the pointer represents an
 * offset.</p>
 * 
 * <p>In the case of vertex arrays, this extension defines not merely one binding for all attributes, but a separate binding for each individual attribute. As
 * a result, applications can source their attributes from multiple buffers. An application might, for example, have a model with constant texture
 * coordinates and variable geometry. The texture coordinates might be retrieved from a buffer object with the usage mode "STATIC_DRAW", indicating to the
 * GL that the application does not expect to update the contents of the buffer frequently or even at all, while the vertices might be retrieved from a
 * buffer object with the usage mode "STREAM_DRAW", indicating that the vertices will be updated on a regular basis.</p>
 * 
 * <p>In addition, a binding is defined by which applications can source index data (as used by {@link GL11#glDrawElements DrawElements}, {@link GL12#glDrawRangeElements DrawRangeElements}, and
 * {@link GL14#glMultiDrawElements MultiDrawElements}) from a buffer object. On some platforms, this enables very large models to be rendered with no more than a few small commands
 * to the graphics device.</p>
 * 
 * <p>It is expected that a future extension will allow sourcing pixel data from and writing pixel data to a buffer object.</p>
 * 
 * <p>Promoted to core in {@link GL15 OpenGL 1.5}.</p>
 */
extern class ARBVertexBufferObject 
{
/**
 * Accepted by the {@code target} parameters of BindBufferARB, BufferDataARB, BufferSubDataARB, MapBufferARB, UnmapBufferARB, GetBufferSubDataARB,
 * GetBufferParameterivARB, and GetBufferPointervARB.
 */
	inline static public var GL_ARRAY_BUFFER_ARB:Int = 34962;
/**
 * Accepted by the {@code target} parameters of BindBufferARB, BufferDataARB, BufferSubDataARB, MapBufferARB, UnmapBufferARB, GetBufferSubDataARB,
 * GetBufferParameterivARB, and GetBufferPointervARB.
 */
	inline static public var GL_ELEMENT_ARRAY_BUFFER_ARB:Int = 34963;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_ARRAY_BUFFER_BINDING_ARB:Int = 34964;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB:Int = 34965;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_VERTEX_ARRAY_BUFFER_BINDING_ARB:Int = 34966;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_NORMAL_ARRAY_BUFFER_BINDING_ARB:Int = 34967;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_COLOR_ARRAY_BUFFER_BINDING_ARB:Int = 34968;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_INDEX_ARRAY_BUFFER_BINDING_ARB:Int = 34969;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB:Int = 34970;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB:Int = 34971;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB:Int = 34972;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB:Int = 34973;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB:Int = 34974;
/** Accepted by the {@code pname} parameter of GetVertexAttribivARB.  */
	inline static public var GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB:Int = 34975;
/** Accepted by the {@code usage} parameter of BufferDataARB.  */
	inline static public var GL_STREAM_DRAW_ARB:Int = 35040;
/** Accepted by the {@code usage} parameter of BufferDataARB.  */
	inline static public var GL_STREAM_READ_ARB:Int = 35041;
/** Accepted by the {@code usage} parameter of BufferDataARB.  */
	inline static public var GL_STREAM_COPY_ARB:Int = 35042;
/** Accepted by the {@code usage} parameter of BufferDataARB.  */
	inline static public var GL_STATIC_DRAW_ARB:Int = 35044;
/** Accepted by the {@code usage} parameter of BufferDataARB.  */
	inline static public var GL_STATIC_READ_ARB:Int = 35045;
/** Accepted by the {@code usage} parameter of BufferDataARB.  */
	inline static public var GL_STATIC_COPY_ARB:Int = 35046;
/** Accepted by the {@code usage} parameter of BufferDataARB.  */
	inline static public var GL_DYNAMIC_DRAW_ARB:Int = 35048;
/** Accepted by the {@code usage} parameter of BufferDataARB.  */
	inline static public var GL_DYNAMIC_READ_ARB:Int = 35049;
/** Accepted by the {@code usage} parameter of BufferDataARB.  */
	inline static public var GL_DYNAMIC_COPY_ARB:Int = 35050;
/** Accepted by the {@code access} parameter of MapBufferARB.  */
	inline static public var GL_READ_ONLY_ARB:Int = 35000;
/** Accepted by the {@code access} parameter of MapBufferARB.  */
	inline static public var GL_WRITE_ONLY_ARB:Int = 35001;
/** Accepted by the {@code access} parameter of MapBufferARB.  */
	inline static public var GL_READ_WRITE_ARB:Int = 35002;
/** Accepted by the {@code pname} parameter of GetBufferParameterivARB.  */
	inline static public var GL_BUFFER_SIZE_ARB:Int = 34660;
/** Accepted by the {@code pname} parameter of GetBufferParameterivARB.  */
	inline static public var GL_BUFFER_USAGE_ARB:Int = 34661;
/** Accepted by the {@code pname} parameter of GetBufferParameterivARB.  */
	inline static public var GL_BUFFER_ACCESS_ARB:Int = 35003;
/** Accepted by the {@code pname} parameter of GetBufferParameterivARB.  */
	inline static public var GL_BUFFER_MAPPED_ARB:Int = 35004;
/** Accepted by the {@code pname} parameter of GetBufferPointervARB.  */
	inline static public var GL_BUFFER_MAP_POINTER_ARB:Int = 35005;
/** Function address.  */
	public var BindBufferARB:haxe.Int64;
/** Function address.  */
	public var DeleteBuffersARB:haxe.Int64;
/** Function address.  */
	public var GenBuffersARB:haxe.Int64;
/** Function address.  */
	public var IsBufferARB:haxe.Int64;
/** Function address.  */
	public var BufferDataARB:haxe.Int64;
/** Function address.  */
	public var BufferSubDataARB:haxe.Int64;
/** Function address.  */
	public var GetBufferSubDataARB:haxe.Int64;
/** Function address.  */
	public var MapBufferARB:haxe.Int64;
/** Function address.  */
	public var UnmapBufferARB:haxe.Int64;
/** Function address.  */
	public var GetBufferParameterivARB:haxe.Int64;
/** Function address.  */
	public var GetBufferPointervARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** Unsafe version of {@link #glDeleteBuffersARB DeleteBuffersARB}  */
/** JNI method for {@link #glDeleteBuffersARB DeleteBuffersARB}  */
	static public function nglDeleteBuffersARB(n:Int,buffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,buffers:haxe.Int64):Void {})
/**
 * Binds a named buffer object.
 *
 * @param target the target to which the buffer object is bound. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param buffer the name of a buffer object
 */
	static public function glBindBufferARB(target:Int,buffer:Int):Void;
/**
 * Returns the pointer to a mapped buffer object's data store.
 *
 * @param target the target buffer object. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param pname  the pointer to be returned. Must be:<br>{@link #GL_BUFFER_MAP_POINTER_ARB BUFFER_MAP_POINTER_ARB}
 * @param params the pointer value specified by {@code pname}
 */
/** Alternative version of: {@link #glGetBufferPointervARB GetBufferPointervARB}  */
	static public function glGetBufferPointervARB(target:Int,pname:Int,params:org.lwjgl.PointerBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glBufferSubDataARB BufferSubDataARB}  */
/** JNI method for {@link #glBufferSubDataARB BufferSubDataARB}  */
	static public function nglBufferSubDataARB(target:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64):Void {})
/** Single value version of: {@link #glDeleteBuffersARB DeleteBuffersARB}  */
/** Alternative version of: {@link #glDeleteBuffersARB DeleteBuffersARB}  */
/**
 * Deletes named buffer objects.
 *
 * @param n       the number of buffer objects to be deleted
 * @param buffers an array of buffer objects to be deleted
 */
	static public function glDeleteBuffersARB(n:Int,buffers:java.nio.ByteBuffer):Void;
	@:overload(function (buffer:Int):Void {})
	@:overload(function (buffers:java.nio.IntBuffer):Void {})
/** Alternative version of: {@link #glBufferSubDataARB BufferSubDataARB}  */
/**
 * Updates a subset of a buffer object's data store.
 *
 * @param target the target buffer object. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param offset the offset into the buffer object's data store where data replacement will begin, measured in bytes
 * @param size   the size in bytes of the data store region being replaced
 * @param data   a pointer to the new data that will be copied into the data store
 */
	static public function glBufferSubDataARB(target:Int,offset:haxe.Int64,size:haxe.Int64,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glGetBufferParameterivARB GetBufferParameterivARB}  */
/** JNI method for {@link #glGetBufferParameterivARB GetBufferParameterivARB}  */
	static public function nglGetBufferParameterivARB(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/** Unsafe version of {@link #glGenBuffersARB GenBuffersARB}  */
/** JNI method for {@link #glGenBuffersARB GenBuffersARB}  */
	static public function nglGenBuffersARB(n:Int,buffers:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (n:Int,buffers:haxe.Int64):Void {})
/** JNI method for {@link #glIsBufferARB IsBufferARB}  */
	static public function nglIsBufferARB(buffer:Int,__functionAddress:haxe.Int64):Bool;
/** Unsafe version of {@link #glGetBufferSubDataARB GetBufferSubDataARB}  */
/** JNI method for {@link #glGetBufferSubDataARB GetBufferSubDataARB}  */
	static public function nglGetBufferSubDataARB(target:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,offset:haxe.Int64,size:haxe.Int64,data:haxe.Int64):Void {})
/** Single return value version of: {@link #glGetBufferParameterivARB GetBufferParameterivARB}  */
	static public function glGetBufferParameteriARB(target:Int,pname:Int):Int;
/** JNI method for {@link #glBindBufferARB BindBufferARB}  */
	static public function nglBindBufferARB(target:Int,buffer:Int,__functionAddress:haxe.Int64):Void;
/** ByteBuffer version of: {@link #glGetBufferSubDataARB GetBufferSubDataARB}  */
/** DoubleBuffer version of: {@link #glGetBufferSubDataARB GetBufferSubDataARB}  */
/** FloatBuffer version of: {@link #glGetBufferSubDataARB GetBufferSubDataARB}  */
/** IntBuffer version of: {@link #glGetBufferSubDataARB GetBufferSubDataARB}  */
/** ShortBuffer version of: {@link #glGetBufferSubDataARB GetBufferSubDataARB}  */
/**
 * Returns a subset of a buffer object's data store.
 *
 * @param target the target buffer object. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param offset the offset into the buffer object's data store from which data will be returned, measured in bytes
 * @param size   the size in bytes of the data store region being returned
 * @param data   a pointer to the location where buffer object data is returned
 */
	static public function glGetBufferSubDataARB(target:Int,offset:haxe.Int64,size:haxe.Int64,data:java.nio.ByteBuffer):Void;
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.DoubleBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.IntBuffer):Void {})
	@:overload(function (target:Int,offset:haxe.Int64,data:java.nio.ShortBuffer):Void {})
/** Single return value version of: {@link #glGetBufferPointervARB GetBufferPointervARB}  */
	static public function glGetBufferPointerARB(target:Int,pname:Int):haxe.Int64;
/** Single return value version of: {@link #glGenBuffersARB GenBuffersARB}  */
/** Alternative version of: {@link #glGenBuffersARB GenBuffersARB}  */
/**
 * Generates buffer object names.
 *
 * @param n       the number of buffer object names to be generated
 * @param buffers a buffer in which the generated buffer object names are stored
 */
	static public function glGenBuffersARB(n:Int,buffers:java.nio.ByteBuffer):Void;
	@:overload(function ():Int {})
	@:overload(function (buffers:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glGetBufferPointervARB GetBufferPointervARB}  */
/** JNI method for {@link #glGetBufferPointervARB GetBufferPointervARB}  */
	static public function nglGetBufferPointervARB(target:Int,pname:Int,params:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,pname:Int,params:haxe.Int64):Void {})
/**
 * Relinquishes the mapping of a buffer object and invalidates the pointer to its data store.
 * 
 * <p>Returns TRUE unless data values in the buffer’s data store have become corrupted during the period that the buffer was mapped. Such corruption can be
 * the result of a screen resolution change or other window system-dependent event that causes system heaps such as those for high-performance graphics
 * memory to be discarded. GL implementations must guarantee that such corruption can occur only during the periods that a buffer’s data store is mapped.
 * If such corruption has occurred, UnmapBuffer returns FALSE, and the contents of the buffer’s data store become undefined.</p>
 *
 * @param target the target buffer object being unmapped. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 */
	static public function glUnmapBufferARB(target:Int):Bool;
/**
 * Maps a buffer object's data store.
 * 
 * <p><b>LWJGL note</b>: This method comes in 3 flavors:
 * <ol>
 * <li>{@link #glMapBufferARB(int, int)} - Calls {@link #glGetBufferParameteriARB GetBufferParameteriARB} to retrieve the buffer size and a new ByteBuffer instance is always returned.</li>
 * <li>{@link #glMapBufferARB(int, int, ByteBuffer)} - Calls {@link #glGetBufferParameteriARB GetBufferParameteriARB} to retrieve the buffer size and the {@code old_buffer} parameter is reused if the returned size and pointer match the buffer capacity and address, respectively.</li>
 * <li>{@link #glMapBufferARB(int, int, long, ByteBuffer)} - The buffer size is explicitly specified and the {@code old_buffer} parameter is reused if {@code size} and the returned pointer match the buffer capacity and address, respectively. This is the most efficient method.</li>
 * </ol></p>
 *
 * @param target the target buffer object being mapped. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param access the access policy, indicating whether it will be possible to read from, write to, or both read from and write to the buffer object's mapped data store. One of:<br>{@link #GL_READ_ONLY_ARB READ_ONLY_ARB}, {@link #GL_WRITE_ONLY_ARB WRITE_ONLY_ARB}, {@link #GL_READ_WRITE_ARB READ_WRITE_ARB}
 */
/** Alternative version of: {@link #glMapBufferARB MapBufferARB}  */
/** Explicit size alternative version of: {@link #glMapBufferARB MapBufferARB}  */
	static public function glMapBufferARB(target:Int,access:Int,length:haxe.Int64,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (target:Int,access:Int):java.nio.ByteBuffer {})
	@:overload(function (target:Int,access:Int,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/** Unsafe version of {@link #glBufferDataARB BufferDataARB}  */
/** JNI method for {@link #glBufferDataARB BufferDataARB}  */
	static public function nglBufferDataARB(target:Int,size:haxe.Int64,data:haxe.Int64,usage:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (target:Int,size:haxe.Int64,data:haxe.Int64,usage:Int):Void {})
/** Alternative version of: {@link #glBufferDataARB BufferDataARB}  */
/** ByteBuffer version of: {@link #glBufferDataARB BufferDataARB}  */
/** DoubleBuffer version of: {@link #glBufferDataARB BufferDataARB}  */
/** FloatBuffer version of: {@link #glBufferDataARB BufferDataARB}  */
/** IntBuffer version of: {@link #glBufferDataARB BufferDataARB}  */
/** ShortBuffer version of: {@link #glBufferDataARB BufferDataARB}  */
/**
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
 * @param target the target buffer object. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param size   the size in bytes of the buffer object's new data store
 * @param data   a pointer to data that will be copied into the data store for initialization, or NULL if no data is to be copied
 * @param usage  the expected usage pattern of the data store. One of:<br>{@link #GL_STREAM_DRAW_ARB STREAM_DRAW_ARB}, {@link #GL_STREAM_READ_ARB STREAM_READ_ARB}, {@link #GL_STREAM_COPY_ARB STREAM_COPY_ARB}, {@link #GL_STATIC_DRAW_ARB STATIC_DRAW_ARB}, {@link #GL_STATIC_READ_ARB STATIC_READ_ARB}, {@link #GL_STATIC_COPY_ARB STATIC_COPY_ARB}, {@link #GL_DYNAMIC_DRAW_ARB DYNAMIC_DRAW_ARB}, {@link #GL_DYNAMIC_READ_ARB DYNAMIC_READ_ARB}, {@link #GL_DYNAMIC_COPY_ARB DYNAMIC_COPY_ARB}
 */
	static public function glBufferDataARB(target:Int,size:haxe.Int64,data:java.nio.ByteBuffer,usage:Int):Void;
	@:overload(function (target:Int,size:haxe.Int64,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.ByteBuffer,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.DoubleBuffer,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.FloatBuffer,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.IntBuffer,usage:Int):Void {})
	@:overload(function (target:Int,data:java.nio.ShortBuffer,usage:Int):Void {})
/** Unsafe version of {@link #glMapBufferARB MapBufferARB}  */
/** JNI method for {@link #glMapBufferARB MapBufferARB}  */
	static public function nglMapBufferARB(target:Int,access:Int,__functionAddress:haxe.Int64):haxe.Int64;
	@:overload(function (target:Int,access:Int):haxe.Int64 {})
/** JNI method for {@link #glUnmapBufferARB UnmapBufferARB}  */
	static public function nglUnmapBufferARB(target:Int,__functionAddress:haxe.Int64):Bool;
/**
 * Determines if a name corresponds to a buffer object.
 *
 * @param buffer a value that may be the name of a buffer object
 */
	static public function glIsBufferARB(buffer:Int):Bool;
/**
 * Returns the value of a buffer object parameter.
 *
 * @param target the target buffer object. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param pname  the symbolic name of a buffer object parameter. One of:<br>{@link GL15#GL_BUFFER_SIZE BUFFER_SIZE}, {@link GL15#GL_BUFFER_USAGE BUFFER_USAGE}, {@link GL15#GL_BUFFER_ACCESS BUFFER_ACCESS}, {@link GL15#GL_BUFFER_MAPPED BUFFER_MAPPED}, {@link GL30#GL_BUFFER_ACCESS_FLAGS BUFFER_ACCESS_FLAGS}, {@link GL30#GL_BUFFER_MAP_LENGTH BUFFER_MAP_LENGTH}, {@link GL30#GL_BUFFER_MAP_OFFSET BUFFER_MAP_OFFSET}, {@link GL44#GL_BUFFER_IMMUTABLE_STORAGE BUFFER_IMMUTABLE_STORAGE}, {@link GL44#GL_BUFFER_STORAGE_FLAGS BUFFER_STORAGE_FLAGS}
 * @param params the requested parameter
 */
/** Alternative version of: {@link #glGetBufferParameterivARB GetBufferParameterivARB}  */
	static public function glGetBufferParameterivARB(target:Int,pname:Int,params:java.nio.IntBuffer):Void;
	@:overload(function (target:Int,pname:Int,params:java.nio.ByteBuffer):Void {})
/** Returns the {@link ARBVertexBufferObject} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBVertexBufferObject;

}
