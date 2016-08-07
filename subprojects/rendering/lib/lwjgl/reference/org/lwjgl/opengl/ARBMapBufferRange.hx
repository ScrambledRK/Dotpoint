package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBMapBufferRange")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/map_buffer_range.txt">ARB_map_buffer_range</a> extension.
 * 
 * <p>ARB_map_buffer_range expands the buffer object API to allow greater performance when a client application only needs to write to a sub-range of a buffer
 * object. To that end, this extension introduces two new buffer object features: non-serialized buffer modification and explicit sub-range flushing for
 * mapped buffer objects.</p>
 * 
 * <p>OpenGL requires that commands occur in a FIFO manner meaning that any changes to buffer objects either block until the data has been processed by the
 * OpenGL pipeline or else create extra copies to avoid such a block. By providing a method to asynchronously modify buffer object data, an application is
 * then able to manage the synchronization points themselves and modify ranges of data contained by a buffer object even though OpenGL might still be using
 * other parts of it.</p>
 * 
 * <p>This extension also provides a method for explicitly flushing ranges of a mapped buffer object so OpenGL does not have to assume that the entire range
 * may have been modified. Further, it allows the application to more precisely specify its intent with respect to reading, writing, and whether the
 * previous contents of a mapped range of interest need be preserved prior to modification.</p>
 * 
 * <p>Requires {@link GL21 OpenGL 2.1}. Promoted to core in {@link GL30 OpenGL 3.0}.</p>
 */
extern class ARBMapBufferRange 
{
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_READ_BIT:Int = 1;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_WRITE_BIT:Int = 2;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_INVALIDATE_RANGE_BIT:Int = 4;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_INVALIDATE_BUFFER_BIT:Int = 8;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_FLUSH_EXPLICIT_BIT:Int = 16;
/** Accepted by the {@code access} parameter of MapBufferRange.  */
	inline static public var GL_MAP_UNSYNCHRONIZED_BIT:Int = 32;
/** Function address.  */
	public var MapBufferRange:haxe.Int64;
/** Function address.  */
	public var FlushMappedBufferRange:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Maps a section of a buffer object's data store.
 * 
 * <p><b>LWJGL note</b>: This method comes in 2 flavors:
 * <ol>
 * <li>{@link #glMapBufferRange(int, long, long, int)} - Always returns a new ByteBuffer instance.</li>
 * <li>{@link #glMapBufferRange(int, long, long, int, ByteBuffer)} - The {@code old_buffer} parameter is reused if the specified length and returned pointer match the buffer capacity and address, respectively.</li>
 * </ol></p>
 *
 * @param target a binding to which the target buffer is bound. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param offset the starting offset within the buffer of the range to be mapped
 * @param length the length of the range to be mapped
 * @param access a combination of access flags indicating the desired access to the range. One or more of:<br>{@link #GL_MAP_READ_BIT MAP_READ_BIT}, {@link #GL_MAP_WRITE_BIT MAP_WRITE_BIT}, {@link #GL_MAP_INVALIDATE_RANGE_BIT MAP_INVALIDATE_RANGE_BIT}, {@link #GL_MAP_INVALIDATE_BUFFER_BIT MAP_INVALIDATE_BUFFER_BIT}, {@link #GL_MAP_FLUSH_EXPLICIT_BIT MAP_FLUSH_EXPLICIT_BIT}, {@link #GL_MAP_UNSYNCHRONIZED_BIT MAP_UNSYNCHRONIZED_BIT}
 */
/** Alternative version of: {@link #glMapBufferRange MapBufferRange}  */
	static public function glMapBufferRange(target:Int,offset:haxe.Int64,length:haxe.Int64,access:Int,old_buffer:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function (target:Int,offset:haxe.Int64,length:haxe.Int64,access:Int):java.nio.ByteBuffer {})
/** Unsafe version of {@link #glMapBufferRange MapBufferRange}  */
	static public function nglMapBufferRange(target:Int,offset:haxe.Int64,length:haxe.Int64,access:Int):haxe.Int64;
/** Returns the {@link ARBMapBufferRange} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBMapBufferRange;
/**
 * Indicates modifications to a range of a mapped buffer.
 *
 * @param target the target of the flush operation. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param offset the start of the buffer subrange, in basic machine units
 * @param length the length of the buffer subrange, in basic machine units
 */
	static public function glFlushMappedBufferRange(target:Int,offset:haxe.Int64,length:haxe.Int64):Void;

}
