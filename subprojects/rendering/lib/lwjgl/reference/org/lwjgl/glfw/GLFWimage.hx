package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWimage")
@:final
/** Image data.  */
extern class GLFWimage implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var WIDTH:Int;
/** The struct member offsets.  */
	static public var HEIGHT:Int;
/** The struct member offsets.  */
	static public var PIXELS:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(width:Int,height:Int,pixels:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getHeight():Int;
	static public function pixels(glfwimage:java.nio.ByteBuffer,pixels:haxe.Int64):Void;
	@:overload(function (glfwimage:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (glfwimage:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (glfwimage:java.nio.ByteBuffer,pixels:java.nio.ByteBuffer):Void {})
	public function setPixels(pixels:java.nio.ByteBuffer):Void;
	@:overload(function (pixels:haxe.Int64):Void {})
	public function getPixels(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	static public function width(glfwimage:java.nio.ByteBuffer,width:Int):Void;
	@:overload(function (glfwimage:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	public function getWidth():Int;
	public function setWidth(width:Int):Void;
	public function setHeight(height:Int):Void;
	static public function height(glfwimage:java.nio.ByteBuffer,height:Int):Void;
	@:overload(function (glfwimage:java.nio.ByteBuffer):Int {})

}
