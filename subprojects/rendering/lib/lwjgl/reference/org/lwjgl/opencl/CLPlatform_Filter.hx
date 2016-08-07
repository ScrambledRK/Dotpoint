package org.lwjgl.opencl;

import java.StdTypes;
@:native("org.lwjgl.opencl.CLPlatform.Filter")
/** Simple filter interface.  */
extern interface CLPlatform_Filter<T>
{
/**
 * Returns true if the specified object passes the filter.
 *
 * @param object the object to test
 *
 * @return true if the object is accepted
 */
	public function accept(object:T):Bool;

}
