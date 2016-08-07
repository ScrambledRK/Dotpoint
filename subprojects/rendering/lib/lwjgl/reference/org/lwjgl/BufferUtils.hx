package org.lwjgl;

import java.StdTypes;
@:native("org.lwjgl.BufferUtils")
@:final
/**
 * <p>This class makes it easy and safe to work with direct buffers. It is the recommended way to allocate memory to use with LWJGL.</p>
 * <h3>Direct buffers</h3>
 * <p>LWJGL requires that all NIO buffers passed to it are direct buffers. Direct buffers essentially wrap an address that points to off-heap memory, i.e. a
 * native pointer. This is the only way LWJGL can safely pass data from Java code to native code, and vice-versa, without a performance penalty. It does not
 * support on-heap Java arrays (or plain NIO buffers, which wrap them) because arrays may be moved around in memory by the JVM's garbage collector while native
 * code is accessing them. In addition, Java arrays have an unspecified layout, i.e. they are not necessarily contiguous in memory.</p>
 * <h3>Usage</h3>
 * <p>When a direct buffer is passed as an argument to an LWJGL method, no data is copied. Instead, the current buffer position is added to the buffer's memory
 * address and the resulting value is passed to native code. The native code interprets that value as a pointer and reads or copies from it as necessary. LWJGL
 * will often also use the current buffer limit (via {@link Buffer#remaining()}) to automatically pass length/maxlength arguments. This means that, just like
 * other APIs that use NIO buffers, the current {@link Buffer#position()} and {@link Buffer#limit()} at the time of the call is very important. Contrary to
 * other APIs, LWJGL never modifies the current position, it will be the same value before and after the call.</p>
 * <h3>Arrays of pointers</h3>
 * <p>In addition to the standard NIO buffer classes, LWJGL provides a {@link PointerBuffer} class for storing pointer data in an architecture independent way.
 * It is used in bindings for pointer-to-pointers arguments, usually to provide arrays of data (input parameter) or to store returned pointer values (output
 * parameter).</p>
 * <h3>Memory alignment</h3>
 * <p>This class also supports automatically aligned buffer allocations. The {@code org.lwjgl.util.BufferAlign} system property can be used to control the
 * alignment size. Note that the JVM guarantees a minimum alignment size of 8 bytes, which is the default. Supported values:
 * <ul>
 * <li><b>page</b> &ndash; OS page alignment (usually 4kb)</li>
 * <li><b>cache-line</b> &ndash; CPU cache-line alignment (usually 64 bytes)</li>
 * <li><b>default</b> &ndash; the default alignment (8 bytes)</li>
 * <li><em>&lt;custom&gt;</em> &ndash; user-specified alignment, must be a power-of-two integer greater than 8</li>
 * </ul>
 * The system property will be read only once, when this class is loaded. Hence, the automatic alignment size cannot change at runtime, but there are additional
 * methods that can be used when special alignment is required.</p>
 */
