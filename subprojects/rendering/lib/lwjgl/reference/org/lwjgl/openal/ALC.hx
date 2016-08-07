package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.ALC")
@:final
extern class ALC 
{
	static public function create(libName:String):Void;
	@:overload(function ():Void {})
	static public function destroy():Void;
	static public function getCapabilities():org.lwjgl.openal.ALCCapabilities;
/**
 * Obtains string values from ALC. This is a custom implementation for those tokens that return a list of strings instead of a single string.
 *
 * @param deviceHandle the device to query
 * @param token        the information to query. One of:<p/>{@link ALC11#ALC_ALL_DEVICES_SPECIFIER}, {@link ALC11#ALC_CAPTURE_DEVICE_SPECIFIER}
 */
	static public function getStringList(deviceHandle:haxe.Int64,token:Int):java.util.List<String>;
	static public function getFunctionProvider():org.lwjgl.system.FunctionProviderLocal;

}
