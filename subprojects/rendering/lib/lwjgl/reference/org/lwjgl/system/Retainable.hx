package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.Retainable")
/** This interface must be implemented by objects that manage external resources and use reference counting to trigger the release of those resources.  */
extern interface Retainable
{
/**
 * Decrements the reference count.
 * <p/>
 * When the reference count reaches zero, any resources held by the {@code Retainable} object are released. After this happens, calling any other method on
 * the object has undefined results.
 */
	public function release():Void;
/**
 * Increments the reference count. Each call to {@code retain} must be matched with a call to {@link #release}.
 * <p/>
 * When a {@code Retainable} object is first instantiated the reference count is equal to {@code 1}.
 */
	public function retain():Void;

}
