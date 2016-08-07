package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XIDeviceEvent")
@:final
/** XInput2 device event.  */
extern class XIDeviceEvent implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var TYPE:Int;
/** The struct member offsets.  */
	static public var SERIAL:Int;
/** The struct member offsets.  */
	static public var SEND_EVENT:Int;
/** The struct member offsets.  */
	static public var DISPLAY:Int;
/** The struct member offsets.  */
	static public var EXTENSION:Int;
/** The struct member offsets.  */
	static public var EVTYPE:Int;
/** The struct member offsets.  */
	static public var TIME:Int;
/** The struct member offsets.  */
	static public var DEVICEID:Int;
/** The struct member offsets.  */
	static public var SOURCEID:Int;
/** The struct member offsets.  */
	static public var DETAIL:Int;
/** The struct member offsets.  */
	static public var ROOT:Int;
/** The struct member offsets.  */
	static public var EVENT:Int;
/** The struct member offsets.  */
	static public var CHILD:Int;
/** The struct member offsets.  */
	static public var ROOT_X:Int;
/** The struct member offsets.  */
	static public var ROOT_Y:Int;
/** The struct member offsets.  */
	static public var EVENT_X:Int;
/** The struct member offsets.  */
	static public var EVENT_Y:Int;
/** The struct member offsets.  */
	static public var FLAGS:Int;
/** The struct member offsets.  */
	static public var BUTTONS:Int;
/** The struct member offsets.  */
	static public var VALUATORS:Int;
/** The struct member offsets.  */
	static public var MODS:Int;
