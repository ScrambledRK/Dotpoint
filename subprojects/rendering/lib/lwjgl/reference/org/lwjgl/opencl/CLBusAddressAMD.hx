package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLBusAddressAMD")
@:final
/** Used in {@link AMDBusAddressableMemory#clEnqueueMakeBuffersResidentAMD}.  */
extern class CLBusAddressAMD implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var SURFACE_BUS_ADDRESS:Int;
/** The struct member offsets.  */
	static public var MARKER_BUS_ADDRESS:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(surface_bus_address:haxe.Int64,marker_bus_address:haxe.Int64):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	static public function surface_bus_address(cl_bus_address_amd:java.nio.ByteBuffer,surface_bus_address:haxe.Int64):Void;
	@:overload(function (cl_bus_address_amd:java.nio.ByteBuffer):haxe.Int64 {})
	public function setMarkerBusAddress(marker_bus_address:haxe.Int64):Void;
	public function setSurfaceBusAddress(surface_bus_address:haxe.Int64):Void;
	public function getSurfaceBusAddress():haxe.Int64;
	public function buffer():java.nio.ByteBuffer;
	public function getPointer():haxe.Int64;
	static public function marker_bus_address(cl_bus_address_amd:java.nio.ByteBuffer,marker_bus_address:haxe.Int64):Void;
	@:overload(function (cl_bus_address_amd:java.nio.ByteBuffer):haxe.Int64 {})
	public function getMarkerBusAddress():haxe.Int64;

}
