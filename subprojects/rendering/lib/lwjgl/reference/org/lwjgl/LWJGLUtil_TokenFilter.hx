package org.lwjgl;

import java.StdTypes;
@:native("org.lwjgl.LWJGLUtil.TokenFilter")
/** Simple interface for Field filtering.  */
extern interface LWJGLUtil_TokenFilter
{
/**
 * Should return true if the specified Field passes the filter.
 *
 * @param field the Field to test
 * @param value the integer value of the field
 *
 * @return true if the Field is accepted
 */
	public function accept(field:java.lang.reflect.Field,value:Int):Bool;

}
