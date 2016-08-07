package org.lwjgl.stb;

import java.StdTypes;
@:native("org.lwjgl.stb.STBVorbis")
@:final
/**
 * Native bindings to stb_vorbis.c from the <a href="https://github.com/nothings/stb">stb library</a>.
 * 
 * <p>Ogg Vorbis audio decoder.</p>
 * 
 * <h3>Limitations</h3>
 * <ul>
 * <li>seeking not supported except manually via PUSHDATA api</li>
 * <li>floor 0 not supported (used in old ogg vorbis files pre-2004)</li>
 * <li>lossless sample-truncation at beginning ignored</li>
 * <li>cannot concatenate multiple vorbis streams</li>
 * <li>sample positions are 32-bit, limiting seekable 192Khz files to around 6 hours (Ogg supports 64-bit)</li>
 * </ul>
 * 
 * <h3>THREAD SAFETY</h3>
 * 
 * <p>Individual stb_vorbis* handles are not thread-safe; you cannot decode from them from multiple threads at the same time. However, you can have multiple
 * {@code stb_vorbis*} handles and decode from them independently in multiple threads.</p>
 * 
 * <h3>PUSHDATA API</h3>
 * 
 * <p>This API allows you to get blocks of data from any source and hand them to stb_vorbis. you have to buffer them; stb_vorbis will tell you how much it
 * used, and you have to give it the rest next time; and stb_vorbis may not have enough data to work with and you will need to give it the same data
 * again PLUS more. Note that the Vorbis specification does not bound the size of an individual frame.</p>
 * 
 * <h3>PULLING INPUT API</h3>
 * 
 * <p>This API assumes stb_vorbis is allowed to pull data from a source -- either a block of memory containing the _entire_ vorbis stream, or a FILE * that
 * you or it create, or possibly some other reading mechanism if you go modify the source to replace the FILE * case with some kind of callback to your
 * code. (But if you don't support seeking, you may just want to go ahead and use pushdata.)</p>
 */
