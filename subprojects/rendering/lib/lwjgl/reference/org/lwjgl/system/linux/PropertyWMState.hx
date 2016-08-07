package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.PropertyWMState")
@:final
/** Contents of the WM_STATE property.  */
extern class PropertyWMState implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var STATE:Int;
/** The struct member offsets.  */
	static public var ICON:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function setIcon(icon:haxe.Int64):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(state:Int,icon:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getState():Int;
	static public function icon(propertywmstate:java.nio.ByteBuffer,icon:haxe.Int64):Void;
	@:overload(function (propertywmstate:java.nio.ByteBuffer):haxe.Int64 {})
	public function setState(state:Int):Void;
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	static public function state(propertywmstate:java.nio.ByteBuffer,state:Int):Void;
	@:overload(function (propertywmstate:java.nio.ByteBuffer):Int {})
	public function getIcon():haxe.Int64;

}
