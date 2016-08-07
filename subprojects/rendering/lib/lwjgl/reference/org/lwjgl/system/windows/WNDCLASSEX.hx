package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.WNDCLASSEX")
@:final
/** Contains the window class attributes that are registered by the {@link WinUser#RegisterClassEx} function.  */
extern class WNDCLASSEX implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SIZE:Int;
/** The struct member offsets.  */
	static public var STYLE:Int;
/** The struct member offsets.  */
	static public var WNDPROC:Int;
/** The struct member offsets.  */
	static public var CLSEXTRA:Int;
/** The struct member offsets.  */
	static public var WNDEXTRA:Int;
/** The struct member offsets.  */
	static public var INSTANCE:Int;
/** The struct member offsets.  */
	static public var ICON:Int;
/** The struct member offsets.  */
	static public var CURSOR:Int;
/** The struct member offsets.  */
	static public var BACKGROUND:Int;
/** The struct member offsets.  */
	static public var MENUNAME:Int;
/** The struct member offsets.  */
	static public var CLASSNAME:Int;
/** The struct member offsets.  */
	static public var ICONSM:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function cursor(wndclassex:java.nio.ByteBuffer,cursor:haxe.Int64):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):haxe.Int64 {})
	public function setWndProc(wndProc:haxe.Int64):Void;
	public function setClsExtra(clsExtra:Int):Void;
	public function getWndProc():haxe.Int64;
	public function getIconSm():haxe.Int64;
	static public function wndProc(wndclassex:java.nio.ByteBuffer,wndProc:haxe.Int64):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):haxe.Int64 {})
	static public function menuNameString(wndclassex:java.nio.ByteBuffer):String;
	static public function instance(wndclassex:java.nio.ByteBuffer,instance:haxe.Int64):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):haxe.Int64 {})
	public function getWndExtra():Int;
	static public function icon(wndclassex:java.nio.ByteBuffer,icon:haxe.Int64):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):haxe.Int64 {})
	static public function menuName(wndclassex:java.nio.ByteBuffer,menuName:haxe.Int64):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (wndclassex:java.nio.ByteBuffer,menuName:java.nio.ByteBuffer):Void {})
	static public function className(wndclassex:java.nio.ByteBuffer,className:haxe.Int64):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (wndclassex:java.nio.ByteBuffer,className:java.nio.ByteBuffer):Void {})
	public function setClassName(className:java.nio.ByteBuffer):Void;
	@:overload(function (className:haxe.Int64):Void {})
	static public function classNameString(wndclassex:java.nio.ByteBuffer):String;
	public function setBackground(background:haxe.Int64):Void;
	public function getClassNameBuffer():java.nio.ByteBuffer;
	public function setSize(size:Int):Void;
	public function getStyle():Int;
	public function setIconSm(iconSm:haxe.Int64):Void;
	static public function menuNameBuffer(wndclassex:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function setStyle(style:Int):Void;
	public function getMenuName():haxe.Int64;
	public function buffer():java.nio.ByteBuffer;
	static public function classNameBuffer(wndclassex:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function setMenuName(menuName:java.nio.ByteBuffer):Void;
	@:overload(function (menuName:haxe.Int64):Void {})
	public function getMenuNameString():String;
	public function getCursor():haxe.Int64;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(size:Int,style:Int,wndProc:haxe.Int64,clsExtra:Int,wndExtra:Int,instance:haxe.Int64,icon:haxe.Int64,cursor:haxe.Int64,background:haxe.Int64,menuName:java.nio.ByteBuffer,className:java.nio.ByteBuffer,iconSm:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function wndExtra(wndclassex:java.nio.ByteBuffer,wndExtra:Int):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):Int {})
	public function getClassNameString():String;
	static public function iconSm(wndclassex:java.nio.ByteBuffer,iconSm:haxe.Int64):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):haxe.Int64 {})
	public function getPointer():haxe.Int64;
	public function getClsExtra():Int;
	public function getIcon():haxe.Int64;
	public function setWndExtra(wndExtra:Int):Void;
	public function setIcon(icon:haxe.Int64):Void;
	static public function clsExtra(wndclassex:java.nio.ByteBuffer,clsExtra:Int):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):Int {})
	public function getSize():Int;
	static public function size(wndclassex:java.nio.ByteBuffer,size:Int):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):Int {})
	static public function background(wndclassex:java.nio.ByteBuffer,background:haxe.Int64):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):haxe.Int64 {})
	public function getMenuNameBuffer():java.nio.ByteBuffer;
	public function setCursor(cursor:haxe.Int64):Void;
	static public function style(wndclassex:java.nio.ByteBuffer,style:Int):Void;
	@:overload(function (wndclassex:java.nio.ByteBuffer):Int {})
	public function getInstance():haxe.Int64;
	public function getClassName():haxe.Int64;
	public function getBackground():haxe.Int64;
	public function setInstance(instance:haxe.Int64):Void;

}
