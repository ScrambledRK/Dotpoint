package org.lwjgl.system.windows;

import java.StdTypes;
@:native("org.lwjgl.system.windows.WindowProc")
/** An application-defined function that processes messages sent to a window.  */
extern class WindowProc extends org.lwjgl.system.libffi.Closure_Ptr 
{
	private function new():Void;
/**
 * Will be called from a libffi closure invocation. Decodes the arguments and passes them to {@link #invoke}.
 *
 * @param args pointer to an array of jvalues
 */
	override private function callback_(args:haxe.Int64):haxe.Int64;
/**
 * Will be called for each message sent to the window.
 *
 * @param hwnd   a handle to the window procedure that received the message
 * @param uMsg   the message
 * @param wParam additional message information. The content of this parameter depends on the value of the {@code uMsg} parameter.
 * @param lParam additional message information. The content of this parameter depends on the value of the {@code uMsg} parameter.
 */
	public function invoke(hwnd:haxe.Int64,uMsg:Int,wParam:haxe.Int64,lParam:haxe.Int64):haxe.Int64;

}
