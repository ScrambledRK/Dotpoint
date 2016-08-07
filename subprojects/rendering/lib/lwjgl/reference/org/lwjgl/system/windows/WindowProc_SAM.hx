package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.WindowProc.SAM")
/** A functional interface for {@link WindowProc}.  */
extern interface WindowProc_SAM
{
	public function invoke(hwnd:haxe.Int64,uMsg:Int,wParam:haxe.Int64,lParam:haxe.Int64):haxe.Int64;

}
