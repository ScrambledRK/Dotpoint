package org.lwjgl.opengl;

import java.StdTypes;
@:native("org.lwjgl.opengl.EXTDebugMarker")
@:final
/**
 * Native bindings to the <a href="http://www.opengl.org/registry/specs/EXT/debug_marker.txt">EXT_debug_marker</a> extension.
 * 
 * <p>This extension defines a mechanism for OpenGL and OpenGL ES applications to annotate their command stream with markers for discrete events and groups
 * of commands using descriptive text markers.</p>
 * 
 * <p>When profiling or debugging such an application within a debugger or profiler it is difficult to relate the commands within the command stream to the
 * elements of the scene or parts of the program code to which they correspond. Markers help obviate this by allowing applications to specify this link.</p>
 * 
 * <p>The intended purpose of this is purely to improve the user experience within OpenGL and OpenGL ES development tools.</p>
 */
extern class EXTDebugMarker 
{
/** Function address.  */
	public var InsertEventMarkerEXT:haxe.Int64;
/** Function address.  */
	public var PushGroupMarkerEXT:haxe.Int64;
/** Function address.  */
	public var PopGroupMarkerEXT:haxe.Int64;
	public function new(provider:org.lwjgl.system.FunctionProvider):Void;
/** CharSequence version of: {@link #glPushGroupMarkerEXT PushGroupMarkerEXT}  */
/** Alternative version of: {@link #glPushGroupMarkerEXT PushGroupMarkerEXT}  */
/**
 * 
 *
 * @param length 
 * @param marker 
 */
	static public function glPushGroupMarkerEXT(length:Int,marker:java.nio.ByteBuffer):Void;
	@:overload(function (marker:java.lang.CharSequence):Void {})
	@:overload(function (marker:java.nio.ByteBuffer):Void {})
/** Unsafe version of {@link #glPushGroupMarkerEXT PushGroupMarkerEXT}  */
/** JNI method for {@link #glPushGroupMarkerEXT PushGroupMarkerEXT}  */
	static public function nglPushGroupMarkerEXT(length:Int,marker:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (length:Int,marker:haxe.Int64):Void {})
	static public function glPopGroupMarkerEXT():Void;
/** Returns the {@link EXTDebugMarker} instance for the current context.  */
	static public function getInstance():org.lwjgl.opengl.EXTDebugMarker;
/** CharSequence version of: {@link #glInsertEventMarkerEXT InsertEventMarkerEXT}  */
/** Alternative version of: {@link #glInsertEventMarkerEXT InsertEventMarkerEXT}  */
/**
 * 
 *
 * @param length 
 * @param marker 
 */
	static public function glInsertEventMarkerEXT(length:Int,marker:java.nio.ByteBuffer):Void;
	@:overload(function (marker:java.lang.CharSequence):Void {})
	@:overload(function (marker:java.nio.ByteBuffer):Void {})
/** JNI method for {@link #glPopGroupMarkerEXT PopGroupMarkerEXT}  */
	static public function nglPopGroupMarkerEXT(__functionAddress:haxe.Int64):Void;
/** Unsafe version of {@link #glInsertEventMarkerEXT InsertEventMarkerEXT}  */
/** JNI method for {@link #glInsertEventMarkerEXT InsertEventMarkerEXT}  */
	static public function nglInsertEventMarkerEXT(length:Int,marker:haxe.Int64,__functionAddress:haxe.Int64):Void;
	@:overload(function (length:Int,marker:haxe.Int64):Void {})

}
