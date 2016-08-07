package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.Callbacks.DropConsumerString")
/** A functional interface that can be used with {@link #dropCallbackNamesApply(int, long, DropConsumerString) dropCallbackNamesApply}.  */
extern interface Callbacks_DropConsumerString
{
	public function accept(index:Int,name:String):Void;

}
