package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.ARBClearBufferObject")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/ARB/clear_buffer_object.txt">ARB_clear_buffer_object</a> extension.
 * 
 * <p>Buffer objects are fundamental to the operation of OpenGL. Buffers are used as a source of data for vertices and indices, read through buffer textures
 * in shaders, used to transfer texture and image data into and out of textures and framebuffers, and may be written to by operations such as transform
 * feedback. OpenGL contains mechanisms to copy sections of buffers from one to another, but it has no mechanism to initialize the content of a buffer to a
 * known value. In effect, it has {@code memcpy}, but not {@code memset}.</p>
 * 
 * <p>This extension adds such a mechanism and has several use cases. Examples include clearing a pixel unpack buffer before transferring data to a texture or
 * resetting buffer data to a known value before sparse updates through shader image stores or transform feedback.</p>
 * 
 * <p>Requires {@link GL15 OpenGL 1.5}. Promoted to core in {@link GL43 OpenGL 4.3}.</p>
 */
extern class ARBClearBufferObject 
{
/** Function address.  */
	public var ClearBufferData:haxe.Int64;
/** Function address.  */
	public var ClearBufferSubData:haxe.Int64;
/** Function address.  */
	public var ClearNamedBufferDataEXT:haxe.Int64;
/** Function address.  */
	public var ClearNamedBufferSubDataEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * Fills a buffer object's data store with a fixed value.
 *
 * @param target         the target of the operation. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param internalformat the internal format with which the data will be stored in the buffer object
 * @param format         the format of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type           the type of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data           buffer containing the data to be used as the source of the constant fill value.
 *                       The elements of data are converted by the GL into the format specified by internalformat,
 *                       and then used to fill the specified range of the destination buffer.
 *                       If data is {@code NULL}, then it is ignored and the sub-range of the buffer is filled with zeros.
 */
/** FloatBuffer version of: {@link #glClearBufferData ClearBufferData}  */
/** IntBuffer version of: {@link #glClearBufferData ClearBufferData}  */
/** ShortBuffer version of: {@link #glClearBufferData ClearBufferData}  */
	static public function glClearBufferData(target:Int,internalformat:Int,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/**
 * DSA version of {@link #glClearBufferData ClearBufferData}.
 *
 * @param buffer         the buffer object to clear
 * @param internalformat the internal format with which the data will be stored in the buffer object
 * @param format         the format of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type           the type of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data           buffer containing the data to be used as the source of the constant fill value.
 *                       The elements of data are converted by the GL into the format specified by internalformat,
 *                       and then used to fill the specified range of the destination buffer.
 *                       If data is {@code NULL}, then it is ignored and the sub-range of the buffer is filled with zeros.
 */
/** FloatBuffer version of: {@link #glClearNamedBufferDataEXT ClearNamedBufferDataEXT}  */
/** IntBuffer version of: {@link #glClearNamedBufferDataEXT ClearNamedBufferDataEXT}  */
/** ShortBuffer version of: {@link #glClearNamedBufferDataEXT ClearNamedBufferDataEXT}  */
	static public function glClearNamedBufferDataEXT(buffer:Int,internalformat:Int,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (buffer:Int,internalformat:Int,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (buffer:Int,internalformat:Int,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (buffer:Int,internalformat:Int,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/** Unsafe version of {@link #glClearNamedBufferSubDataEXT ClearNamedBufferSubDataEXT}  */
/** JNI method for {@link #glClearNamedBufferSubDataEXT ClearNamedBufferSubDataEXT}  */
	static public function nglClearNamedBufferSubDataEXT(buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:haxe.Int64):Void {})
/** Unsafe version of {@link #glClearBufferData ClearBufferData}  */
	static public function nglClearBufferData(target:Int,internalformat:Int,format:Int,type:Int,data:haxe.Int64):Void;
/** Unsafe version of {@link #glClearBufferSubData ClearBufferSubData}  */
	static public function nglClearBufferSubData(target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:haxe.Int64):Void;
/**
 * DSA version of {@link #glClearBufferSubData ClearBufferSubData}.
 *
 * @param buffer         the buffer object to clear
 * @param internalformat the internal format with which the data will be stored in the buffer object
 * @param offset         the offset, in basic machine units into the buffer object's data store at which to start filling
 * @param size           the size, in basic machine units of the range of the data store to fill
 * @param format         the format of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type           the type of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data           buffer containing the data to be used as the source of the constant fill value.
 *                       The elements of data are converted by the GL into the format specified by internalformat,
 *                       and then used to fill the specified range of the destination buffer.
 *                       If data is {@code NULL}, then it is ignored and the sub-range of the buffer is filled with zeros.
 */
/** FloatBuffer version of: {@link #glClearNamedBufferSubDataEXT ClearNamedBufferSubDataEXT}  */
/** IntBuffer version of: {@link #glClearNamedBufferSubDataEXT ClearNamedBufferSubDataEXT}  */
/** ShortBuffer version of: {@link #glClearNamedBufferSubDataEXT ClearNamedBufferSubDataEXT}  */
	static public function glClearNamedBufferSubDataEXT(buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (buffer:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/**
 * Fills all or part of buffer object's data store with a fixed value.
 *
 * @param target         the target of the operation. One of:<br>{@link GL15#GL_ARRAY_BUFFER ARRAY_BUFFER}, {@link GL15#GL_ELEMENT_ARRAY_BUFFER ELEMENT_ARRAY_BUFFER}, {@link GL21#GL_PIXEL_PACK_BUFFER PIXEL_PACK_BUFFER}, {@link GL21#GL_PIXEL_UNPACK_BUFFER PIXEL_UNPACK_BUFFER}, {@link GL30#GL_TRANSFORM_FEEDBACK_BUFFER TRANSFORM_FEEDBACK_BUFFER}, {@link GL31#GL_UNIFORM_BUFFER UNIFORM_BUFFER}, {@link GL31#GL_TEXTURE_BUFFER TEXTURE_BUFFER}, {@link GL31#GL_COPY_READ_BUFFER COPY_READ_BUFFER}, {@link GL31#GL_COPY_WRITE_BUFFER COPY_WRITE_BUFFER}, {@link GL40#GL_DRAW_INDIRECT_BUFFER DRAW_INDIRECT_BUFFER}, {@link GL42#GL_ATOMIC_COUNTER_BUFFER ATOMIC_COUNTER_BUFFER}, {@link GL43#GL_DISPATCH_INDIRECT_BUFFER DISPATCH_INDIRECT_BUFFER}, {@link GL43#GL_SHADER_STORAGE_BUFFER SHADER_STORAGE_BUFFER}, {@link ARBIndirectParameters#GL_PARAMETER_BUFFER_ARB PARAMETER_BUFFER_ARB}
 * @param internalformat the internal format with which the data will be stored in the buffer object
 * @param offset         the offset, in basic machine units into the buffer object's data store at which to start filling
 * @param size           the size, in basic machine units of the range of the data store to fill
 * @param format         the format of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_STENCIL_INDEX STENCIL_INDEX}, {@link GL11#GL_DEPTH_COMPONENT DEPTH_COMPONENT}, {@link GL30#GL_DEPTH_STENCIL DEPTH_STENCIL}, {@link GL11#GL_RED RED}, {@link GL11#GL_GREEN GREEN}, {@link GL11#GL_BLUE BLUE}, {@link GL11#GL_ALPHA ALPHA}, {@link GL30#GL_RG RG}, {@link GL11#GL_RGB RGB}, {@link GL11#GL_RGBA RGBA}, {@link GL12#GL_BGR BGR}, {@link GL12#GL_BGRA BGRA}, {@link GL11#GL_LUMINANCE LUMINANCE}, {@link GL11#GL_LUMINANCE_ALPHA LUMINANCE_ALPHA}, {@link GL30#GL_RED_INTEGER RED_INTEGER}, {@link GL30#GL_GREEN_INTEGER GREEN_INTEGER}, {@link GL30#GL_BLUE_INTEGER BLUE_INTEGER}, {@link GL30#GL_ALPHA_INTEGER ALPHA_INTEGER}, {@link GL30#GL_RG_INTEGER RG_INTEGER}, {@link GL30#GL_RGB_INTEGER RGB_INTEGER}, {@link GL30#GL_RGBA_INTEGER RGBA_INTEGER}, {@link GL30#GL_BGR_INTEGER BGR_INTEGER}, {@link GL30#GL_BGRA_INTEGER BGRA_INTEGER}
 * @param type           the type of the data in memory addressed by {@code data}. One of:<br>{@link GL11#GL_UNSIGNED_BYTE UNSIGNED_BYTE}, {@link GL11#GL_BYTE BYTE}, {@link GL11#GL_UNSIGNED_SHORT UNSIGNED_SHORT}, {@link GL11#GL_SHORT SHORT}, {@link GL11#GL_UNSIGNED_INT UNSIGNED_INT}, {@link GL11#GL_INT INT}, {@link GL30#GL_HALF_FLOAT HALF_FLOAT}, {@link GL11#GL_FLOAT FLOAT}, {@link GL12#GL_UNSIGNED_BYTE_3_3_2 UNSIGNED_BYTE_3_3_2}, {@link GL12#GL_UNSIGNED_BYTE_2_3_3_REV UNSIGNED_BYTE_2_3_3_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5 UNSIGNED_SHORT_5_6_5}, {@link GL12#GL_UNSIGNED_SHORT_5_6_5_REV UNSIGNED_SHORT_5_6_5_REV}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4 UNSIGNED_SHORT_4_4_4_4}, {@link GL12#GL_UNSIGNED_SHORT_4_4_4_4_REV UNSIGNED_SHORT_4_4_4_4_REV}, {@link GL12#GL_UNSIGNED_SHORT_5_5_5_1 UNSIGNED_SHORT_5_5_5_1}, {@link GL12#GL_UNSIGNED_SHORT_1_5_5_5_REV UNSIGNED_SHORT_1_5_5_5_REV}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8 UNSIGNED_INT_8_8_8_8}, {@link GL12#GL_UNSIGNED_INT_8_8_8_8_REV UNSIGNED_INT_8_8_8_8_REV}, {@link GL12#GL_UNSIGNED_INT_10_10_10_2 UNSIGNED_INT_10_10_10_2}, {@link GL12#GL_UNSIGNED_INT_2_10_10_10_REV UNSIGNED_INT_2_10_10_10_REV}, {@link GL30#GL_UNSIGNED_INT_24_8 UNSIGNED_INT_24_8}, {@link GL30#GL_UNSIGNED_INT_10F_11F_11F_REV UNSIGNED_INT_10F_11F_11F_REV}, {@link GL30#GL_UNSIGNED_INT_5_9_9_9_REV UNSIGNED_INT_5_9_9_9_REV}, {@link GL30#GL_FLOAT_32_UNSIGNED_INT_24_8_REV FLOAT_32_UNSIGNED_INT_24_8_REV}, {@link GL11#GL_BITMAP BITMAP}
 * @param data           buffer containing the data to be used as the source of the constant fill value.
 *                       The elements of data are converted by the GL into the format specified by internalformat,
 *                       and then used to fill the specified range of the destination buffer.
 *                       If data is {@code NULL}, then it is ignored and the sub-range of the buffer is filled with zeros.
 */
/** FloatBuffer version of: {@link #glClearBufferSubData ClearBufferSubData}  */
/** IntBuffer version of: {@link #glClearBufferSubData ClearBufferSubData}  */
/** ShortBuffer version of: {@link #glClearBufferSubData ClearBufferSubData}  */
	static public function glClearBufferSubData(target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.ShortBuffer):Void;
	@:overload(function (target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.ByteBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.FloatBuffer):Void {})
	@:overload(function (target:Int,internalformat:Int,offset:haxe.Int64,size:haxe.Int64,format:Int,type:Int,data:java.nio.IntBuffer):Void {})
/** Returns the {@link ARBClearBufferObject} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.ARBClearBufferObject;
/** Unsafe version of {@link #glClearNamedBufferDataEXT ClearNamedBufferDataEXT}  */
/** JNI method for {@link #glClearNamedBufferDataEXT ClearNamedBufferDataEXT}  */
	static public function nglClearNamedBufferDataEXT(buffer:Int,internalformat:Int,format:Int,type:Int,data:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,internalformat:Int,format:Int,type:Int,data:haxe.Int64):Void {})

}