/** The struct member offsets.  */
	static public var GROUP:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
	static public function groupLatched(xideviceevent:java.nio.ByteBuffer,latched:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	static public function type(xideviceevent:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function setChild(child:haxe.Int64):Void;
	static public function buttonsMask_len(xideviceevent:java.nio.ByteBuffer,mask_len:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function getRootX():Float;
	public function getRootY():Float;
	public function getGroupEffective():Int;
	public function getSourceid():Int;
	public function setButtons(buttons:java.nio.ByteBuffer):Void;
	public function setTime(time:haxe.Int64):Void;
	static public function buttonsMask(xideviceevent:java.nio.ByteBuffer,mask:haxe.Int64):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xideviceevent:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xideviceevent:java.nio.ByteBuffer,mask:java.nio.ByteBuffer):Void {})
	public function getChild():haxe.Int64;
	public function getButtonsMask(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function setRoot(root:haxe.Int64):Void;
	public function getModsEffective():Int;
	public function setButtonsMask(mask:java.nio.ByteBuffer):Void;
	@:overload(function (mask:haxe.Int64):Void {})
	public function setGroup(group:java.nio.ByteBuffer):Void;
	public function getType():Int;
	public function setEvtype(evtype:Int):Void;
	public function getGroupBase():Int;
	static public function detail(xideviceevent:java.nio.ByteBuffer,detail:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function getModsBase():Int;
	static public function extension(xideviceevent:java.nio.ByteBuffer,extension:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function getEvtype():Int;
	static public function flags(xideviceevent:java.nio.ByteBuffer,flags:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	static public function buttonsSet(xideviceevent:java.nio.ByteBuffer,buttons:java.nio.ByteBuffer):Void;
	static public function groupSet(xideviceevent:java.nio.ByteBuffer,group:java.nio.ByteBuffer):Void;
	static public function valuatorsValues(xideviceevent:java.nio.ByteBuffer,values:haxe.Int64):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xideviceevent:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xideviceevent:java.nio.ByteBuffer,values:java.nio.ByteBuffer):Void {})
	public function setSourceid(sourceid:Int):Void;
	public function setGroupEffective(effective:Int):Void;
	public function getValuatorsMask(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function setEventX(event_x:Float):Void;
	public function setValuators(valuators:java.nio.ByteBuffer):Void;
	public function setEventY(event_y:Float):Void;
	static public function modsLocked(xideviceevent:java.nio.ByteBuffer,locked:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function setSendEvent(send_event:Int):Void;
	static public function event(xideviceevent:java.nio.ByteBuffer,event:haxe.Int64):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function sourceid(xideviceevent:java.nio.ByteBuffer,sourceid:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(type:Int,serial:haxe.Int64,send_event:Int,display:haxe.Int64,extension:Int,evtype:Int,time:haxe.Int64,deviceid:Int,sourceid:Int,detail:Int,root:haxe.Int64,event:haxe.Int64,child:haxe.Int64,root_x:Float,root_y:Float,event_x:Float,event_y:Float,flags:Int,buttons:java.nio.ByteBuffer,valuators:java.nio.ByteBuffer,mods:java.nio.ByteBuffer,group:java.nio.ByteBuffer):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getExtension():Int;
	static public function groupBase(xideviceevent:java.nio.ByteBuffer,base:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function getButtons(buttons:java.nio.ByteBuffer):Void;
	static public function evtype(xideviceevent:java.nio.ByteBuffer,evtype:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	static public function display(xideviceevent:java.nio.ByteBuffer,display:haxe.Int64):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function groupLocked(xideviceevent:java.nio.ByteBuffer,locked:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function setGroupLatched(latched:Int):Void;
	static public function modsLatched(xideviceevent:java.nio.ByteBuffer,latched:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	static public function buttonsGet(xideviceevent:java.nio.ByteBuffer,buttons:java.nio.ByteBuffer):Void;
	static public function groupGet(xideviceevent:java.nio.ByteBuffer,group:java.nio.ByteBuffer):Void;
	public function setMods(mods:java.nio.ByteBuffer):Void;
	public function getEvent():haxe.Int64;
	static public function root_x(xideviceevent:java.nio.ByteBuffer,root_x:Float):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Float {})
	static public function root_y(xideviceevent:java.nio.ByteBuffer,root_y:Float):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Float {})
	public function getButtonsMaskLen():Int;
	public function getGroupLatched():Int;
	public function getDeviceid():Int;
	public function setGroupLocked(locked:Int):Void;
	public function buffer():java.nio.ByteBuffer;
	public function getModsLocked():Int;
	public function getMods(mods:java.nio.ByteBuffer):Void;
	public function getValuatorsValues(byteLen:Int):java.nio.ByteBuffer;
	@:overload(function ():haxe.Int64 {})
	public function setEvent(event:haxe.Int64):Void;
	public function getSendEvent():Int;
	public function getValuators(valuators:java.nio.ByteBuffer):Void;
	public function setModsLocked(locked:Int):Void;
	static public function send_event(xideviceevent:java.nio.ByteBuffer,send_event:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function getValuatorsMaskLen():Int;
	public function getGroup(group:java.nio.ByteBuffer):Void;
	public function setSerial(serial:haxe.Int64):Void;
	public function getFlags():Int;
	public function setFlags(flags:Int):Void;
	public function setValuatorsMaskLen(mask_len:Int):Void;
	static public function child(xideviceevent:java.nio.ByteBuffer,child:haxe.Int64):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):haxe.Int64 {})
	static public function modsGet(xideviceevent:java.nio.ByteBuffer,mods:java.nio.ByteBuffer):Void;
	public function setExtension(extension:Int):Void;
	static public function groupEffective(xideviceevent:java.nio.ByteBuffer,effective:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function getTime():haxe.Int64;
	public function getDetail():Int;
	static public function valuatorsMask_len(xideviceevent:java.nio.ByteBuffer,mask_len:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function setRootX(root_x:Float):Void;
	public function setRootY(root_y:Float):Void;
	static public function modsSet(xideviceevent:java.nio.ByteBuffer,mods:java.nio.ByteBuffer):Void;
	static public function root(xideviceevent:java.nio.ByteBuffer,root:haxe.Int64):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setDeviceid(deviceid:Int):Void;
	public function getRoot():haxe.Int64;
	public function setValuatorsValues(values:java.nio.ByteBuffer):Void;
	@:overload(function (values:haxe.Int64):Void {})
	public function getModsLatched():Int;
	public function setButtonsMaskLen(mask_len:Int):Void;
	static public function event_y(xideviceevent:java.nio.ByteBuffer,event_y:Float):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Float {})
	public function setDisplay(display:haxe.Int64):Void;
	public function setDetail(detail:Int):Void;
	static public function event_x(xideviceevent:java.nio.ByteBuffer,event_x:Float):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Float {})
	public function getEventY():Float;
	public function getGroupLocked():Int;
	public function getPointer():haxe.Int64;
	public function getEventX():Float;
	public function setType(type:Int):Void;
	static public function deviceid(xideviceevent:java.nio.ByteBuffer,deviceid:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	static public function valuatorsSet(xideviceevent:java.nio.ByteBuffer,valuators:java.nio.ByteBuffer):Void;
	static public function modsBase(xideviceevent:java.nio.ByteBuffer,base:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	public function setValuatorsMask(mask:java.nio.ByteBuffer):Void;
	@:overload(function (mask:haxe.Int64):Void {})
	public function getSerial():haxe.Int64;
	static public function serial(xideviceevent:java.nio.ByteBuffer,serial:haxe.Int64):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function setModsEffective(effective:Int):Void;
	public function setModsLatched(latched:Int):Void;
	static public function valuatorsMask(xideviceevent:java.nio.ByteBuffer,mask:haxe.Int64):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):haxe.Int64 {})
	@:overload(function (xideviceevent:java.nio.ByteBuffer,byteLen:Int):java.nio.ByteBuffer {})
	@:overload(function (xideviceevent:java.nio.ByteBuffer,mask:java.nio.ByteBuffer):Void {})
	public function setGroupBase(base:Int):Void;
	static public function modsEffective(xideviceevent:java.nio.ByteBuffer,effective:Int):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):Int {})
	static public function valuatorsGet(xideviceevent:java.nio.ByteBuffer,valuators:java.nio.ByteBuffer):Void;
	public function setModsBase(base:Int):Void;
	static public function time(xideviceevent:java.nio.ByteBuffer,time:haxe.Int64):Void;
	@:overload(function (xideviceevent:java.nio.ByteBuffer):haxe.Int64 {})
	public function getDisplay():haxe.Int64;

}
