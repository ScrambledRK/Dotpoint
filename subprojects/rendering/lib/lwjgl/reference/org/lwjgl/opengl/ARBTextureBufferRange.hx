package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBTextureBufferRange")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/texture_buffer_range.txt">ARB_texture_buffer_range</a> extension.
 * 
 * <p>{@link ARBTextureBufferObject ARB_texture_buffer_object} (which was promoted to core in OpenGL 3.1) introduced the ability to attach the data store of a buffer object to a buffer
 * texture and access it from shaders. The extension only allows the entire store of the buffer object to the texture. This extension expands on this and
 * allows a sub-range of the buffer's data store to be attached to a texture. This can be used, for example, to allow multiple buffer textures to be backed
 * by independent sub-ranges of the same buffer object, or for different sub-ranges of a single buffer object to be used for different purposes.</p>
 * 
 * <p>Requires {@link GL15 OpenGL 1.5}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBTextureBufferRange 
{
/** Accepted by the {@code pname} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_BUFFER_OFFSET:Int = 37277;
/** Accepted by the {@code pname} parameter of GetTexLevelParameter.  */
	inline static public var GL_TEXTURE_BUFFER_SIZE:Int = 37278;
/** Accepted by the {@code pname} parameter of GetBooleanv, GetIntegerv, GetFloatv, and GetDoublev.  */
	inline static public var GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT:Int = 37279;
/** Function address.  */
	public var TexBufferRange:haxe.Int64;
/** Function address.  */
	public var TextureBufferRangeEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** JNI method for {@link #glTextureBufferRangeEXT TextureBufferRangeEXT}  */
	static public function nglTextureBufferRangeEXT(texture:Int,target:Int,internalformat:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64,__functionAddress:haxe.Int64):Void;
/**
 * DSA version of {@link #glTexBufferRange TexBufferRange}.
 *
 * @param texture        the texture object
 * @param target         the target of the operation. Must be:<br>{@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}
 * @param internalformat the internal format of the data in the store belonging to {@code buffer}
 * @param buffer         the name of the buffer object whose storage to attach to the active buffer texture
 * @param offset         the offset of the start of the range of the buffer's data store to attach
 * @param size           the size of the range of the buffer's data store to attach
 */
	static public function glTextureBufferRangeEXT(texture:Int,target:Int,internalformat:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64):Void;
/** Returns the {@link ARBTextureBufferRange} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBTextureBufferRange;
/**
 * Binds a range of a buffer's data store to a buffer texture.
 *
 * @param target         the target of the operation. Must be:<br>{@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}
 * @param internalformat the internal format of the data in the store belonging to {@code buffer}
 * @param buffer         the name of the buffer object whose storage to attach to the active buffer texture
 * @param offset         the offset of the start of the range of the buffer's data store to attach
 * @param size           the size of the range of the buffer's data store to attach
 */
	static public function glTexBufferRange(target:Int,internalformat:Int,buffer:Int,offset:haxe.Int64,size:haxe.Int64):Void;

}