extern class STBVorbis 
{
/** Error code.  */
	inline static public var VORBIS_no_error:Int = 0;
/** Error code.  */
	inline static public var VORBISneed_more_data:Int = 1;
/** Error code.  */
	inline static public var VORBISinvalid_api_mixing:Int = 2;
/** Error code.  */
	inline static public var VORBISoutofmem:Int = 3;
/** Error code.  */
	inline static public var VORBISfeature_not_supported:Int = 4;
/** Error code.  */
	inline static public var VORBIStoo_many_channels:Int = 5;
/** Error code.  */
	inline static public var VORBISfile_open_failure:Int = 6;
/** Error code.  */
	inline static public var VORBISseek_without_length:Int = 7;
/** Error code.  */
	inline static public var VORBISunexpected_eof:Int = 10;
/** Error code.  */
	inline static public var VORBISseek_invalid:Int = 11;
/** Error code.  */
	inline static public var VORBISinvalid_setup:Int = 20;
/** Error code.  */
	inline static public var VORBISinvalid_stream:Int = 21;
/** Error code.  */
	inline static public var VORBISmissing_capture_pattern:Int = 30;
/** Error code.  */
	inline static public var VORBISinvalid_stream_structure_version:Int = 31;
/** Error code.  */
	inline static public var VORBIScontinued_packet_flag_invalid:Int = 32;
/** Error code.  */
	inline static public var VORBISincorrect_stream_serial_number:Int = 33;
/** Error code.  */
	inline static public var VORBISinvalid_first_page:Int = 34;
/** Error code.  */
	inline static public var VORBISbad_packet_type:Int = 35;
/** Error code.  */
	inline static public var VORBIScant_find_last_page:Int = 36;
/** Error code.  */
	inline static public var VORBISseek_failed:Int = 37;
/** JNI method for {@link #stb_vorbis_get_error get_error}  */
	static public function nstb_vorbis_get_error(f:haxe.Int64):Int;
/**
 * <h3>NOT WORKING YET</h3>
 * 
 * <p>Seeks in the Vorbis file to (approximately) {@code sample_number}. After calling seek_frame(), the next call to {@code get_frame_*()} will include the
 * specified sample.</p>
 *
 * @param f             an ogg vorbis file decoder
 * @param sample_number the sample index
 */
	static public function stb_vorbis_seek_frame(f:haxe.Int64,sample_number:Int):Int;
/** JNI method for {@link #stb_vorbis_get_samples_short_interleaved get_samples_short_interleaved}  */
	static public function nstb_vorbis_get_samples_short_interleaved(f:haxe.Int64,channels:Int,buffer:haxe.Int64,num_shorts:Int):Int;
/** JNI method for {@link #stb_vorbis_decode_frame_pushdata decode_frame_pushdata}  */
	static public function nstb_vorbis_decode_frame_pushdata(f:haxe.Int64,datablock:haxe.Int64,datablock_length_in_bytes:Int,channels:haxe.Int64,output:haxe.Int64,samples:haxe.Int64):Int;
/** Alternative version of: {@link #stb_vorbis_get_frame_short get_frame_short}  */
/**
 * Decodes the next frame and return the number of samples per channel. The data is coerced to the number of channels you request according to the channel
 * coercion rules (see below). You must pass in the size of your buffer(s) so that stb_vorbis will not overwrite the end of the buffer. The maximum buffer
 * size needed can be gotten from {@link #stb_vorbis_get_info get_info}; however, the Vorbis I specification implies an absolute maximum of 4096 samples per channel.
 * 
 * <h3>Channel coercion rules</h3>
 * 
 * <p>Let M be the number of channels requested, and N the number of channels present, and Cn be the nth channel; let stereo L be the sum of all L and center
 * channels, and stereo R be the sum of all R and center channels (channel assignment from the vorbis spec).
 * <pre><code style="font-family: monospace">
 * M    N      output
 * 1    k      sum(Ck) for all k
 * 2    *      stereo L, stereo R
 * k    l      k > l, the first l channels, then 0s
 * k    l      k <= l, the first k channels</code></pre>
 * Note that this is not <b>good</b> surround etc. mixing at all! It's just so you get something useful.</p>
 *
 * @param f           an ogg vorbis file decoder
 * @param num_c       the number of channels
 * @param buffer      the output buffer, an array of pointers with length {@code num_c}, each pointing to a short array with length {@code num_samples}
 * @param num_samples the number of samples
 *
 * @return the number of samples per channel
 */
	static public function stb_vorbis_get_frame_short(f:haxe.Int64,num_c:Int,buffer:java.nio.ByteBuffer,num_samples:Int):Int;
	@:overload(function (f:haxe.Int64,buffer:org.lwjgl.PointerBuffer,num_samples:Int):Int {})
/**
 * Returns the current seek point within the file, or offset from the beginning of the memory buffer. In pushdata mode it returns 0.
 *
 * @param f an ogg vorbis file decoder
 */
	static public function stb_vorbis_get_file_offset(f:haxe.Int64):Int;
/** JNI method for {@link #stb_vorbis_seek seek}  */
	static public function nstb_vorbis_seek(f:haxe.Int64,sample_number:Int):Int;
/**
 * This function is equivalent to {@link #stb_vorbis_seek seek}(f,0), but it actually works.
 *
 * @param f an ogg vorbis file decoder
 */
	static public function stb_vorbis_seek_start(f:haxe.Int64):Void;
/** Alternative version of: {@link #stb_vorbis_decode_frame_pushdata decode_frame_pushdata}  */
/**
 * Decodes a frame of audio sample data if possible from the passed-in data block.
 * 
 * <p>Note that on resynch, stb_vorbis will rarely consume all of the buffer, instead only {@code datablock_length_in_bytes-3} or less. This is because it
 * wants to avoid missing parts of a page header if they cross a datablock boundary, without writing state-machiney code to record a partial detection.</p>
 * 
 * <p>The number of channels returned are stored in *channels (which can be NULL -- it is always the same as the number of channels reported by {@link #stb_vorbis_get_info get_info}).
 * {@code *output} will contain an array of {@code float*} buffers, one per channel. In other words, {@code (*output)[0][0]} contains the first sample
 * from the first channel, and {@code (*output)[1][0]} contains the first sample from the second channel.</p>
 *
 * @param f                         an ogg vorbis file decoder
 * @param datablock                 
 * @param datablock_length_in_bytes 
 * @param channels                  place to write number of {@code float *} buffers
 * @param output                    place to write float ** array of float * buffers
 * @param samples                   place to write number of output samples
 *
 * @return the number of bytes we used from datablock. Possible cases:
 *         <ul>
 *         <li>0 bytes used, 0 samples output (need more data)</li>
 *         <li>N bytes used, 0 samples output (resynching the stream, keep going)</li>
 *         <li>N bytes used, M samples output (one frame of data)</li>
 *         </ul>
 *         Note that after opening a file, you will ALWAYS get one N-bytes,0-sample frame, because Vorbis always "discards" the first frame.
 */
	static public function stb_vorbis_decode_frame_pushdata(f:haxe.Int64,datablock:java.nio.ByteBuffer,datablock_length_in_bytes:Int,channels:java.nio.ByteBuffer,output:java.nio.ByteBuffer,samples:java.nio.ByteBuffer):Int;
	@:overload(function (f:haxe.Int64,datablock:java.nio.ByteBuffer,channels:java.nio.IntBuffer,output:org.lwjgl.PointerBuffer,samples:java.nio.IntBuffer):Int {})
/** JNI method for {@link #stb_vorbis_open_filename open_filename}  */
	static public function nstb_vorbis_open_filename(filename:haxe.Int64,error:haxe.Int64,alloc_buffer:haxe.Int64):haxe.Int64;
/** JNI method for {@link #stb_vorbis_stream_length_in_seconds stream_length_in_seconds}  */
	static public function nstb_vorbis_stream_length_in_seconds(f:haxe.Int64):Float;
/** JNI method for {@link #stb_vorbis_decode_memory decode_memory}  */
	static public function nstb_vorbis_decode_memory(mem:haxe.Int64,len:Int,channels:haxe.Int64,sample_rate:haxe.Int64,output:haxe.Int64):Int;
/** JNI method for {@link #stb_vorbis_get_samples_float get_samples_float}  */
	static public function nstb_vorbis_get_samples_float(f:haxe.Int64,channels:Int,buffer:haxe.Int64,num_samples:Int):Int;
/** JNI method for {@link #stb_vorbis_open_memory open_memory}  */
	static public function nstb_vorbis_open_memory(mem:haxe.Int64,len:Int,error:haxe.Int64,alloc_buffer:haxe.Int64):haxe.Int64;
/**
 * Decodes the next frame and return the number of samples.
 * 
 * <p>You generally should not intermix calls to {@code stb_vorbis_get_frame_*()} and {@code stb_vorbis_get_samples_*()}, since the latter calls the former.</p>
 *
 * @param f        an ogg vorbis file decoder
 * @param channels returns the number of channels. Can be {@code NULL} -- it is always the same as the number of channels reported by {@link #stb_vorbis_get_info get_info}.
 * @param output   returns a pointer to an array of float* buffers, one per channel. These outputs will be overwritten on the next call to
 *                 {@code stb_vorbis_get_frame_*}.
 *
 * @return the number of samples per channel
 */
/** Alternative version of: {@link #stb_vorbis_get_frame_float get_frame_float}  */
	static public function stb_vorbis_get_frame_float(f:haxe.Int64,channels:java.nio.IntBuffer,output:org.lwjgl.PointerBuffer):Int;
	@:overload(function (f:haxe.Int64,channels:java.nio.ByteBuffer,output:java.nio.ByteBuffer):Int {})
/** Alternative version of: {@link #stb_vorbis_get_samples_float get_samples_float}  */
/**
 * Gets {@code num_samples} samples, not necessarily on a frame boundary -- this requires buffering so you have to supply the buffers. DOES NOT APPLY THE
 * COERCION RULES.
 *
 * @param f           an ogg vorbis file decoder
 * @param channels    the number of channels to decode
 * @param buffer      the output buffer, an array of pointers with length {@code channels}, each pointing to a float array with length {@code num_samples}
 * @param num_samples the number of samples to decode
 *
 * @return the number of samples stored per channel; it may be less than requested at the end of the file. If there are no more samples in the file, returns 0.
 */
	static public function stb_vorbis_get_samples_float(f:haxe.Int64,channels:Int,buffer:java.nio.ByteBuffer,num_samples:Int):Int;
	@:overload(function (f:haxe.Int64,buffer:org.lwjgl.PointerBuffer,num_samples:Int):Int {})
/**
 * Returns the last error detected (clears it, too).
 *
 * @param f an ogg vorbis file decoder
 */
	static public function stb_vorbis_get_error(f:haxe.Int64):Int;
/**
 * Inform stb_vorbis that your next datablock will not be contiguous with previous ones (e.g. you've seeked in the data); future attempts to decode frames
 * will cause stb_vorbis to resynchronize (as noted above), and once it sees a valid Ogg page (typically 4-8KB, as large as 64KB), it will begin decoding
 * the <b>next</b> frame.
 * 
 * <p>If you want to seek using pushdata, you need to seek in your file, then call stb_vorbis_flush_pushdata(), then start calling decoding, then once
 * decoding is returning you data, call {@link #stb_vorbis_get_sample_offset get_sample_offset}, and if you don't like the result, seek your file again and repeat.</p>
 *
 * @param f an ogg vorbis file decoder
 */
	static public function stb_vorbis_flush_pushdata(f:haxe.Int64):Void;
/** JNI method for {@link #stb_vorbis_get_frame_float get_frame_float}  */
	static public function nstb_vorbis_get_frame_float(f:haxe.Int64,channels:haxe.Int64,output:haxe.Int64):Int;
/** JNI method for {@link #stb_vorbis_get_samples_float_interleaved get_samples_float_interleaved}  */
	static public function nstb_vorbis_get_samples_float_interleaved(f:haxe.Int64,channels:Int,buffer:haxe.Int64,num_floats:Int):Int;
/**
 * Returns the offset (in samples) from the beginning of the file that will be returned by the next decode, if it is known, or -1 otherwise. After a
 * {@link #stb_vorbis_flush_pushdata flush_pushdata} call, this may take a while before it becomes valid again.
 * 
 * <p>NOT WORKING YET after a seek with PULLDATA API.</p>
 *
 * @param f an ogg vorbis file decoder
 */
	static public function stb_vorbis_get_sample_offset(f:haxe.Int64):Int;
/**
 * Closes an ogg vorbis file and free all memory in use
 *
 * @param f an ogg vorbis file decoder
 */
	static public function stb_vorbis_close(f:haxe.Int64):Void;
/** JNI method for {@link #stb_vorbis_open_pushdata open_pushdata}  */
	static public function nstb_vorbis_open_pushdata(datablock:haxe.Int64,datablock_length_in_bytes:Int,datablock_memory_consumed_in_bytes:haxe.Int64,error:haxe.Int64,alloc_buffer:haxe.Int64):haxe.Int64;
/** JNI method for {@link #stb_vorbis_seek_start seek_start}  */
	static public function nstb_vorbis_seek_start(f:haxe.Int64):Void;
/** JNI method for {@link #stb_vorbis_get_sample_offset get_sample_offset}  */
	static public function nstb_vorbis_get_sample_offset(f:haxe.Int64):Int;
/** Alternative version of: {@link #stb_vorbis_open_memory open_memory}  */
/**
 * Creates an ogg vorbis decoder from an ogg vorbis stream in memory (note this must be the entire stream!).
 *
 * @param mem          the data to decode
 * @param len          the {@code data} length, in bytes
 * @param error        returns an error code
 * @param alloc_buffer an {@link STBVorbisAlloc} struct
 *
 * @return the ogg vorbis decoder. On failure, returns {@code NULL} and sets {@code *error}.
 */
	static public function stb_vorbis_open_memory(mem:java.nio.ByteBuffer,len:Int,error:java.nio.ByteBuffer,alloc_buffer:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (mem:java.nio.ByteBuffer,error:java.nio.IntBuffer,alloc_buffer:java.nio.ByteBuffer):haxe.Int64 {})
/** Alternative version of: {@link #stb_vorbis_get_frame_short_interleaved get_frame_short_interleaved}  */
/**
 * Interleaved version of {@link #stb_vorbis_get_frame_short get_frame_short}.
 * 
 * <p>Note that for interleaved data, you pass in the number of shorts (the size of your array), but the return value is the number of samples per channel,
 * not the total number of samples.</p>
 *
 * @param f          an ogg vorbis file decoder
 * @param num_c      the number of channels
 * @param buffer     the output buffer
 * @param num_shorts the size of {@code buffer}
 *
 * @return the number of samples per channel
 */
	static public function stb_vorbis_get_frame_short_interleaved(f:haxe.Int64,num_c:Int,buffer:java.nio.ByteBuffer,num_shorts:Int):Int;
	@:overload(function (f:haxe.Int64,num_c:Int,buffer:java.nio.ShortBuffer):Int {})
/** JNI method for {@link #stb_vorbis_get_file_offset get_file_offset}  */
	static public function nstb_vorbis_get_file_offset(f:haxe.Int64):Int;
/** JNI method for {@link #stb_vorbis_flush_pushdata flush_pushdata}  */
	static public function nstb_vorbis_flush_pushdata(f:haxe.Int64):Void;
/** JNI method for {@link #stb_vorbis_stream_length_in_samples stream_length_in_samples}  */
	static public function nstb_vorbis_stream_length_in_samples(f:haxe.Int64):Int;
/**
 * Returns the total length of the vorbis stream, in samples.
 *
 * @param f an ogg vorbis file decoder
 */
	static public function stb_vorbis_stream_length_in_seconds(f:haxe.Int64):Float;
/** Alternative version of: {@link #stb_vorbis_get_samples_float_interleaved get_samples_float_interleaved}  */
/**
 * Interleaved version of {@link #stb_vorbis_get_samples_float get_samples_float}.
 *
 * @param f          an ogg vorbis file decoder
 * @param channels   the number of channels
 * @param buffer     the output buffer
 * @param num_floats the size of {@code buffer}
 *
 * @return the number of samples stored per channel; it may be less than requested at the end of the file. If there are no more samples in the file, returns 0.
 */
	static public function stb_vorbis_get_samples_float_interleaved(f:haxe.Int64,channels:Int,buffer:java.nio.ByteBuffer,num_floats:Int):Int;
	@:overload(function (f:haxe.Int64,channels:Int,buffer:java.nio.FloatBuffer):Int {})
/** Alternative version of: {@link #stb_vorbis_open_pushdata open_pushdata}  */
/**
 * Creates a vorbis decoder by passing in the initial data block containing the ogg&vorbis headers (you don't need to do parse them, just provide the
 * first N bytes of the file -- you're told if it's not enough, see below)
 *
 * @param datablock                          the data block containing the ogg vorbis headers
 * @param datablock_length_in_bytes          the length of {@code datablock}, in bytes
 * @param datablock_memory_consumed_in_bytes returns the amount of data parsed/consumed, in bytes
 * @param error                              returns the error code
 * @param alloc_buffer                       an {@link STBVorbisAlloc} struct
 *
 * @return On success, returns an {@code stb_vorbis *}, does not set error, returns the amount of data parsed/consumed on this call in
 *         {@code *datablock_memory_consumed_in_bytes}; On failure, returns {@code NULL} on error and sets {@code *error}, does not change
 *         {@code *datablock_memory_consumed}. If it returns {@code NULL} and {@code *error} is {@link #VORBISneed_more_data need_more_data}, then the input block was incomplete and you need to pass
 *         in a larger block from the start of the file.
 */
	static public function stb_vorbis_open_pushdata(datablock:java.nio.ByteBuffer,datablock_length_in_bytes:Int,datablock_memory_consumed_in_bytes:java.nio.ByteBuffer,error:java.nio.ByteBuffer,alloc_buffer:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (datablock:java.nio.ByteBuffer,datablock_memory_consumed_in_bytes:java.nio.IntBuffer,error:java.nio.IntBuffer,alloc_buffer:java.nio.ByteBuffer):haxe.Int64 {})
/** Alternative version of: {@link #stb_vorbis_get_samples_short_interleaved get_samples_short_interleaved}  */
/**
 * Interleaved version of {@link #stb_vorbis_get_samples_short get_samples_short}.
 *
 * @param f          an ogg vorbis file decoder
 * @param channels   the number of channels
 * @param buffer     the output buffer
 * @param num_shorts the size of {@code buffer}
 *
 * @return the number of samples stored per channel; it may be less than requested at the end of the file. If there are no more samples in the file, returns 0.
 */
	static public function stb_vorbis_get_samples_short_interleaved(f:haxe.Int64,channels:Int,buffer:java.nio.ByteBuffer,num_shorts:Int):Int;
	@:overload(function (f:haxe.Int64,channels:Int,buffer:java.nio.ShortBuffer):Int {})
/** JNI method for {@link #stb_vorbis_decode_filename decode_filename}  */
	static public function nstb_vorbis_decode_filename(filename:haxe.Int64,channels:haxe.Int64,sample_rate:haxe.Int64,output:haxe.Int64):Int;
/** JNI method for {@link #stb_vorbis_close close}  */
	static public function nstb_vorbis_close(f:haxe.Int64):Void;
/** JNI method for {@link #stb_vorbis_seek_frame seek_frame}  */
	static public function nstb_vorbis_seek_frame(f:haxe.Int64,sample_number:Int):Int;
/** JNI method for {@link #stb_vorbis_get_info get_info}  */
	static public function nstb_vorbis_get_info(f:haxe.Int64,__result:haxe.Int64):Void;
/** JNI method for {@link #stb_vorbis_get_frame_short_interleaved get_frame_short_interleaved}  */
	static public function nstb_vorbis_get_frame_short_interleaved(f:haxe.Int64,num_c:Int,buffer:haxe.Int64,num_shorts:Int):Int;
/** JNI method for {@link #stb_vorbis_get_frame_short get_frame_short}  */
	static public function nstb_vorbis_get_frame_short(f:haxe.Int64,num_c:Int,buffer:haxe.Int64,num_samples:Int):Int;
/**
 * Returns the total length of the vorbis stream, in samples.
 *
 * @param f an ogg vorbis file decoder
 */
	static public function stb_vorbis_stream_length_in_samples(f:haxe.Int64):Int;
/**
 * Returns general information about the specified file.
 *
 * @param f an ogg vorbis file decoder
 */
	static public function stb_vorbis_get_info(f:haxe.Int64,__result:java.nio.ByteBuffer):Void;
/** CharSequence version of: {@link #stb_vorbis_decode_filename decode_filename}  */
/** Alternative version of: {@link #stb_vorbis_decode_filename decode_filename}  */
/**
 * Decode an entire file and output the data interleaved into a {@code malloc()ed} buffer stored in {@code *output}. When you're done with it, just
 * {@link MemoryUtil#memFree} the pointer returned in {@code *output}.
 *
 * @param filename    the file name
 * @param channels    returns the number of channels
 * @param sample_rate returns the sample rate
 * @param output      returns a pointer to the decoded data
 *
 * @return the number of samples decoded, or -1 if the file could not be opened or was not an ogg vorbis file
 */
	static public function stb_vorbis_decode_filename(filename:java.nio.ByteBuffer,channels:java.nio.ByteBuffer,sample_rate:java.nio.ByteBuffer,output:java.nio.ByteBuffer):Int;
	@:overload(function (filename:java.lang.CharSequence,channels:java.nio.IntBuffer,sample_rate:java.nio.IntBuffer,output:org.lwjgl.PointerBuffer):Int {})
	@:overload(function (filename:java.nio.ByteBuffer,channels:java.nio.IntBuffer,sample_rate:java.nio.IntBuffer,output:org.lwjgl.PointerBuffer):Int {})
/**
 * <h3>NOT WORKING YET</h3>
 * 
 * <p>Seeks in the Vorbis file to (approximately) {@code sample_number}. After calling stb_vorbis_seek(), the next call to {@code stb_vorbis_get_samples_*}
 * will start with the specified sample.</p>
 *
 * @param f             an ogg vorbis file decoder
 * @param sample_number the sample index
 */
	static public function stb_vorbis_seek(f:haxe.Int64,sample_number:Int):Int;
/** Alternative version of: {@link #stb_vorbis_decode_memory decode_memory}  */
/**
 * In-memory version of {@link #stb_vorbis_decode_filename decode_filename}.
 *
 * @param mem         the data to decode
 * @param len         the {@code data} length, in bytes
 * @param channels    returns the number of channels
 * @param sample_rate returns the sample rate
 * @param output      returns a pointer to the decoded data
 */
	static public function stb_vorbis_decode_memory(mem:java.nio.ByteBuffer,len:Int,channels:java.nio.ByteBuffer,sample_rate:java.nio.ByteBuffer,output:java.nio.ByteBuffer):Int;
	@:overload(function (mem:java.nio.ByteBuffer,channels:java.nio.IntBuffer,sample_rate:java.nio.IntBuffer,output:org.lwjgl.PointerBuffer):Int {})
/** CharSequence version of: {@link #stb_vorbis_open_filename open_filename}  */
/** Alternative version of: {@link #stb_vorbis_open_filename open_filename}  */
/**
 * Creates an ogg vorbis decoder from a file name.
 *
 * @param filename     the file name
 * @param error        returns an error code
 * @param alloc_buffer an {@link STBVorbisAlloc} struct
 *
 * @return the ogg vorbis decoder. On failure, returns {@code NULL} and sets {@code *error}.
 */
	static public function stb_vorbis_open_filename(filename:java.nio.ByteBuffer,error:java.nio.ByteBuffer,alloc_buffer:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (filename:java.lang.CharSequence,error:java.nio.IntBuffer,alloc_buffer:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (filename:java.nio.ByteBuffer,error:java.nio.IntBuffer,alloc_buffer:java.nio.ByteBuffer):haxe.Int64 {})
/** JNI method for {@link #stb_vorbis_get_samples_short get_samples_short}  */
	static public function nstb_vorbis_get_samples_short(f:haxe.Int64,channels:Int,buffer:haxe.Int64,num_samples:Int):Int;
/** Alternative version of: {@link #stb_vorbis_get_samples_short get_samples_short}  */
/**
 * Gets {@code num_samples} samples, not necessarily on a frame boundary -- this requires buffering so you have to supply the buffers. Applies the
 * coercion rules above to produce {@code channels} channels.
 *
 * @param f           an ogg vorbis file decoder
 * @param channels    the number of channels
 * @param buffer      the output buffer, an array of pointers with length {@code channels}, each pointing to a short array with length {@code num_samples}
 * @param num_samples the number of samples
 *
 * @return the number of samples stored per channel; it may be less than requested at the end of the file. If there are no more samples in the file, returns 0.
 */
	static public function stb_vorbis_get_samples_short(f:haxe.Int64,channels:Int,buffer:java.nio.ByteBuffer,num_samples:Int):Int;
	@:overload(function (f:haxe.Int64,buffer:org.lwjgl.PointerBuffer,num_samples:Int):Int {})

}
