package org.lwjgl.system.linux;

import java.StdTypes;
@:native("org.lwjgl.system.linux.XErrorHandler.SAM")
/** A functional interface for {@link XErrorHandler}.  */
extern interface XErrorHandler_SAM
{
	public function invoke(display:haxe.Int64,error_event:haxe.Int64):Void;

}
