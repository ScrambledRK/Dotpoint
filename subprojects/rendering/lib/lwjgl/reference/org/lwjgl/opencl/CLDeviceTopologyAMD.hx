package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLDeviceTopologyAMD")
@:final
/** The struct returned by {@link CL10#clGetDeviceInfo} with {@code param_name} set to {@link AMDDeviceTopology#CL_DEVICE_TOPOLOGY_AMD}.  */
extern class CLDeviceTopologyAMD implements org.lwjgl.Pointer
{
/** The struct size in bytes.  */
	static public var SIZEOF:Int;
/** The struct member offsets.  */
	static public var RAW:Int;
/** The struct member offsets.  */
	static public var RAW_TYPE:Int;
/** The struct member offsets.  */
	static public var RAW_DATA:Int;
/** The struct member offsets.  */
	static public var PCIE:Int;
/** The struct member offsets.  */
	static public var PCIE_TYPE:Int;
/** The struct member offsets.  */
	static public var PCIE_BUS:Int;
/** The struct member offsets.  */
	static public var PCIE_DEVICE:Int;
/** The struct member offsets.  */
	static public var PCIE_FUNCTION:Int;
	@:overload(function ():Void {})
	public function new(struct:java.nio.ByteBuffer):Void;
/** Returns a new {@link ByteBuffer} instance with a capacity equal to {@link #SIZEOF}.  */
/** Virtual constructor. Calls {@link #malloc} and initializes the returned {@link ByteBuffer} instance with the specified values.  */
	static public function malloc(raw_type:Int,raw_data:java.nio.ByteBuffer,pcie_type:Int,pcie_bus:Int,pcie_device:Int,pcie_function:Int):java.nio.ByteBuffer;
	@:overload(function ():java.nio.ByteBuffer {})
	public function getRawType():Int;
	public function getPcieDevice():Int;
	static public function rawType(cl_device_topology_amd:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (cl_device_topology_amd:java.nio.ByteBuffer):Int {})
	public function setPcieFunction(function_:Int):Void;
	public function setRawData(index:Int,data:Int):Void;
	@:overload(function (data:java.nio.ByteBuffer):Void {})
	public function setPcieType(type:Int):Void;
	public function getPointer():haxe.Int64;
	static public function rawData(cl_device_topology_amd:java.nio.ByteBuffer,index:Int,data:Int):Void;
	@:overload(function (cl_device_topology_amd:java.nio.ByteBuffer,index:Int):Int {})
	static public function rawDataGet(cl_device_topology_amd:java.nio.ByteBuffer,data:java.nio.ByteBuffer):Void;
	public function setPcieBus(bus:Int):Void;
	static public function pcieBus(cl_device_topology_amd:java.nio.ByteBuffer,bus:Int):Void;
	@:overload(function (cl_device_topology_amd:java.nio.ByteBuffer):Int {})
	public function getPcieType():Int;
	static public function pcieFunction(cl_device_topology_amd:java.nio.ByteBuffer,function_:Int):Void;
	@:overload(function (cl_device_topology_amd:java.nio.ByteBuffer):Int {})
	public function getPcieBus():Int;
	public function getPcieFunction():Int;
	public function setPcieDevice(device:Int):Void;
	static public function pcieType(cl_device_topology_amd:java.nio.ByteBuffer,type:Int):Void;
	@:overload(function (cl_device_topology_amd:java.nio.ByteBuffer):Int {})
	public function buffer():java.nio.ByteBuffer;
	public function getRawData(data:java.nio.ByteBuffer):Void;
	static public function rawDataSet(cl_device_topology_amd:java.nio.ByteBuffer,data:java.nio.ByteBuffer):Void;
	static public function pcieDevice(cl_device_topology_amd:java.nio.ByteBuffer,device:Int):Void;
	@:overload(function (cl_device_topology_amd:java.nio.ByteBuffer):Int {})
	public function setRawType(type:Int):Void;

}
