package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CL")
@:final
extern class CL 
{
	static public function create(libName:String):Void;
	@:overload(function ():Void {})
	static public function destroy():Void;
	static public function getICD():org.lwjgl.opencl.CLCapabilities;
	static public function getFunctionProvider():org.lwjgl.system.FunctionProviderLocal;

}
