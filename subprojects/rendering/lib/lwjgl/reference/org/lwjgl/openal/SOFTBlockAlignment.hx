package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.SOFTBlockAlignment")
@:final
/**
 * Native bindings to the <a href="http://kcat.strangesoft.net/openal-extensions/SOFT_block_alignment.txt">SOFT_block_alignment</a> extension.
 * 
 * <p>This extension provides a mechanism for specifying block alignment properties for sample data. This is useful for, though not strictly limited to, ADPCM
 * compression where the block alignment is specified in the media file header instead of the data stream, and controls the decoding process.</p>
 */
extern class SOFTBlockAlignment 
{
/** Accepted by the {@code paramName} parameter of alBufferi, alBufferiv, alGetBufferi, and alGetBufferiv.  */
	inline static public var AL_UNPACK_BLOCK_ALIGNMENT_SOFT:Int = 8204;
/** Accepted by the {@code paramName} parameter of alBufferi, alBufferiv, alGetBufferi, and alGetBufferiv.  */
	inline static public var AL_PACK_BLOCK_ALIGNMENT_SOFT:Int = 8205;

}
