package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.DynamicLinkLibrary")
extern interface DynamicLinkLibrary
{
/** Returns the library name.  */
	public function getName():String;

}
