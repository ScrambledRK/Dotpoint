package org.lwjgl.glfw;

import java.StdTypes;
@:native("org.lwjgl.glfw.Callbacks.DropConsumerBuffer")
/** A functional interface that can be used with {@link #dropCallbackNamesApply(int, long, DropConsumerBuffer) dropCallbackNamesApply}.  */
extern interface Callbacks_DropConsumerBuffer
{
	public function accept(index:Int,name:java.nio.ByteBuffer):Void;

}
