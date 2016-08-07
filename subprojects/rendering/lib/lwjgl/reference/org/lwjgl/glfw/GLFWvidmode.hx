package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.GLFWvidmode")
@:final
/** Video mode.  */
extern class GLFWvidmode implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var WIDTH:Int;
/** The struct member offsets.  */
	static public var HEIGHT:Int;
/** The struct member offsets.  */
	static public var REDBITS:Int;
/** The struct member offsets.  */
	static public var GREENBITS:Int;
/** The struct member offsets.  */
	static public var BLUEBITS:Int;
/** The struct member offsets.  */
	static public var REFRESHRATE:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getRefreshRate():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(width:Int,height:Int,redBits:Int,greenBits:Int,blueBits:Int,refreshRate:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function greenBits(glfwvidmode:java.nio.ByteBuffer,greenBits:Int):Void;
	@:overload(function (glfwvidmode:java.nio.ByteBuffer):Int {})
	public function setRedBits(redBits:Int):Void;
	static public function blueBits(glfwvidmode:java.nio.ByteBuffer,blueBits:Int):Void;
	@:overload(function (glfwvidmode:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function setGreenBits(greenBits:Int):Void;
	public function getWidth():Int;
	public function getGreenBits():Int;
	public function getRedBits():Int;
	public function setWidth(width:Int):Void;
	public function setHeight(height:Int):Void;
	public function getHeight():Int;
	public function getBlueBits():Int;
	public function setRefreshRate(refreshRate:Int):Void;
	static public function refreshRate(glfwvidmode:java.nio.ByteBuffer,refreshRate:Int):Void;
	@:overload(function (glfwvidmode:java.nio.ByteBuffer):Int {})
	static public function redBits(glfwvidmode:java.nio.ByteBuffer,redBits:Int):Void;
	@:overload(function (glfwvidmode:java.nio.ByteBuffer):Int {})
	static public function width(glfwvidmode:java.nio.ByteBuffer,width:Int):Void;
	@:overload(function (glfwvidmode:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function setBlueBits(blueBits:Int):Void;
	static public function height(glfwvidmode:java.nio.ByteBuffer,height:Int):Void;
	@:overload(function (glfwvidmode:java.nio.ByteBuffer):Int {})

}
