package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTBufferSubData")
@:final
/** bindings to AL_SOFT_buffer_sub_data extension.  */
extern class SOFTBufferSubData 
{
/** Accepted by the {@code paramName} parameter of alGetSourceiv and alGetSourcefv.  */
	inline static public var AL_BYTE_RW_OFFSETS_SOFT:Int = 4145;
/** Accepted by the {@code paramName} parameter of alGetSourceiv and alGetSourcefv.  */
	inline static public var AL_SAMPLE_RW_OFFSETS_SOFT:Int = 4146;
/** Function address.  */
	public var BufferSubDataSOFT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/**
 * To update a section of buffered sample data, use the function alBufferSubDataSOFT.
 * The named {@code buffer} may be attached to a source (either queued or by the
 * AL_BUFFER property), and the source does not need to be stopped, paused,
 * or in an initial state to be modified.
 * 
 * <p>The {@code offset} value is the number of bytes from the start of the original
 * data, and {@code length} is the number of bytes of the original data, to modify.
 * If either {@code offset} or {@code length} are negative, or if the sum of {@code offset} and
 * {@code length} reaches beyond the end of the buffer, an AL_INVALID_VALUE error
 * is generated. For compressed formats, {@code length} and {@code offset} must be block
 * aligned. Complex compressed formats (such as those with no constant block
 * alignment), may not be modified and will result in an AL_INVALID_ENUM
 * error.</p>
 * 
 * <p>The specified {@code format} is the sample format of the passed {@code data}. The
 * passed format must exactly match the format passed to alBufferData, or an
 * AL_INVALID_ENUM error is generated.</p>
 * 
 * <p>When modifying a playing source's buffer, an application must take care to
 * not modify the section that is currently being played. The read-only
 * source attributes</p>
 * 
 * <p>AL_BYTE_RW_OFFSETS_SOFT
 * AL_SAMPLE_RW_OFFSETS_SOFT</p>
 * 
 * <p>may be used to retrieve the read and write cursor offsets. Behavior is
 * undefined if an attempt is made to modify buffer data between the read and
 * write offsets.</p>
 *
 * @param buffer ID of the buffer to modify
 * @param format sample format of the passed data
 * @param data   existing buffer data to write to
 * @param offset number of bytes from the start of the original data
 * @param length number of bytes of the original data, to modify
 */
	static public function alBufferSubDataSOFT(buffer:Int,format:Int,data:java.nio.ByteBuffer,offset:Int,length:Int):Void;
/** Returns the {@link SOFTBufferSubData} instance for the current context.  */
	static public function getInstance():org.lwjgl.openal.SOFTBufferSubData;
/** Unsafe version of {@link #alBufferSubDataSOFT BufferSubDataSOFT}  */
/** JNI method for {@link #alBufferSubDataSOFT BufferSubDataSOFT}  */
	static public function nalBufferSubDataSOFT(buffer:Int,format:Int,data:haxe.Int64,offset:Int,length:Int,__functionAddress:haxe.Int64):Void;
	@:overload(function (buffer:Int,format:Int,data:haxe.Int64,offset:Int,length:Int):Void {})

}
