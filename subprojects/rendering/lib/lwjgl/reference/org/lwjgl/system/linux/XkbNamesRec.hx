package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XkbNamesRec")
@:final
/** Describes an Xkb keyboard.  */
extern class XkbNamesRec implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var KEYCODES:Int;
/** The struct member offsets.  */
	static public var GEOMETRY:Int;
/** The struct member offsets.  */
	static public var SYMBOLS:Int;
/** The struct member offsets.  */
	static public var TYPES:Int;
/** The struct member offsets.  */
	static public var COMPAT:Int;
/** The struct member offsets.  */
	static public var VMODS:Int;
/** The struct member offsets.  */
	static public var INDICATORS:Int;
/** The struct member offsets.  */
	static public var GROUPS:Int;
/** The struct member offsets.  */
	static public var KEYS:Int;
/** The struct member offsets.  */
	static public var KEY_ALIASES:Int;
/** The struct member offsets.  */
	static public var RADIO_GROUPS:Int;
/** The struct member offsets.  */
	static public var PHYS_SYMBOLS:Int;
/** The struct member offsets.  */
	static public var NUM_KEYS:Int;
/** The struct member offsets.  */
	static public var NUM_KEY_ALIASES:Int;
/** The struct member offsets.  */
	static public var NUM_RG:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	public function getKeyAliases():haxe.Int64;
	public function getGeometry():haxe.Int64;
	public function setIndicators(index:Int,indicators:haxe.Int64):Void;
	@:overload(function (indicators:java.nio.ByteBuffer):Void {})
	public function setKeycodes(keycodes:haxe.Int64):Void;
	public function setCompat(compat:haxe.Int64):Void;
	public function getIndicators(indicators:java.nio.ByteBuffer):Void;
	static public function phys_symbols(xkbnamesrec:java.nio.ByteBuffer,phys_symbols:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):haxe.Int64 {})
	static public function vmods(xkbnamesrec:java.nio.ByteBuffer,index:Int,vmods:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer,index:Int):haxe.Int64 {})
	public function setRadioGroups(radio_groups:java.nio.ByteBuffer):Void;
	@:overload(function (radio_groups:haxe.Int64):Void {})
	static public function keysBuffer(xkbnamesrec:java.nio.ByteBuffer):java.nio.ByteBuffer;
	public function setKeyAliases(key_aliases:java.nio.ByteBuffer):Void;
	@:overload(function (key_aliases:haxe.Int64):Void {})
	public function buffer():java.nio.ByteBuffer;
	public function getGroups(groups:java.nio.ByteBuffer):Void;
	static public function indicators(xkbnamesrec:java.nio.ByteBuffer,index:Int,indicators:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer,index:Int):haxe.Int64 {})
	public function setNumKeys(num_keys:Int):Void;
	public function getCompat():haxe.Int64;
	static public function keycodes(xkbnamesrec:java.nio.ByteBuffer,keycodes:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):haxe.Int64 {})
	public function getPhysSymbols():haxe.Int64;
	static public function num_key_aliases(xkbnamesrec:java.nio.ByteBuffer,num_key_aliases:Int):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):Int {})
	public function setVmods(index:Int,vmods:haxe.Int64):Void;
	@:overload(function (vmods:java.nio.ByteBuffer):Void {})
	public function setNumKeyAliases(num_key_aliases:Int):Void;
	public function setKeys(keys:java.nio.ByteBuffer):Void;
	@:overload(function (keys:haxe.Int64):Void {})
	static public function compat(xkbnamesrec:java.nio.ByteBuffer,compat:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):haxe.Int64 {})
	public function getVmods(vmods:java.nio.ByteBuffer):Void;
	public function getKeysBuffer():java.nio.ByteBuffer;
	static public function keys(xkbnamesrec:java.nio.ByteBuffer,keys:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer,keys:java.nio.ByteBuffer):Void {})
	public function getSymbols():haxe.Int64;
	public function getNumRg():Int;
	static public function groupsSet(xkbnamesrec:java.nio.ByteBuffer,groups:java.nio.ByteBuffer):Void;
	static public function vmodsSet(xkbnamesrec:java.nio.ByteBuffer,vmods:java.nio.ByteBuffer):Void;
	public function setSymbols(symbols:haxe.Int64):Void;
	public function setPhysSymbols(phys_symbols:haxe.Int64):Void;
	static public function groupsGet(xkbnamesrec:java.nio.ByteBuffer,groups:java.nio.ByteBuffer):Void;
	static public function radio_groups(xkbnamesrec:java.nio.ByteBuffer,radio_groups:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer,radio_groups:java.nio.ByteBuffer):Void {})
	static public function symbols(xkbnamesrec:java.nio.ByteBuffer,symbols:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):haxe.Int64 {})
	static public function num_rg(xkbnamesrec:java.nio.ByteBuffer,num_rg:Int):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):Int {})
	public function setGroups(index:Int,groups:haxe.Int64):Void;
	@:overload(function (groups:java.nio.ByteBuffer):Void {})
	static public function vmodsGet(xkbnamesrec:java.nio.ByteBuffer,vmods:java.nio.ByteBuffer):Void;
	public function getNumKeys():Int;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(keycodes:haxe.Int64,geometry:haxe.Int64,symbols:haxe.Int64,types:haxe.Int64,compat:haxe.Int64,vmods:java.nio.ByteBuffer,indicators:java.nio.ByteBuffer,groups:java.nio.ByteBuffer,keys:java.nio.ByteBuffer,key_aliases:java.nio.ByteBuffer,radio_groups:java.nio.ByteBuffer,phys_symbols:haxe.Int64,num_keys:Int,num_key_aliases:Int,num_rg:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function types(xkbnamesrec:java.nio.ByteBuffer,types:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):haxe.Int64 {})
	public function setNumRg(num_rg:Int):Void;
	static public function groups(xkbnamesrec:java.nio.ByteBuffer,index:Int,groups:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer,index:Int):haxe.Int64 {})
	public function getNumKeyAliases():Int;
	static public function num_keys(xkbnamesrec:java.nio.ByteBuffer,num_keys:Int):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):Int {})
	public function getPointer():haxe.Int64;
	public function getKeys():haxe.Int64;
	static public function key_aliases(xkbnamesrec:java.nio.ByteBuffer,key_aliases:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer,key_aliases:java.nio.ByteBuffer):Void {})
	public function setGeometry(geometry:haxe.Int64):Void;
	public function setTypes(types:haxe.Int64):Void;
	public function getKeycodes():haxe.Int64;
	public function getRadioGroups(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	static public function indicatorsSet(xkbnamesrec:java.nio.ByteBuffer,indicators:java.nio.ByteBuffer):Void;
	static public function key_aliasesBuffer(xkbnamesrec:java.nio.ByteBuffer):java.nio.ByteBuffer;
	static public function geometry(xkbnamesrec:java.nio.ByteBuffer,geometry:haxe.Int64):Void;
	@:overload(function (xkbnamesrec:java.nio.ByteBuffer):haxe.Int64 {})
	public function getTypes():haxe.Int64;
	public function getKeyAliasesBuffer():java.nio.ByteBuffer;
	static public function indicatorsGet(xkbnamesrec:java.nio.ByteBuffer,indicators:java.nio.ByteBuffer):Void;

}
