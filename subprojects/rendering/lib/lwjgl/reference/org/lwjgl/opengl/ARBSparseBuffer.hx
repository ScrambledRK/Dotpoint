package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBSparseBuffer")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/sparse_buffer.txt">ARB_sparse_buffer</a> extension.
 * 
 * <p>This extension adds to GL a mechanism to decouple the virtual and physical storage requirements of textures and allows an application
 * to create partially populated textures that would over-subscribe available graphics memory if made fully resident. This extension provides like
 * functionality for buffer objects, allowing applications to manage buffer object storage in a similar manner.</p>
 * 
 * <p>Requires {@link GL15 OpenGL 1.5} or {@link ARBVertexBufferObject ARB_vertex_buffer_object}.</p>
 */
extern class ARBSparseBuffer 
{
/** Accepted as part of the the {@code flags} parameter to {@link GL44#glBufferStorage BufferStorage}.  */
	inline static public var GL_SPARSE_STORAGE_BIT_ARB:Int = 1024;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetDoublev, GetFloatv, GetIntegerv, and GetInteger64v.  */
	inline static public var GL_SPARSE_BUFFER_PAGE_SIZE_ARB:Int = 33528;
/** Function address.  */
	public var BufferPageCommitmentARB:haxe.Int64;
/** Function address.  */
	public var NamedBufferPageCommitmentEXT:haxe.Int64;
/** Function address.  */
	public var NamedBufferPageCommitmentARB:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Direct-state-access version of {@link #glBufferPageCommitmentARB BufferPageCommitmentARB}.
 *
 * @param buffer the buffer object
 * @param offset the region offset. Must be an integer multiple of the implementation dependent constant {@link #GL_SPARSE_BUFFER_PAGE_SIZE_ARB SPARSE_BUFFER_PAGE_SIZE_ARB}.
 * @param size   the data size. must either be a multiple of {@link #GL_SPARSE_BUFFER_PAGE_SIZE_ARB SPARSE_BUFFER_PAGE_SIZE_ARB}, or extend to the end of the buffer's data store.
 * @param commit the commit state
 */
	static public function glNamedBufferPageCommitmentEXT(buffer:Int,offset:haxe.Int64,size:haxe.Int64,commit:Bool):Void;
/**
 * Direct-state-access version of {@link #glBufferPageCommitmentARB BufferPageCommitmentARB}.
 *
 * @param buffer the buffer object
 * @param offset the region offset. Must be an integer multiple of the implementation dependent constant {@link #GL_SPARSE_BUFFER_PAGE_SIZE_ARB SPARSE_BUFFER_PAGE_SIZE_ARB}.
 * @param size   the data size. must either be a multiple of {@link #GL_SPARSE_BUFFER_PAGE_SIZE_ARB SPARSE_BUFFER_PAGE_SIZE_ARB}, or extend to the end of the buffer's data store.
 * @param commit the commit state
 */
	static public function glNamedBufferPageCommitmentARB(buffer:Int,offset:haxe.Int64,size:haxe.Int64,commit:Bool):Void;
/** Returns the {@link ARBSparseBuffer} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBSparseBuffer;
/**
 * Commit and de-commits regions of sparse buffer storage.
 *
 * @param target buffer object target. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param offset the region offset. Must be an integer multiple of the implementation dependent constant {@link #GL_SPARSE_BUFFER_PAGE_SIZE_ARB SPARSE_BUFFER_PAGE_SIZE_ARB}.
 * @param size   the data size. must either be a multiple of {@link #GL_SPARSE_BUFFER_PAGE_SIZE_ARB SPARSE_BUFFER_PAGE_SIZE_ARB}, or extend to the end of the buffer's data store.
 * @param commit If true, then pages contained in the specified range become committed and become physically backed. If false, then physical storage associated with
 *               the data store in the specified region may be freed and those pages become uncommitted. Newly committed pages have undefined content. However,
 *               redundantly committing pages does not alter their content.
 */
	static public function glBufferPageCommitmentARB(target:Int,offset:haxe.Int64,size:haxe.Int64,commit:Bool):Void;
/** JNI method for {@link #glNamedBufferPageCommitmentEXT NamedBufferPageCommitmentEXT}  */
	static public function nglNamedBufferPageCommitmentEXT(buffer:Int,offset:haxe.Int64,size:haxe.Int64,commit:Bool,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glNamedBufferPageCommitmentARB NamedBufferPageCommitmentARB}  */
	static public function nglNamedBufferPageCommitmentARB(buffer:Int,offset:haxe.Int64,size:haxe.Int64,commit:Bool,__functionAddress:haxe.Int64):Void;
/** JNI method for {@link #glBufferPageCommitmentARB BufferPageCommitmentARB}  */
	static public function nglBufferPageCommitmentARB(target:Int,offset:haxe.Int64,size:haxe.Int64,commit:Bool,__functionAddress:haxe.Int64):Void;

}
