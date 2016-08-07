package org.lwjgl.openal;

import java.StdTypes;
@:native("org.lwjgl.openal.AL")
@:final
extern class AL 
{
/**
 * Bootstrapping code that creates an ALCapabilities instance.
 *
 * @return the ALCapabilities instance
 */
	static public function createCapabilities(device:haxe.Int64):org.lwjgl.openal.ALCapabilities;
	static public function getCurrentContext():org.lwjgl.openal.ALContext;
	static public function destroy(alContext:org.lwjgl.openal.ALContext):Void;
	static public function getCapabilities():org.lwjgl.openal.ALCapabilities;
	static public function getFunctionProvider():org.lwjgl.system.FunctionProvider;

}
