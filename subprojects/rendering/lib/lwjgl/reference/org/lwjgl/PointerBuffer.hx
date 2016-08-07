package org.lwjgl;

import java.StdTypes;
@:native("org.lwjgl.PointerBuffer")
/** This class is a container for architecture-independent pointer data. Its interface mirrors the {@link LongBuffer} API for convenience.  */
extern class PointerBuffer implements java.lang.Comparable<org.lwjgl.PointerBuffer>
{
/** The backing buffer.  */
	private var buffer:java.nio.ByteBuffer;
/**
 * Creates a new PointerBuffer with the specified capacity.
 *
 * @param capacity the buffer size, in number of pointers
 */
	@:overload(function (capacity:Int):Void {})
/**
 * Creates a new PointerBuffer using the specified ByteBuffer as its pointer
 * data source. This is useful for users that do their own memory management
 * over a big ByteBuffer, instead of allocating many small ones.
 *
 * @param source the source buffer
 */
	@:overload(function (source:java.nio.ByteBuffer):Void {})
/**
 * Creates a new PointerBuffer that starts at the specified memory address and has the specified capacity.
 *
 * @param address  the starting memory address
 * @param capacity the buffer capacity, in number of pointers
 */
	public function new(address:haxe.Int64,capacity:Int):Void;
/**
 * Returns the ByteBuffer that backs this PointerBuffer.
 *
 * @return the pointer ByteBuffer
 */
	public function getBuffer():java.nio.ByteBuffer;
/** Returns a FloatBuffer instance that starts at the address found at the current position and has capacity equal to the specified size.  */
/** Returns a FloatBuffer instance that starts at the address found at the specified index and has capacity equal to the specified size.  */
	public function getFloatBuffer(index:Int,size:Int):java.nio.FloatBuffer;
	@:overload(function (size:Int):java.nio.FloatBuffer {})
/**
 * Compacts this buffer&nbsp;&nbsp;<i>(optional operation)</i>.
 * <p/>
 * <p> The longs between the buffer's current position and its limit,
 * if any, are copied to the beginning of the buffer.  That is, the
 * long at index <i>p</i>&nbsp;=&nbsp;<tt>position()</tt> is copied
 * to index zero, the long at index <i>p</i>&nbsp;+&nbsp;1 is copied
 * to index one, and so forth until the long at index
 * <tt>limit()</tt>&nbsp;-&nbsp;1 is copied to index
 * <i>n</i>&nbsp;=&nbsp;<tt>limit()</tt>&nbsp;-&nbsp;<tt>1</tt>&nbsp;-&nbsp;<i>p</i>.
 * The buffer's position is then set to <i>n+1</i> and its limit is set to
 * its capacity.  The mark, if defined, is discarded.
 * <p/>
 * <p> The buffer's position is set to the number of longs copied,
 * rather than to zero, so that an invocation of this method can be
 * followed immediately by an invocation of another relative <i>put</i>
 * method. </p>
 *
 * @return This buffer
 *
 * @throws java.nio.ReadOnlyBufferException If this buffer is read-only
 */
	public function compact():org.lwjgl.PointerBuffer;
/** Returns a ByteBuffer instance that starts at the address found at the current position and has capacity equal to the specified size.  */
/** Returns a ByteBuffer instance that starts at the address found at the specified index and has capacity equal to the specified size.  */
	public function getByteBuffer(index:Int,size:Int):java.nio.ByteBuffer;
	@:overload(function (size:Int):java.nio.ByteBuffer {})
/** Returns a IntBuffer instance that starts at the address found at the current position and has capacity equal to the specified size.  */
/** Returns a IntBuffer instance that starts at the address found at the specified index and has capacity equal to the specified size.  */
	public function getIntBuffer(index:Int,size:Int):java.nio.IntBuffer;
	@:overload(function (size:Int):java.nio.IntBuffer {})
/** Puts the address of the specified buffer at the current position and then increments the position.  */
/** Puts the address of the specified buffer at the specified index.  */
	public function putAddressOf(index:Int,buffer:org.lwjgl.PointerBuffer):Void;
	@:overload(function (buffer:org.lwjgl.PointerBuffer):org.lwjgl.PointerBuffer {})
/** Returns a ShortBuffer instance that starts at the address found at the current position and has capacity equal to the specified size.  */
/** Returns a ShortBuffer instance that starts at the address found at the specified index and has capacity equal to the specified size.  */
	public function getShortBuffer(index:Int,size:Int):java.nio.ShortBuffer;
	@:overload(function (size:Int):java.nio.ShortBuffer {})
/**
 * Compares this buffer to another.
 * <p/>
 * <p> Two pointer buffers are compared by comparing their sequences of
 * remaining elements lexicographically, without regard to the starting
 * position of each sequence within its corresponding buffer.
 * <p/>
 * <p> A pointer buffer is not comparable to any other type of object.
 *
 * @return A negative integer, zero, or a positive integer as this buffer
 * is less than, equal to, or greater than the specified buffer
 */
	public function compareTo(that:org.lwjgl.PointerBuffer):Int;
/**
 * Creates a new, read-only pointer buffer that shares this buffer's
 * content.
 * <p/>
 * <p> The content of the new buffer will be that of this buffer.  Changes
 * to this buffer's content will be visible in the new buffer; the new
 * buffer itself, however, will be read-only and will not allow the shared
 * content to be modified.  The two buffers' position, limit, and mark
 * values will be independent.
 * <p/>
 * <p> The new buffer's capacity, limit and position will be
 * identical to those of this buffer.
 * <p/>
 * <p> If this buffer is itself read-only then this method behaves in
 * exactly the same way as the {@link #duplicate duplicate} method.  </p>
 *
 * @return the new, read-only pointer buffer
 */
	public function asReadOnlyBuffer():org.lwjgl.PointerBuffer;
/**
 * Relative <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
 * <p/>
 * <p> Writes the specified pointer into this buffer at the current
 * position, and then increments the position. </p>
 *
 * @param l The long to be written
 *
 * @return This buffer
 *
 * @throws java.nio.BufferOverflowException If this buffer's current position is not smaller than its limit
 * @throws java.nio.ReadOnlyBufferException If this buffer is read-only
 */
/**
 * Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
 * <p/>
 * <p> This method transfers the entire content of the specified source
 * long array into this buffer.  An invocation of this method of the
 * form <tt>dst.put(a)</tt> behaves in exactly the same way as the
 * invocation
 * <p/>
 * <pre>
 *     dst.put(a, 0, a.length) </pre>
 *
 * @return This buffer
 *
 * @throws java.nio.BufferOverflowException If there is insufficient space in this buffer
 * @throws java.nio.ReadOnlyBufferException If this buffer is read-only
 */
/** Puts the address of the specified buffer at the current position and then increments the position.  */
/** Puts the address of the specified buffer at the current position and then increments the position.  */
/** Puts the address of the specified buffer at the current position and then increments the position.  */
/** Puts the address of the specified buffer at the current position and then increments the position.  */
/** Puts the address of the specified buffer at the current position and then increments the position.  */
/** Puts the address of the specified buffer at the current position and then increments the position.  */
/** Puts the pointer value of the specified {@link Pointer} at the current position and then increments the position.  */
/**
 * Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
 * <p/>
 * <p> This method transfers the longs remaining in the specified source
 * buffer into this buffer.  If there are more longs remaining in the
 * source buffer than in this buffer, that is, if
 * <tt>src.remaining()</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>,
 * then no longs are transferred and a {@link
 * java.nio.BufferOverflowException} is thrown.
 * <p/>
 * <p> Otherwise, this method copies
 * <i>n</i>&nbsp;=&nbsp;<tt>src.remaining()</tt> longs from the specified
 * buffer into this buffer, starting at each buffer's current position.
 * The positions of both buffers are then incremented by <i>n</i>.
 * <p/>
 * <p> In other words, an invocation of this method of the form
 * <tt>dst.put(src)</tt> has exactly the same effect as the loop
 * <p/>
 * <pre>
 *     while (src.hasRemaining())
 *         dst.put(src.get()); </pre>
 * <p/>
 * except that it first checks that there is sufficient space in this
 * buffer and it is potentially much more efficient. </p>
 *
 * @param src The source buffer from which longs are to be read;
 *            must not be this buffer
 *
 * @return This buffer
 *
 * @throws java.nio.BufferOverflowException If there is insufficient space in this buffer
 *                                          for the remaining longs in the source buffer
 * @throws IllegalArgumentException         If the source buffer is this buffer
 * @throws java.nio.ReadOnlyBufferException If this buffer is read-only
 */
/**
 * Absolute <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
 * <p/>
 * <p> Writes the specified pointer into this buffer at the specified
 * index. </p>
 *
 * @param index The index at which the long will be written
 * @param l     The long value to be written
 *
 * @return This buffer
 *
 * @throws IndexOutOfBoundsException        If <tt>index</tt> is negative
 *                                          or not smaller than the buffer's limit
 * @throws java.nio.ReadOnlyBufferException If this buffer is read-only
 */
/** Puts the address of the specified buffer at the specified index.  */
/** Puts the address of the specified buffer at the specified index.  */
/** Puts the address of the specified buffer at the specified index.  */
/** Puts the address of the specified buffer at the specified index.  */
/** Puts the address of the specified buffer at the specified index.  */
/** Puts the address of the specified buffer at the specified index.  */
/** Puts the pointer value of the specified {@link Pointer} at the specified index.  */
/**
 * Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
 * <p/>
 * <p> This method transfers longs into this buffer from the specified
 * source array.  If there are more longs to be copied from the array
 * than remain in this buffer, that is, if
 * <tt>length</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>, then no
 * longs are transferred and a {@link java.nio.BufferOverflowException} is
 * thrown.
 * <p/>
 * <p> Otherwise, this method copies <tt>length</tt> longs from the
 * specified array into this buffer, starting at the specified offset in the array
 * and at the current position of this buffer.  The position of this buffer
 * is then incremented by <tt>length</tt>.
 * <p/>
 * <p> In other words, an invocation of this method of the form
 * <tt>dst.put(src,&nbsp;off,&nbsp;len)</tt> has exactly the same effect as
 * the loop
 * <p/>
 * <pre>
 *     for (int i = off; i < off + len; i++)
 *         dst.put(a[i]); </pre>
 * <p/>
 * except that it first checks that there is sufficient space in this
 * buffer and it is potentially much more efficient. </p>
 *
 * @param src    The array from which longs are to be read
 * @param offset The offset within the array of the first long to be read;
 *               must be non-negative and no larger than <tt>array.length</tt>
 * @param length The number of longs to be read from the specified array;
 *               must be non-negative and no larger than
 *               <tt>array.length - offset</tt>
 *
 * @return This buffer
 *
 * @throws java.nio.BufferOverflowException If there is insufficient space in this buffer
 * @throws IndexOutOfBoundsException        If the preconditions on the <tt>offset</tt> and <tt>length</tt>
 *                                          parameters do not hold
 * @throws java.nio.ReadOnlyBufferException If this buffer is read-only
 */
/**
 * Convenience put on a target ByteBuffer.
 *
 * @param target the target ByteBuffer
 * @param l      the long value to be written
 */
/**
 * Convenience put on a target ByteBuffer.
 *
 * @param target the target ByteBuffer
 * @param index  the index at which the long will be written
 * @param l      the long value to be written
 */
	static public function put(target:java.nio.ByteBuffer,index:Int,l:haxe.Int64):Void;
	@:overload(function (l:haxe.Int64):org.lwjgl.PointerBuffer {})
	@:overload(function (src:java.NativeArray<haxe.Int64>):org.lwjgl.PointerBuffer {})
	@:overload(function (buffer:java.nio.ByteBuffer):org.lwjgl.PointerBuffer {})
	@:overload(function (buffer:java.nio.DoubleBuffer):org.lwjgl.PointerBuffer {})
	@:overload(function (buffer:java.nio.FloatBuffer):org.lwjgl.PointerBuffer {})
	@:overload(function (buffer:java.nio.IntBuffer):org.lwjgl.PointerBuffer {})
	@:overload(function (buffer:java.nio.LongBuffer):org.lwjgl.PointerBuffer {})
	@:overload(function (buffer:java.nio.ShortBuffer):org.lwjgl.PointerBuffer {})
	@:overload(function (wrapper:org.lwjgl.Pointer):org.lwjgl.PointerBuffer {})
	@:overload(function (src:org.lwjgl.PointerBuffer):org.lwjgl.PointerBuffer {})
	@:overload(function (index:Int,l:haxe.Int64):org.lwjgl.PointerBuffer {})
	@:overload(function (index:Int,buffer:java.nio.ByteBuffer):Void {})
	@:overload(function (index:Int,buffer:java.nio.DoubleBuffer):Void {})
	@:overload(function (index:Int,buffer:java.nio.FloatBuffer):Void {})
	@:overload(function (index:Int,buffer:java.nio.IntBuffer):Void {})
	@:overload(function (index:Int,buffer:java.nio.LongBuffer):Void {})
	@:overload(function (index:Int,buffer:java.nio.ShortBuffer):Void {})
	@:overload(function (index:Int,wrapper:org.lwjgl.Pointer):org.lwjgl.PointerBuffer {})
	@:overload(function (src:java.NativeArray<haxe.Int64>,offset:Int,length:Int):org.lwjgl.PointerBuffer {})
	@:overload(function (target:java.nio.ByteBuffer,l:haxe.Int64):Void {})
/**
 * Returns this buffer's capacity. </p>
 *
 * @return the capacity of this buffer
 */
	public function capacity():Int;
/** Returns a PointerBuffer instance that starts at the address found at the current position and has capacity equal to the specified size.  */
/** Returns a PointerBuffer instance that starts at the address found at the specified index and has capacity equal to the specified size.  */
	public function getPointerBuffer(index:Int,size:Int):org.lwjgl.PointerBuffer;
	@:overload(function (size:Int):org.lwjgl.PointerBuffer {})
	public function isReadOnly():Bool;
/**
 * Creates a new pointer buffer whose content is a shared subsequence of
 * this buffer's content.
 * <p/>
 * <p> The content of the new buffer will start at this buffer's current
 * position.  Changes to this buffer's content will be visible in the new
 * buffer, and vice versa; the two buffers' position, limit, and mark
 * values will be independent.
 * <p/>
 * <p> The new buffer's position will be zero, its capacity and its limit
 * will be the number of longs remaining in this buffer, and its mark
 * will be undefined.  The new buffer will be direct if, and only if, this
 * buffer is direct, and it will be read-only if, and only if, this buffer
 * is read-only.  </p>
 *
 * @return the new pointer buffer
 */
	public function slice():org.lwjgl.PointerBuffer;
/**
 * Returns the current hash code of this buffer.
 * <p/>
 * <p> The hash code of a pointer buffer depends only upon its remaining
 * elements; that is, upon the elements from <tt>position()</tt> up to, and
 * including, the element at <tt>limit()</tt>&nbsp;-&nbsp;<tt>1</tt>.
 * <p/>
 * <p> Because buffer hash codes are content-dependent, it is inadvisable
 * to use buffers as keys in hash maps or similar data structures unless it
 * is known that their contents will not change.  </p>
 *
 * @return the current hash code of this buffer
 */
	public function hashCode():Int;
/**
 * Relative <i>get</i> method.  Reads the pointer at this buffer's
 * current position, and then increments the position. </p>
 *
 * @return the long at the buffer's current position
 *
 * @throws java.nio.BufferUnderflowException If the buffer's current position is not smaller than its limit
 */
/**
 * Absolute <i>get</i> method.  Reads the pointer at the specified
 * index. </p>
 *
 * @param index The index from which the long will be read
 *
 * @return the long at the specified index
 *
 * @throws IndexOutOfBoundsException If <tt>index</tt> is negative
 *                                   or not smaller than the buffer's limit
 */
/**
 * Relative bulk <i>get</i> method.
 * <p/>
 * <p> This method transfers longs from this buffer into the specified
 * destination array.  An invocation of this method of the form
 * <tt>src.get(a)</tt> behaves in exactly the same way as the invocation
 * <p/>
 * <pre>
 *     src.get(a, 0, a.length) </pre>
 *
 * @return This buffer
 *
 * @throws java.nio.BufferUnderflowException If there are fewer than <tt>length</tt> longs
 *                                           remaining in this buffer
 */
/**
 * Relative bulk <i>get</i> method.
 * <p/>
 * <p> This method transfers longs from this buffer into the specified
 * destination array.  If there are fewer longs remaining in the
 * buffer than are required to satisfy the request, that is, if
 * <tt>length</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>, then no
 * longs are transferred and a {@link java.nio.BufferUnderflowException} is
 * thrown.
 * <p/>
 * <p> Otherwise, this method copies <tt>length</tt> longs from this
 * buffer into the specified array, starting at the current position of this
 * buffer and at the specified offset in the array.  The position of this
 * buffer is then incremented by <tt>length</tt>.
 * <p/>
 * <p> In other words, an invocation of this method of the form
 * <tt>src.get(dst,&nbsp;off,&nbsp;len)</tt> has exactly the same effect as
 * the loop
 * <p/>
 * <pre>
 *     for (int i = off; i < off + len; i++)
 *         dst[i] = src.get(); </pre>
 * <p/>
 * except that it first checks that there are sufficient longs in
 * this buffer and it is potentially much more efficient. </p>
 *
 * @param dst    The array into which longs are to be written
 * @param offset The offset within the array of the first long to be
 *               written; must be non-negative and no larger than
 *               <tt>dst.length</tt>
 * @param length The maximum number of longs to be written to the specified
 *               array; must be non-negative and no larger than
 *               <tt>dst.length - offset</tt>
 *
 * @return This buffer
 *
 * @throws java.nio.BufferUnderflowException If there are fewer than <tt>length</tt> longs
 *                                           remaining in this buffer
 * @throws IndexOutOfBoundsException         If the preconditions on the <tt>offset</tt> and <tt>length</tt>
 *                                           parameters do not hold
 */
/**
 * Convenience get from a source ByteBuffer.
 *
 * @param target the source ByteBuffer
 * @param index  the index at which the long will be read
 */
	static public function get(target:java.nio.ByteBuffer,index:Int):haxe.Int64;
	@:overload(function ():haxe.Int64 {})
	@:overload(function (index:Int):haxe.Int64 {})
	@:overload(function (dst:java.NativeArray<haxe.Int64>):org.lwjgl.PointerBuffer {})
	@:overload(function (dst:java.NativeArray<haxe.Int64>,offset:Int,length:Int):org.lwjgl.PointerBuffer {})
/**
 * Returns this buffer's limit. </p>
 *
 * @return the limit of this buffer
 */
/**
 * Sets this buffer's limit.  If the position is larger than the new limit
 * then it is set to the new limit.  If the mark is defined and larger than
 * the new limit then it is discarded. </p>
 *
 * @param newLimit The new limit value; must be non-negative
 *                 and no larger than this buffer's capacity
 *
 * @return This buffer
 *
 * @throws IllegalArgumentException If the preconditions on <tt>newLimit</tt> do not hold
 */
	public function limit(newLimit:Int):org.lwjgl.PointerBuffer;
	@:overload(function ():Int {})
/**
 * Flips this buffer.  The limit is set to the current position and then
 * the position is set to zero.  If the mark is defined then it is
 * discarded.
 * <p/>
 * <p> After a sequence of channel-read or <i>put</i> operations, invoke
 * this method to prepare for a sequence of channel-write or relative
 * <i>get</i> operations.  For example:
 * <p/>
 * <blockquote><pre>
 * buf.put(magic);    // Prepend header
 * in.read(buf);      // Read data into rest of buffer
 * buf.flip();        // Flip buffer
 * out.write(buf);    // Write header + data to channel</pre></blockquote>
 * <p/>
 * <p> This method is often used in conjunction with the {@link
 * java.nio.ByteBuffer#compact compact} method when transferring data from
 * one place to another.  </p>
 *
 * @return This buffer
 */
	public function flip():org.lwjgl.PointerBuffer;
/** Returns a LongBuffer instance that starts at the address found at the current position and has capacity equal to the specified size.  */
/** Returns a LongBuffer instance that starts at the address found at the specified index and has capacity equal to the specified size.  */
	public function getLongBuffer(index:Int,size:Int):java.nio.LongBuffer;
	@:overload(function (size:Int):java.nio.LongBuffer {})
/**
 * Retrieves this buffer's byte order.
 * <p/>
 * <p> The byte order of a pointer buffer created by allocation or by
 * wrapping an existing <tt>long</tt> array is the {@link
 * java.nio.ByteOrder#nativeOrder </code>native order<code>} of the underlying
 * hardware.  The byte order of a pointer buffer created as a <a
 * href="ByteBuffer.html#views">view</a> of a byte buffer is that of the
 * byte buffer at the moment that the view is created.  </p>
 *
 * @return This buffer's byte order
 */
	public function order():java.nio.ByteOrder;
/**
 * Allocates a new pointer buffer.
 * <p/>
 * <p> The new buffer's position will be zero, its limit will be its
 * capacity, and its mark will be undefined.  </p>
 *
 * @param capacity The new buffer's capacity, in pointers
 *
 * @return the new pointer buffer
 *
 * @throws IllegalArgumentException If the <tt>capacity</tt> is a negative integer
 */
	static public function allocateDirect(capacity:Int):org.lwjgl.PointerBuffer;
/**
 * Tells whether there are any elements between the current position and
 * the limit. </p>
 *
 * @return <tt>true</tt> if, and only if, there is at least one element
 * remaining in this buffer
 */
	public function hasRemaining():Bool;
/**
 * Clears this buffer.  The position is set to zero, the limit is set to
 * the capacity, and the mark is discarded.
 * <p/>
 * <p> Invoke this method before using a sequence of channel-read or
 * <i>put</i> operations to fill this buffer.  For example:
 * <p/>
 * <blockquote><pre>
 * buf.clear();     // Prepare buffer for reading
 * in.read(buf);    // Read data</pre></blockquote>
 * <p/>
 * <p> This method does not actually erase the data in the buffer, but it
 * is named as if it did because it will most often be used in situations
 * in which that might as well be the case. </p>
 *
 * @return This buffer
 */
	public function clear():org.lwjgl.PointerBuffer;
/**
 * This method is used in slice and duplicate instead of normal object construction,
 * so that subclasses can return themselves.
 *
 * @param source
 *
 * @return A new PointerBuffer instance
 */
	static private function newInstance(source:java.nio.ByteBuffer):org.lwjgl.PointerBuffer;
/**
 * Creates a new pointer buffer that shares this buffer's content.
 * <p/>
 * <p> The content of the new buffer will be that of this buffer.  Changes
 * to this buffer's content will be visible in the new buffer, and vice
 * versa; the two buffers' position, limit, and mark values will be
 * independent.
 * <p/>
 * <p> The new buffer's capacity, limit and position will be
 * identical to those of this buffer. </p>
 *
 * @return the new pointer buffer
 */
	public function duplicate():org.lwjgl.PointerBuffer;
/**
 * Returns this buffer's position, in bytes. </p>
 *
 * @return the position of this buffer in bytes.
 */
	public function positionByte():Int;
/**
 * Returns the number of elements between the current position and the
 * limit. </p>
 *
 * @return the number of elements remaining in this buffer
 */
	public function remaining():Int;
/**
 * Rewinds this buffer.  The position is set to zero and the mark is
 * discarded.
 * <p/>
 * <p> Invoke this method before a sequence of channel-write or <i>get</i>
 * operations, assuming that the limit has already been set
 * appropriately.  For example:
 * <p/>
 * <blockquote><pre>
 * out.write(buf);    // Write remaining data
 * buf.rewind();      // Rewind buffer
 * buf.get(array);    // Copy data into array</pre></blockquote>
 *
 * @return This buffer
 */
	public function rewind():org.lwjgl.PointerBuffer;
/**
 * Tells whether or not this buffer is equal to another object.
 * <p/>
 * <p> Two pointer buffers are equal if, and only if,
 * <p/>
 * <p><ol>
 * <p/>
 * <li><p> They have the same element type,  </p></li>
 * <p/>
 * <li><p> They have the same number of remaining elements, and
 * </p></li>
 * <p/>
 * <li><p> The two sequences of remaining elements, considered
 * independently of their starting positions, are pointwise equal.
 * </p></li>
 * <p/>
 * </ol>
 * <p/>
 * <p> A pointer buffer is not equal to any other type of object.  </p>
 *
 * @param ob The object to which this buffer is to be compared
 *
 * @return <tt>true</tt> if, and only if, this buffer is equal to the
 * given object
 */
	public function equals(ob:Dynamic):Bool;
/**
 * Resets this buffer's position to the previously-marked position.
 * <p/>
 * <p> Invoking this method neither changes nor discards the mark's
 * value. </p>
 *
 * @return This buffer
 *
 * @throws java.nio.InvalidMarkException If the mark has not been set
 */
	public function reset():org.lwjgl.PointerBuffer;
/**
 * Returns the number of bytes between the current position and the
 * limit. </p>
 *
 * @return the number of bytes remaining in this buffer
 */
	public function remainingByte():Int;
/**
 * Returns a string summarizing the state of this buffer.
 *
 * @return A summary string
 */
	public function toString():String;
/**
 * Returns this buffer's position. </p>
 *
 * @return the position of this buffer
 */
/**
 * Sets this buffer's position.  If the mark is defined and larger than the
 * new position then it is discarded. </p>
 *
 * @param newPosition The new position value; must be non-negative
 *                    and no larger than the current limit
 *
 * @return This buffer
 *
 * @throws IllegalArgumentException If the preconditions on <tt>newPosition</tt> do not hold
 */
	public function position(newPosition:Int):org.lwjgl.PointerBuffer;
	@:overload(function ():Int {})
/**
 * Sets this buffer's mark at its position. </p>
 *
 * @return This buffer
 */
	public function mark():org.lwjgl.PointerBuffer;
/** Returns a DoubleBuffer instance that starts at the address found at the current position and has capacity equal to the specified size.  */
/** Returns a DoubleBuffer instance that starts at the address found at the specified index and has capacity equal to the specified size.  */
	public function getDoubleBuffer(index:Int,size:Int):java.nio.DoubleBuffer;
	@:overload(function (size:Int):java.nio.DoubleBuffer {})

}
