package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.MemoryUtil")
@:final
/**
 * This class provides functionality for managing native memory.
 *
 * <p>All methods in this class will make use of {@link sun.misc.Unsafe} if it's available, for performance. If Unsafe is not available, the fallback
 * implementations make use of reflection and, in the worst-case, JNI.</p>
 *
 * <p>Method names in this class are prefixed with {@code mem} to avoid ambiguities when used with static imports.</p>
 */
extern class MemoryUtil 
{
/** Alias for the null pointer address.  */
	inline static public var NULL:haxe.Int64 = 0;
/** The memory page size, in bytes. This value is always a power-of-two.  */
	static public var PAGE_SIZE:Int;
	static public function memGetInt(ptr:haxe.Int64):Int;
/**
 * Creates a new direct DoubleBuffer that starts at the specified memory address and has the specified capacity.
 *
 * @param address  the starting memory address
 * @param capacity the buffer capacity
 *
 * @return the new DoubleBuffer
 */
	static public function memDoubleBuffer(address:haxe.Int64,capacity:Int):java.nio.DoubleBuffer;
/**
 * Returns the memory address of the specified buffer. [INTERNAL USE ONLY]
 *
 * @param buffer the buffer
 *
 * @return the memory address
 */
/** PointerBuffer version of {@link #memAddress0(Buffer)}.  */
	static public function memAddress0(buffer:org.lwjgl.PointerBuffer):haxe.Int64;
	@:overload(function (buffer:java.nio.Buffer):haxe.Int64 {})
/**
 * Creates a new direct ShortBuffer that starts at the specified memory address and has the specified capacity.
 *
 * @param address  the starting memory address
 * @param capacity the buffer capacity
 *
 * @return the new ShortBuffer
 */
	static public function memShortBuffer(address:haxe.Int64,capacity:Int):java.nio.ShortBuffer;
	static public function memGetLong(ptr:haxe.Int64):haxe.Int64;
	static public function memGetAddress(ptr:haxe.Int64):haxe.Int64;
/**
 * Creates a new PointerBuffer that starts at the specified memory address and has the specified capacity.
 *
 * @param address  the starting memory address
 * @param capacity the buffer capacity
 *
 * @return the new PointerBuffer
 */
	static public function memPointerBuffer(address:haxe.Int64,capacity:Int):org.lwjgl.PointerBuffer;
/**
 * Returns the number of bytes required to encode the specified text in the UTF-8 encoding.
 *
 * @param value the text to encode
 *
 * @return the number of bytes in UTF-8
 */
	static public function memEncodedLengthUTF8(value:java.lang.CharSequence):Int;
/**
 * The standard C realloc function.
 *
 * <p>Changes the size of the memory block pointed to by {@code ptr}. The function may move the memory block to a new location (whose address is returned
 * by the function). The content of the memory block is preserved up to the lesser of the new and old sizes, even if the block is moved to a new location.
 * If the new size is larger, the value of the newly allocated portion is indeterminate.</p>
 *
 * <p>In case that {@code ptr} is a {@link #NULL} pointer, the function behaves like {@code malloc}, assigning a new block of size bytes and returning a
 * pointer to its beginning.</p>
 *
 * @param ptr  a pointer to a memory block previously allocated with {@code malloc}, {@code calloc} or {@code realloc}. Alternatively, this can be a
 *             {@link #NULL} pointer, in which case a new block is allocated (as if {@code malloc} was called).
 * @param size the new size for the memory block, in bytes.
 *
 * @return a pointer to the reallocated memory block, which may be either the same as {@code ptr} or a new location. If the function fails to allocate the
 * requested block of memory, a {@link #NULL} pointer is returned, and the memory block pointed to by argument {@code ptr} is not deallocated (it is still
 * valid, and with its contents unchanged).
 */
	static public function memRealloc(ptr:haxe.Int64,size:haxe.Int64):haxe.Int64;
/**
 * Sets all bytes in a specified block of memory to a fixed value (usually zero).
 *
 * @param ptr   the starting memory address
 * @param value the value to set (memSet will convert it to unsigned byte)
 * @param bytes the number of bytes to set
 */
	static public function memSet(ptr:haxe.Int64,value:Int,bytes:Int):Void;
	static public function memPutFloat(ptr:haxe.Int64,value:Float):Void;
/** Null-safe version of {@link #memAddress(ByteBuffer)}. Returns {@link #NULL} if the specified buffer is null.  */
/** CharBuffer version of {@link #memAddressSafe(ByteBuffer)}.  */
/** DoubleBuffer version of {@link #memAddressSafe(ByteBuffer)}.  */
/** FloatBuffer version of {@link #memAddressSafe(ByteBuffer)}.  */
/** IntBuffer version of {@link #memAddressSafe(ByteBuffer)}.  */
/** LongBuffer version of {@link #memAddressSafe(ByteBuffer)}.  */
/** ShortBuffer version of {@link #memAddressSafe(ByteBuffer)}.  */
/** PointerBuffer version of {@link #memAddressSafe(ByteBuffer)}.  */
/** Null-safe version of {@link #memAddress(ByteBuffer, int)}. Returns {@link #NULL} if the specified buffer is null.  */
/** CharBuffer version of {@link #memAddressSafe(ByteBuffer, int)}.  */
/** DoubleBuffer version of {@link #memAddressSafe(ByteBuffer, int)}.  */
/** FloatBuffer version of {@link #memAddressSafe(ByteBuffer, int)}.  */
/** IntBuffer version of {@link #memAddressSafe(ByteBuffer, int)}.  */
/** LongBuffer version of {@link #memAddressSafe(ByteBuffer, int)}.  */
/** ShortBuffer version of {@link #memAddressSafe(ByteBuffer, int)}.  */
/** PointerBuffer version of {@link #memAddressSafe(ByteBuffer, int)}.  */
	static public function memAddressSafe(buffer:org.lwjgl.PointerBuffer,position:Int):haxe.Int64;
	@:overload(function (buffer:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.CharBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.DoubleBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.FloatBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.LongBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.ShortBuffer):haxe.Int64 {})
	@:overload(function (buffer:org.lwjgl.PointerBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.ByteBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.CharBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.DoubleBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.FloatBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.IntBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.LongBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.ShortBuffer,position:Int):haxe.Int64 {})
/**
 * Converts the null-terminated UTF-16 encoded string at the specified memory address to a {@link String}.
 *
 * @param address the string memory address
 *
 * @return the decode {@link String} or null if the specified {@code address} is null
 */
/**
 * Decodes the bytes with index {@code [position(), position()+remaining()}) in {@code buffer}, as a UTF-16 string.
 *
 * <p>The current {@code position} and {@code limit} of the specified {@code buffer} are not affected by this operation.</p>
 *
 * @param buffer the {@link ByteBuffer} to decode, or null
 *
 * @return the decoded {@link String} or null if the specified {@code } is null
 */
/**
 * Decodes the bytes with index {@code [position(), position()+(length*2)}) in {@code buffer}, as a UTF-16 string.
 *
 * <p>The current {@code position} and {@code limit} of the specified {@code buffer} are not affected by this operation.></p>
 *
 * @param buffer the {@link ByteBuffer} to decode
 * @param length the number of characters to decode
 *
 * @return the decoded {@link String}
 */
/**
 * Decodes the bytes with index {@code [offset, offset+(length*2)}) in {@code buffer}, as a UTF-16 string.
 *
 * <p>The current {@code position} and {@code limit} of the specified {@code buffer} are not affected by this operation.</p>
 *
 * @param buffer the {@link ByteBuffer} to decode
 * @param length the number of characters to decode
 * @param offset the offset at which to start decoding, in bytes.
 *
 * @return the decoded {@link String}
 */
	static public function memDecodeUTF16(buffer:java.nio.ByteBuffer,length:Int,offset:Int):String;
	@:overload(function (address:haxe.Int64):String {})
	@:overload(function (buffer:java.nio.ByteBuffer):String {})
	@:overload(function (buffer:java.nio.ByteBuffer,length:Int):String {})
/**
 * The standard C malloc function.
 *
 * <p>Allocates a block of {@code size} bytes of memory, returning a pointer to the beginning of the block. The content of the newly allocated block of
 * memory is not initialized, remaining with indeterminate values.</p>
 *
 * @param size the size of the memory block to allocate, in bytes. If {@code size} is zero, the return value depends on the particular library
 *             implementation (it may or may not be a null pointer), but the returned pointer shall not be dereferenced.
 *
 * @return on success, a pointer to the memory block allocated by the function. If the function failed to allocate the requested block of memory, a {@link
 * #NULL} pointer is returned.
 */
	static public function memAlloc(size:haxe.Int64):haxe.Int64;
/**
 * Creates a new weak global reference to the specified object. This method is a simpler wrapper over the JNI {@code NewWeakGlobalRef} function.
 *
 * @param obj the object
 *
 * @return the weak global reference memory address
 */
	static public function memNewWeakGlobalRef(obj:Dynamic):haxe.Int64;
/**
 * Returns the memory address at the current position of the specified buffer. This is effectively a pointer value that can be used in native function
 * calls.
 *
 * <p><b>WARNING</b>: Direct use of pointer values is inherently unsafe. In addition to the dangers of pointer arithmetic, the user must also ensure that
 * the memory backing the specified buffer is not deallocated before the returned address is used. For example, this code may lead to a crash:</p>
 * <pre><code>
 * nativeFunction(memAddress(memEncodeASCII("test"));
 * </code></pre>
 * <p>because a GC execution between <code>memAddress</code> and <code>nativeFunction</code> might deallocate the ByteBuffer returned by
 * <code>memEncodeASCII</code>. On the other hand, this code is safe on current JVMs:</p>
 * <pre><code>
 * ByteBuffer encoded = memEncodeASCII("test");
 * nativeFunction(memAddress(encoded));</code><pre>
 *
 * @param buffer the buffer
 *
 * @return the memory address
 */
/** CharBuffer version of {@link #memAddress(ByteBuffer)}.  */
/** DoubleBuffer version of {@link #memAddress(ByteBuffer)}.  */
/** FloatBuffer version of {@link #memAddress(ByteBuffer)}.  */
/** IntBuffer version of {@link #memAddress(ByteBuffer)}.  */
/** LongBuffer version of {@link #memAddress(ByteBuffer)}.  */
/** ShortBuffer version of {@link #memAddress(ByteBuffer)}.  */
/** PointerBuffer version of {@link #memAddress(ByteBuffer)}.  */
/**
 * Returns the memory address at the specified position of the specified buffer.
 *
 * @param buffer   the buffer
 * @param position the buffer position
 *
 * @return the memory address
 *
 * @see #memAddress(ByteBuffer)
 */
/** CharBuffer version of {@link #memAddress(ByteBuffer, int)}.  */
/** DoubleBuffer version of {@link #memAddress(ByteBuffer, int)}.  */
/** FloatBuffer version of {@link #memAddress(ByteBuffer, int)}.  */
/** IntBuffer version of {@link #memAddress(ByteBuffer, int)}.  */
/** LongBuffer version of {@link #memAddress(ByteBuffer, int)}.  */
/** ShortBuffer version of {@link #memAddress(ByteBuffer, int)}.  */
/** PointerBuffer version of {@link #memAddress(ByteBuffer, int)}.  */
	static public function memAddress(buffer:org.lwjgl.PointerBuffer,position:Int):haxe.Int64;
	@:overload(function (buffer:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.CharBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.DoubleBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.FloatBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.IntBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.LongBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.ShortBuffer):haxe.Int64 {})
	@:overload(function (buffer:org.lwjgl.PointerBuffer):haxe.Int64 {})
	@:overload(function (buffer:java.nio.ByteBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.CharBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.DoubleBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.FloatBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.IntBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.LongBuffer,position:Int):haxe.Int64 {})
	@:overload(function (buffer:java.nio.ShortBuffer,position:Int):haxe.Int64 {})
/**
 * Returns a ByteBuffer containing the specified text UTF-16 encoded and null-terminated. If text is null, null is returned.
 *
 * @param text the text to encode
 *
 * @return the encoded text
 */
/**
 * Returns a ByteBuffer containing the specified text UTF-16 encoded and optionally null-terminated. If text is null, null is returned.
 *
 * @param text           the text to encode
 * @param nullTerminated if true, the text will be terminated with a '\0'.
 *
 * @return the encoded text
 */
/**
 * Encodes and optionally null-terminates the specified text using UTF-16 encoding. The encoded text is stored in the specified {@link ByteBuffer}, at the
 * current buffer position. The current buffer position is not modified by this operation. The {@code target} buffer is assumed to have enough remaining
 * space to store the encoded text.
 *
 * @param text           the text to encode
 * @param nullTerminated if true, the text will be terminated with a '\0'.
 * @param target         the buffer in which to store the encoded text
 *
 * @return the number of bytes of the encoded string
 */
/**
 * Encodes and optionally null-terminates the specified text using UTF-16 encoding. The encoded text is stored in the specified {@link ByteBuffer} at the
 * specified {@code position} offset. The current buffer position is not modified by this operation. The {@code target} buffer is assumed to have enough
 * remaining space to store the encoded text.
 *
 * @param text           the text to encode
 * @param nullTerminated if true, the text will be terminated with a '\0'.
 * @param target         the buffer in which to store the encoded text
 * @param offset         the buffer position to which the string will be encoded
 *
 * @return the number of bytes of the encoded string
 */
	static public function memEncodeUTF16(text:java.lang.CharSequence,nullTerminated:Bool,target:java.nio.ByteBuffer,offset:Int):Int;
	@:overload(function (text:java.lang.CharSequence):java.nio.ByteBuffer {})
	@:overload(function (text:java.lang.CharSequence,nullTerminated:Bool):java.nio.ByteBuffer {})
	@:overload(function (text:java.lang.CharSequence,nullTerminated:Bool,target:java.nio.ByteBuffer):Int {})
/**
 * Converts the null-terminated UTF-8 encoded string at the specified memory address to a {@link String}.
 *
 * @param address the string memory address
 *
 * @return the decode {@link String} or null if the specified {@code address} is null
 */
/**
 * Decodes the bytes with index {@code [position(), position()+remaining()}) in {@code buffer}, as a UTF-8 string.
 *
 * <p>The current {@code position} and {@code limit} of the specified {@code buffer} are not affected by this operation.</p>
 *
 * @param buffer the {@link ByteBuffer} to decode, or null
 *
 * @return the decoded {@link String} or null if the specified {@code buffer} is null
 */
/**
 * Decodes the bytes with index {@code [position(), position()+length}) in {@code buffer}, as a UTF-8 string.
 *
 * <p>The current {@code position} and {@code limit} of the specified {@code buffer} are not affected by this operation.</p>
 *
 * @param buffer the {@link ByteBuffer} to decode
 * @param length the number of bytes to decode
 *
 * @return the decoded {@link String}
 */
/**
 * Decodes the bytes with index {@code [offset, offset+length}) in {@code buffer}, as a UTF-8 string.
 *
 * <p>The current {@code position} and {@code limit} of the specified {@code buffer} are not affected by this operation.</p>
 *
 * @param buffer the {@link ByteBuffer} to decode
 * @param length the number of bytes to decode
 * @param offset the offset at which to start decoding.
 *
 * @return the decoded {@link String}
 */
	static public function memDecodeUTF8(buffer:java.nio.ByteBuffer,length:Int,offset:Int):String;
	@:overload(function (address:haxe.Int64):String {})
	@:overload(function (buffer:java.nio.ByteBuffer):String {})
	@:overload(function (buffer:java.nio.ByteBuffer,length:Int):String {})
	static public function memGetByte(ptr:haxe.Int64):Int8;
/**
 * Creates a new direct CharBuffer that starts at the specified memory address and has the specified capacity.
 *
 * @param address  the starting memory address
 * @param capacity the buffer capacity
 *
 * @return the new CharBuffer
 */
	static public function memCharBuffer(address:haxe.Int64,capacity:Int):java.nio.CharBuffer;
/**
 * The standard C calloc function.
 *
 * <p>Allocates a block of memory for an array of {@code num} elements, each of them {@code size} bytes long, and initializes all its bits to zero. The
 * effective result is the allocation of a zero-initialized memory block of {@code (num*size)} bytes.</p>
 *
 * @param num  the number of elements to allocate.
 * @param size the size of each element. If {@code size} is zero, the return value depends on the particular library implementation (it may or may not be
 *             a null pointer), but the returned pointer shall not be dereferenced.
 *
 * @return on success, a pointer to the memory block allocated by the function. If the function failed to allocate the requested block of memory, a {@link
 * #NULL} pointer is returned.
 */
	static public function memCalloc(num:haxe.Int64,size:haxe.Int64):haxe.Int64;
/**
 * Creates a new direct ByteBuffer that starts at the specified memory address and has the specified capacity. The returned ByteBuffer instance will be set
 * to the native ByteOrder.
 *
 * @param address  the starting memory address
 * @param capacity the buffer capacity
 *
 * @return the new ByteBuffer
 */
	static public function memByteBuffer(address:haxe.Int64,capacity:Int):java.nio.ByteBuffer;
	static public function memPutInt(ptr:haxe.Int64,value:Int):Void;
/**
 * Creates a new direct IntBuffer that starts at the specified memory address and has the specified capacity.
 *
 * @param address  the starting memory address
 * @param capacity the buffer capacity
 *
 * @return the new IntBuffer
 */
	static public function memIntBuffer(address:haxe.Int64,capacity:Int):java.nio.IntBuffer;
/**
 * This method is an alternative to {@link #memByteBuffer} that allows the reuse of an existing direct ByteBuffer instance. It modifies that instance so
 * that it starts at the specified memory address and has the specified capacity. The instance passed to this method should not own native memory, i.e. it
 * should not be an instance created using {@link ByteBuffer#allocateDirect}. Using such an instance will cause an exception to be thrown. Other instances
 * are allowed and their parent reference will be cleared before this method returns.
 *
 * <p>ByteBuffer instance modification might not be possible. In that case this method behaves exactly like {@link #memByteBuffer}, so the returned
 * instance should always replace the input one.</p>
 *
 * @param buffer   the ByteBuffer to modify
 * @param address  the starting memory address
 * @param capacity the buffer capacity
 *
 * @return the modified ByteBuffer
 */
/** CharBuffer version of: {@link #memSetupBuffer(java.nio.ByteBuffer, long, int)}  */
/** DoubleBuffer version of: {@link #memSetupBuffer(java.nio.ByteBuffer, long, int)}  */
/** FloatBuffer version of: {@link #memSetupBuffer(java.nio.ByteBuffer, long, int)}  */
/** IntBuffer version of: {@link #memSetupBuffer(java.nio.ByteBuffer, long, int)}  */
/** LongBuffer version of: {@link #memSetupBuffer(java.nio.ByteBuffer, long, int)}  */
/** ShortBuffer version of: {@link #memSetupBuffer(java.nio.ByteBuffer, long, int)}  */
	static public function memSetupBuffer(buffer:java.nio.ShortBuffer,address:haxe.Int64,capacity:Int):java.nio.ShortBuffer;
	@:overload(function (buffer:java.nio.ByteBuffer,address:haxe.Int64,capacity:Int):java.nio.ByteBuffer {})
	@:overload(function (buffer:java.nio.CharBuffer,address:haxe.Int64,capacity:Int):java.nio.CharBuffer {})
	@:overload(function (buffer:java.nio.DoubleBuffer,address:haxe.Int64,capacity:Int):java.nio.DoubleBuffer {})
	@:overload(function (buffer:java.nio.FloatBuffer,address:haxe.Int64,capacity:Int):java.nio.FloatBuffer {})
	@:overload(function (buffer:java.nio.IntBuffer,address:haxe.Int64,capacity:Int):java.nio.IntBuffer {})
	@:overload(function (buffer:java.nio.LongBuffer,address:haxe.Int64,capacity:Int):java.nio.LongBuffer {})
	static public function memGetShort(ptr:haxe.Int64):Int16;
/** Null-safe version of {@link #memAddress0(Buffer)}. Returns {@link #NULL} if the specified buffer is null.  */
/** PointerBuffer version of {@link #memAddress0Safe(Buffer)}.  */
	static public function memAddress0Safe(buffer:org.lwjgl.PointerBuffer):haxe.Int64;
	@:overload(function (buffer:java.nio.Buffer):haxe.Int64 {})
/**
 * Slices the specified buffer. The returned buffer will have the same {@link ByteOrder} as the source buffer.
 *
 * @param buffer the buffer to slice
 *
 * @return the sliced buffer
 *
 * @see ByteBuffer#slice()
 */
/**
 * Returns a slice of the specified buffer, starting at the buffer's current position and ending at {@code buffer.position() + capacity}. The returned
 * buffer will have the same {@link ByteOrder} as the source buffer.
 *
 * <p>The position and limit of the source buffer are preserved after a call to this method.</p>
 *
 * @param buffer   the buffer to slice
 * @param capacity the slice length, it must be &le; {@code buffer.capacity() - buffer.position()}
 *
 * @return the sliced buffer
 */
/**
 * Returns a slice of the specified buffer, starting at {@code buffer.position() + offset} and ending at {@code buffer.position() + offset + capacity}. The
 * returned buffer will have the same {@link ByteOrder} as the original buffer.
 *
 * <p>The position and limit of the original buffer are preserved after a call to this method.</p>
 *
 * @param buffer   the buffer to slice
 * @param offset   the slice offset, it must be &le; {@code buffer.remaining()}
 * @param capacity the slice length, it must be &le; {@code buffer.capacity() - (buffer.position() + offset)}
 *
 * @return the sliced buffer
 */
	static public function memSlice(buffer:java.nio.ByteBuffer,offset:Int,capacity:Int):java.nio.ByteBuffer;
	@:overload(function (buffer:java.nio.ByteBuffer):java.nio.ByteBuffer {})
	@:overload(function (buffer:java.nio.ByteBuffer,capacity:Int):java.nio.ByteBuffer {})
	static public function memPutAddress(ptr:haxe.Int64,value:haxe.Int64):Void;
/**
 * Returns the pointer size in bytes for the process that loaded LWJGL.
 *
 * <p>This call is expensive, use {@link org.lwjgl.Pointer#POINTER_SIZE} instead.</p>
 *
 * @return the process pointer size in bytes.
 */
	static public function memPointerSize():Int;
/**
 * Creates a new direct LongBuffer that starts at the specified memory address and has the specified capacity.
 *
 * @param address  the starting memory address
 * @param capacity the buffer capacity
 *
 * @return the new LongBuffer
 */
	static public function memLongBuffer(address:haxe.Int64,capacity:Int):java.nio.LongBuffer;
	static public function memGetDouble(ptr:haxe.Int64):Float;
	static public function memPutLong(ptr:haxe.Int64,value:haxe.Int64):Void;
/**
 * Returns a ByteBuffer containing the specified text ASCII encoded and null-terminated. If text is null, null is returned.
 *
 * @param text the text to encode
 *
 * @return the encoded text or null
 */
/**
 * Returns a ByteBuffer containing the specified text ASCII encoded and optionally null-terminated. If text is null, null is returned.
 *
 * @param text           the text to encode
 * @param nullTerminated if true, the text will be terminated with a '\0'.
 *
 * @return the encoded text or null
 */
/**
 * Encodes and optionally null-terminates the specified text using ASCII encoding. The encoded text is stored in the specified {@link ByteBuffer}, at the
 * current buffer position. The current buffer position is not modified by this operation. The {@code target} buffer is assumed to have enough remaining
 * space to store the encoded text.
 *
 * @param text           the text to encode
 * @param nullTerminated if true, the text will be terminated with a '\0'.
 *
 * @return the encoded text or null
 */
/**
 * Encodes and optionally null-terminates the specified text using ASCII encoding. The encoded text is stored in the specified {@link ByteBuffer} at the
 * specified {@code position} offset. The current buffer position is not modified by this operation. The {@code target} buffer is assumed to have enough
 * remaining space to store the encoded text.
 *
 * @param text           the text to encode
 * @param nullTerminated if true, the text will be terminated with a '\0'.
 * @param offset         the buffer position to which the string will be encoded
 *
 * @return the number of bytes of the encoded string
 */
	static public function memEncodeASCII(text:java.lang.CharSequence,nullTerminated:Bool,target:java.nio.ByteBuffer,offset:Int):Int;
	@:overload(function (text:java.lang.CharSequence):java.nio.ByteBuffer {})
	@:overload(function (text:java.lang.CharSequence,nullTerminated:Bool):java.nio.ByteBuffer {})
	@:overload(function (text:java.lang.CharSequence,nullTerminated:Bool,target:java.nio.ByteBuffer):Int {})
	static public function memGetFloat(ptr:haxe.Int64):Float;
/**
 * Calculates the byte count of the null-terminated string in {@code buffer} that starts at the current {@code buffer} position. The null-terminator is
 * assumed to be a single {@code \0} character.
 *
 * @param buffer the {@link ByteBuffer} that contains the string
 *
 * @return the string length, <strong>in bytes</strong>
 */
/**
 * Calculates the byte count of the null-terminated string in {@code buffer} that starts at index {@code from}. The null-terminator is assumed to be a
 * single {@code \0} character.
 *
 * @param buffer the {@link ByteBuffer} that contains the string
 * @param from   the index at which to start the search
 *
 * @return the string length, <strong>in bytes</strong>
 */
	static public function memStrLen1(buffer:java.nio.ByteBuffer,from:Int):Int;
	@:overload(function (buffer:java.nio.ByteBuffer):Int {})
/**
 * Calculates the number of UTF16 code units of the null-terminated string in {@code buffer} that starts at the current {@code buffer} position. The
 * null-terminator is assumed to be 2 consecutive {@code \0} characters.
 *
 * @param buffer the {@link ByteBuffer} that contains the string
 *
 * @return the string length, <strong>in UTF16 code units</strong>
 */
/**
 * Calculates the number of UTF16 code units of the null-terminated string in {@code buffer} that starts at index {@code from}. The null-terminator is
 * assumed to be 2 consecutive {@code \0} characters.
 *
 * @param buffer the {@link ByteBuffer} that contains the string
 * @param from   the index at which to start the search
 *
 * @return the string length, <strong>in UTF16 code units</strong>
 */
	static public function memStrLen2(buffer:java.nio.ByteBuffer,from:Int):Int;
	@:overload(function (buffer:java.nio.ByteBuffer):Int {})
/**
 * The standard C free function.
 *
 * <p>A block of memory previously allocated by a call to {@code malloc}, {@code calloc} or {@code realloc} is deallocated, making it available again for
 * further allocations.</p>
 *
 * @param ptr pointer to a memory block previously allocated with {@code malloc}, {@code calloc} or {@code realloc}. If {@code ptr} does not point to a
 *            block of
 *            memory allocated with the above functions, it causes undefined behavior. If {@code ptr} is a {@link #NULL} pointer, the function does
 *            nothing.
 */
	static public function memFree(ptr:haxe.Int64):Void;
	static public function memPutByte(ptr:haxe.Int64,value:Int8):Void;
/**
 * Creates a new global reference to the specified object. This method is a simpler wrapper over the JNI {@code NewGlobalRef} function.
 *
 * @param obj the object
 *
 * @return the global reference memory address
 */
	static public function memNewGlobalRef(obj:Dynamic):haxe.Int64;
/**
 * Sets all bytes in a specified block of memory to a copy of another block.
 *
 * @param src   the source memory address
 * @param dst   the destination memory address
 * @param bytes the number of bytes to copy
 */
	static public function memCopy(src:haxe.Int64,dst:haxe.Int64,bytes:Int):Void;
	static public function memPutShort(ptr:haxe.Int64,value:Int16):Void;
/**
 * Returns a ByteBuffer containing the specified text UTF-8 encoded and null-terminated. If text is null, null is returned.
 *
 * @param text the text to encode
 *
 * @return the encoded text or null
 */
/**
 * Returns a ByteBuffer containing the specified text UTF-8 encoded and optionally null-terminated. If text is null, null is returned.
 *
 * @param text           the text to encode
 * @param nullTerminated if true, the text will be terminated with a '\0'.
 *
 * @return the encoded text or null
 */
/**
 * Encodes and optionally null-terminates the specified text using UTF-8 encoding. The encoded text is stored in the specified {@link ByteBuffer}, at the
 * current buffer position. The current buffer position is not modified by this operation. The {@code target} buffer is assumed to have enough remaining
 * space to store the encoded text. The specified text is assumed to be a valid UTF-16 string.
 *
 * @param text           the text to encode
 * @param nullTerminated if true, the text will be terminated with a '\0'.
 * @param target         the buffer in which to store the encoded text
 *
 * @return the number of bytes of the encoded string
 */
/**
 * Encodes and optionally null-terminates the specified text using UTF-8 encoding. The encoded text is stored in the specified {@link ByteBuffer}, at the
 * specified {@code position} offset. The current buffer position is not modified by this operation. The {@code target} buffer is assumed to have enough
 * remaining space to store the encoded text. The specified text is assumed to be a valid UTF-16 string.
 *
 * @param text           the text to encode
 * @param nullTerminated if true, the text will be terminated with a '\0'.
 * @param target         the buffer in which to store the encoded text
 * @param offset         the buffer position to which the string will be encoded
 *
 * @return the number of bytes of the encoded string
 */
	static public function memEncodeUTF8(text:java.lang.CharSequence,nullTerminated:Bool,target:java.nio.ByteBuffer,offset:Int):Int;
	@:overload(function (text:java.lang.CharSequence):java.nio.ByteBuffer {})
	@:overload(function (text:java.lang.CharSequence,nullTerminated:Bool):java.nio.ByteBuffer {})
	@:overload(function (text:java.lang.CharSequence,nullTerminated:Bool,target:java.nio.ByteBuffer):Int {})
	static public function memPutDouble(ptr:haxe.Int64,value:Float):Void;
/**
 * Returns the object that the specified global reference points to.
 *
 * @param globalRef the global reference
 * @param <T>       the object type
 *
 * @return the object pointed to by {@code globalRef}
 */
	static public function memGlobalRefToObject<T>(globalRef:haxe.Int64):T;
/**
 * Deletes a weak global reference. This method is a simpler wrapper over the JNI {@code DeleteWeakGlobalRef} function.
 *
 * @param globalRef the memory address of the weak global reference to delete
 */
	static public function memDeleteWeakGlobalRef(globalRef:haxe.Int64):Void;
/**
 * Converts the null-terminated ASCII encoded string at the specified memory address to a {@link String}.
 *
 * @param address the string memory address
 *
 * @return the decode {@link String} or null if the specified {@code address} is null
 */
/**
 * Decodes the bytes with index {@code [position(), position()+remaining()}) in {@code buffer}, as an ASCII string.
 *
 * <p>The current {@code position} and {@code limit} of the specified {@code buffer} are not affected by this operation.</p>
 *
 * @param buffer the {@link ByteBuffer} to decode, or null
 *
 * @return the decoded {@link String} or null if the specified {@code buffer} is null
 */
/**
 * Decodes the bytes with index {@code [position(), position()+length}) in {@code buffer}, as an ASCII string.
 *
 * <p>The current {@code position} and {@code limit} of the specified {@code buffer} are not affected by this operation.</p>
 *
 * @param buffer the {@link ByteBuffer} to decode
 * @param length the number of bytes to decode
 *
 * @return the decoded {@link String}
 */
/**
 * Decodes the bytes with index {@code [offset, offset+length}) in {@code buffer}, as an ASCII string.
 *
 * <p>The current {@code position} and {@code limit} of the specified {@code buffer} are not affected by this operation.</p>
 *
 * @param buffer the {@link ByteBuffer} to decode
 * @param length the number of bytes to decode
 * @param offset the offset at which to start decoding.
 *
 * @return the decoded {@link String}
 */
	static public function memDecodeASCII(buffer:java.nio.ByteBuffer,length:Int,offset:Int):String;
	@:overload(function (address:haxe.Int64):String {})
	@:overload(function (buffer:java.nio.ByteBuffer):String {})
	@:overload(function (buffer:java.nio.ByteBuffer,length:Int):String {})
/**
 * Creates a new direct ByteBuffer that starts at the specified memory address and has capacity equal to the null-terminated string starting at that
 * address. Two \0 characters will terminate the string. The returned buffer will NOT include the \0 bytes.
 *
 * <p>This method is useful for reading UTF16 encoded text.</p>
 *
 * @param address the starting memory address
 *
 * @return the new ByteBuffer
 */
/**
 * Creates a new direct ByteBuffer that starts at the specified memory address and has capacity equal to the null-terminated string starting at that
 * address, up to a maximum of {@code maxLength} bytes. Two \0 characters will terminate the string. The returned buffer will NOT include the \0 bytes.
 *
 * <p>This method is useful for reading UTF16 encoded text.</p>
 *
 * @param address the starting memory address
 *
 * @return the new ByteBuffer
 */
	static public function memByteBufferNT2(address:haxe.Int64,maxLength:Int):java.nio.ByteBuffer;
	@:overload(function (address:haxe.Int64):java.nio.ByteBuffer {})
/**
 * Creates a new direct FloatBuffer that starts at the specified memory address and has the specified capacity.
 *
 * @param address  the starting memory address
 * @param capacity the buffer capacity
 *
 * @return the new FloatBuffer
 */
	static public function memFloatBuffer(address:haxe.Int64,capacity:Int):java.nio.FloatBuffer;
/**
 * Creates a new direct ByteBuffer that starts at the specified memory address and has capacity equal to the null-terminated string starting at that
 * address. A single \0 character will terminate the string. The returned buffer will NOT include the \0 byte.
 *
 * <p>This method is useful for reading ASCII and UTF8 encoded text.</p>
 *
 * @param address the starting memory address
 *
 * @return the new ByteBuffer
 */
/**
 * Creates a new direct ByteBuffer that starts at the specified memory address and has capacity equal to the null-terminated string starting at that
 * address, up to a maximum of {@code maxLength} bytes. A single \0 character will terminate the string. The returned buffer will NOT include the \0 byte.
 *
 * <p>This method is useful for reading ASCII and UTF8 encoded text.</p>
 *
 * @param address   the starting memory address
 * @param maxLength the maximum string length, in bytes
 *
 * @return the new ByteBuffer
 */
	static public function memByteBufferNT1(address:haxe.Int64,maxLength:Int):java.nio.ByteBuffer;
	@:overload(function (address:haxe.Int64):java.nio.ByteBuffer {})
/**
 * Deletes a global reference. This method is a simpler wrapper over the JNI {@code DeleteGlobalRef} function.
 *
 * @param globalRef the memory address of the global reference to delete
 */
	static public function memDeleteGlobalRef(globalRef:haxe.Int64):Void;

}
