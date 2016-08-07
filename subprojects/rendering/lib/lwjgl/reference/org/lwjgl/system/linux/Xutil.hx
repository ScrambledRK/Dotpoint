package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.Xutil")
@:final
/** Native bindings to &lt;X11/Xutil.h&gt;.  */
extern class Xutil 
{
/** Definition for flags of {@link XWMHints}  */
	inline static public var InputHint:Int = 1;
/** Definition for flags of {@link XWMHints}  */
	inline static public var StateHint:Int = 2;
/** Definition for flags of {@link XWMHints}  */
	inline static public var IconPixmapHint:Int = 4;
/** Definition for flags of {@link XWMHints}  */
	inline static public var IconWindowHint:Int = 8;
/** Definition for flags of {@link XWMHints}  */
	inline static public var IconPositionHint:Int = 16;
/** Definition for flags of {@link XWMHints}  */
	inline static public var IconMaskHint:Int = 32;
/** Definition for flags of {@link XWMHints}  */
	inline static public var WindowGroupHint:Int = 64;
/** Definition for flags of {@link XWMHints}  */
	inline static public var AllHints:Int = 127;
/** Definition for flags of {@link XWMHints}  */
	inline static public var XUrgencyHint:Int = 256;
/** Definitions for initial window state  */
	inline static public var WithdrawnState:Int = 0;
/** Definitions for initial window state  */
	inline static public var NormalState:Int = 1;
/** Definitions for initial window state  */
	inline static public var IconicState:Int = 3;
/** flags argument in size hints  */
	inline static public var USPosition:Int = 1;
/** flags argument in size hints  */
	inline static public var USSize:Int = 2;
/** flags argument in size hints  */
	inline static public var PPosition:Int = 4;
/** flags argument in size hints  */
	inline static public var PSize:Int = 8;
/** flags argument in size hints  */
	inline static public var PMinSize:Int = 16;
/** flags argument in size hints  */
	inline static public var PMaxSize:Int = 32;
/** flags argument in size hints  */
	inline static public var PResizeInc:Int = 64;
/** flags argument in size hints  */
	inline static public var PAspect:Int = 128;
/** flags argument in size hints  */
	inline static public var PBaseSize:Int = 256;
/** flags argument in size hints  */
	inline static public var PWinGravity:Int = 512;
/** JNI method for {@link #XSaveContext}  */
	static public function nXSaveContext(display:haxe.Int64,rid:haxe.Int64,context:Int,data:haxe.Int64):Int;
/** Alternative version of: {@link #XLookupString}  */
/**
 * Translates a key event to a {@code KeySym} and a string. The {@code KeySym} is obtained by using the standard interpretation of the Shift, Lock, group,
 * and numlock modifiers as defined in the X Protocol specification. If the {@code KeySym} has been rebound (see {@link Xlib#XRebindKeysym}), the bound
 * string will be stored in the buffer. Otherwise, the {@code KeySym} is mapped, if possible, to an ISO Latin-1 character or (if the Control modifier is
 * on) to an ASCII control character, and that character is stored in the buffer. {@code XLookupString} returns the number of characters that are stored
 * in the buffer.
 * 
 * <p>If present (non-{@code NULL}), the {@link XComposeStatus} structure records the state, which is private to Xlib, that needs preservation across calls to
 * {@code XLookupString} to implement compose processing. The creation of {@link XComposeStatus} structures is implementation dependent; a portable
 * program must pass {@code NULL} for this argument.</p>
 * 
 * <p>{@code XLookupString} depends on the cached keyboard information mentioned in the previous section, so it is necessary to use
 * {@link Xlib#XRefreshKeyboardMapping} to keep this information up-to-date.</p>
 *
 * @param event_struct  specifies the {@link XKeyEvent} structure to be used.
 * @param buffer_return returns the translated characters
 * @param bytes_buffer  specifies the length of the buffer. No more than {@code bytes_buffer} of translation are returned.
 * @param keysym_return returns the {@code KeySym} computed from the event if this argument is not {@code NULL}
 * @param status_in_out specifies or returns the {@link XComposeStatus} structure or {@code NULL}.
 */
	static public function XLookupString(event_struct:java.nio.ByteBuffer,buffer_return:java.nio.ByteBuffer,bytes_buffer:Int,keysym_return:java.nio.ByteBuffer,status_in_out:java.nio.ByteBuffer):Int;
	@:overload(function (event_struct:java.nio.ByteBuffer,buffer_return:java.nio.ByteBuffer,keysym_return:org.lwjgl.PointerBuffer,status_in_out:java.nio.ByteBuffer):Int {})
/**
 * Allocates and returns a pointer to a {@link XSizeHints} structure. Note that all fields in the {@link XSizeHints} structure are initially set to zero.
 * If insufficient memory is available, {@code XAllocSizeHints} returns {@code NULL}. To free the memory allocated to this structure, use {@link Xlib#XFree}.
 */
	static public function XAllocSizeHints():java.nio.ByteBuffer;
/**
 * Save a data value that corresponds to a resource ID and context type.
 *
 * @param display the connection to the X server
 * @param rid     the resource ID with which the data is associated
 * @param context the context type to which the data belongs
 * @param data    the data to be associated with the window and type
 */
	static public function XSaveContext(display:haxe.Int64,rid:haxe.Int64,context:Int,data:java.nio.ByteBuffer):Int;
/**
 * Allocates and returns a pointer to a {@link XWMHints} structure. Note that all fields in the {@link XWMHints} structure are initially set to zero. If
 * insufficient memory is available, {@code XAllocWMHints} returns {@code NULL}. To free the memory allocated to this structure, use {@link Xlib#XFree}.
 */
	static public function XAllocWMHints():java.nio.ByteBuffer;
/**
 * Deletes an entry for the specified resource ID and type.
 *
 * @param display the connection to the X server
 * @param rid     the resource ID with which the data is associated
 * @param context the context type to which the data belongs
 */
	static public function XDeleteContext(display:haxe.Int64,rid:haxe.Int64,context:Int):Int;
/** JNI method for {@link #XAllocSizeHints}  */
	static public function nXAllocSizeHints():haxe.Int64;
/** JNI method for {@link #XLookupString}  */
	static public function nXLookupString(event_struct:haxe.Int64,buffer_return:haxe.Int64,bytes_buffer:Int,keysym_return:haxe.Int64,status_in_out:haxe.Int64):Int;
/**
 * Returns the data associated with a resource ID and type.
 *
 * @param display     the connection to the X server
 * @param rid         the resource ID with which the data is associated
 * @param context     the context type to which the data belongs
 * @param data_return returns the data
 */
/** Alternative version of: {@link #XFindContext}  */
	static public function XFindContext(display:haxe.Int64,rid:haxe.Int64,context:Int,data_return:org.lwjgl.PointerBuffer):Int;
	@:overload(function (display:haxe.Int64,rid:haxe.Int64,context:Int,data_return:java.nio.ByteBuffer):Int {})
/** JNI method for {@link #XDeleteContext}  */
	static public function nXDeleteContext(display:haxe.Int64,rid:haxe.Int64,context:Int):Int;
/** JNI method for {@link #XFindContext}  */
	static public function nXFindContext(display:haxe.Int64,rid:haxe.Int64,context:Int,data_return:haxe.Int64):Int;
/** JNI method for {@link #XAllocWMHints}  */
	static public function nXAllocWMHints():haxe.Int64;
/** Creates a unique context.  */
	static public function XUniqueContext():Int;

}