extern class BufferUtils 
{
/**
 * Allocates a direct native-order intbuffer with the specified number
 * of elements.
 *
 * @param capacity The capacity, in ints
 *
 * @return an IntBuffer
 */
	static public function createIntBuffer(capacity:Int):java.nio.IntBuffer;
/**
 * Allocates a direct ByteBuffer in native order with the specified capacity. The returned ByteBuffer
 * will be cache-line-aligned.
 *
 * @param capacity the ByteBuffer capacity
 *
 * @return the cache-line-aligned ByteBuffer
 */
	static public function createAlignedByteBufferCacheLine(capacity:Int):java.nio.ByteBuffer;
/**
 * Allocates a direct native-order longbuffer with the specified number
 * of elements.
 *
 * @param capacity The capacity, in longs
 *
 * @return an LongBuffer
 */
	static public function createLongBuffer(capacity:Int):java.nio.LongBuffer;
/**
 * Allocates a PointerBuffer with the specified number
 * of elements.
 *
 * @param capacity The capacity, in memory addresses
 *
 * @return a PointerBuffer
 */
	static public function createPointerBuffer(capacity:Int):org.lwjgl.PointerBuffer;
/**
 * Allocates a direct native-ordered bytebuffer with the specified capacity.
 *
 * @param capacity The capacity, in bytes
 *
 * @return a ByteBuffer
 */
	static public function createByteBuffer(capacity:Int):java.nio.ByteBuffer;
/**
 * Allocates a direct ByteBuffer in native order with the specified capacity. The returned ByteBuffer
 * will be page-aligned.
 *
 * @param capacity the ByteBuffer capacity
 *
 * @return the page-aligned ByteBuffer
 */
	static public function createAlignedByteBufferPage(capacity:Int):java.nio.ByteBuffer;
/**
 * Allocates a direct native-order floatbuffer with the specified number
 * of elements.
 *
 * @param capacity The capacity, in floats
 *
 * @return a FloatBuffer
 */
	static public function createFloatBuffer(capacity:Int):java.nio.FloatBuffer;
/**
 * Allocates a direct native-order doublebuffer with the specified number
 * of elements.
 *
 * @param capacity The capacity, in floats
 *
 * @return a FloatBuffer
 */
	static public function createDoubleBuffer(capacity:Int):java.nio.DoubleBuffer;
/**
 * Allocates a direct native-order charbuffer with the specified number
 * of elements.
 *
 * @param capacity The capacity, in chars
 *
 * @return an CharBuffer
 */
	static public function createCharBuffer(capacity:Int):java.nio.CharBuffer;
/**
 * Allocates a direct ByteBuffer in native order with the specified capacity.
 *
 * @param capacity the ByteBuffer capacity
 *
 * @return the new ByteBuffer
 */
	static public function createUnalignedByteBuffer(capacity:Int):java.nio.ByteBuffer;
/**
 * Fills the specified buffer with zeros from the current position to the current limit.
 *
 * @param buffer the buffer to fill with zeros
 */
/**
 * Fills the specified buffer with zeros from the current position to the current limit.
 *
 * @param buffer the buffer to fill with zeros
 */
/**
 * Fills the specified buffer with zeros from the current position to the current limit.
 *
 * @param buffer the buffer to fill with zeros
 */
/**
 * Fills the specified buffer with zeros from the current position to the current limit.
 *
 * @param buffer the buffer to fill with zeros
 */
/**
 * Fills the specified buffer with zeros from the current position to the current limit.
 *
 * @param buffer the buffer to fill with zeros
 */
/**
 * Fills the specified buffer with zeros from the current position to the current limit.
 *
 * @param buffer the buffer to fill with zeros
 */
/**
 * Fills the specified buffer with zeros from the current position to the current limit.
 *
 * @param buffer the buffer to fill with zeros
 */
	static public function zeroBuffer(buffer:java.nio.ShortBuffer):Void;
	@:overload(function (buffer:java.nio.ByteBuffer):Void {})
	@:overload(function (buffer:java.nio.CharBuffer):Void {})
	@:overload(function (buffer:java.nio.DoubleBuffer):Void {})
	@:overload(function (buffer:java.nio.FloatBuffer):Void {})
	@:overload(function (buffer:java.nio.IntBuffer):Void {})
	@:overload(function (buffer:java.nio.LongBuffer):Void {})
/**
 * Allocates a direct native-order shortbuffer with the specified number
 * of elements.
 *
 * @param capacity The capacity, in shorts
 *
 * @return a ShortBuffer
 */
	static public function createShortBuffer(capacity:Int):java.nio.ShortBuffer;
/**
 * Allocates a direct ByteBuffer in native order with the specified capacity and memory alignment.
 *
 * @param capacity  the ByteBuffer capacity
 * @param alignment the desired memory alignment, in bytes. Must be a power-of-two.
 *
 * @return the aligned ByteBuffer
 */
	static public function createAlignedByteBuffer(capacity:Int,alignment:Int):java.nio.ByteBuffer;

}
