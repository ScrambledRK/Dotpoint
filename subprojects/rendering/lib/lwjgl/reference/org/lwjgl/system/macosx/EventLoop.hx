package org.lwjgl.system.macosx;

import java.StdTypes;
@:native("org.lwjgl.system.macosx.EventLoop")
@:final
/** MacOSX event loop utility class.  */
extern class EventLoop 
{
	static public var STARTED_ON_FIRST_THREAD:Bool;
	static public function checkFirstThread():Void;

}
