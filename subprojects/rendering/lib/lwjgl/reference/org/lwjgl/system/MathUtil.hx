package org.lwjgl.system;

import java.StdTypes;
@:native("org.lwjgl.system.MathUtil")
@:final
/**
 * Math utility class.
 * <p/>
 * Method names in this class are prefixed with {@code math} to avoid
 * ambiguities when used with static imports.
 */
extern class MathUtil 
{
/**
 * Find the integer logarithm base 2 of the given value.
 * 
 * @param value
 *            the value for which to find its logarithm
 */
	static public function mathLog2i(value:Int):Int;
/**
 * Converts an unsigned integer value to a pointer value.
 *
 * @param value
 *            the unsigned integer
 *
 * @return the pointer value
 */
	static public function mathUIntToPtr(value:Int):haxe.Int64;
/**
 * Rounds the specified integer {@code value} up to the next power-of-two
 * number. The returned value will be equal to {@code value} if it already
 * is a power-of-two number.
 *
 * @param value
 *            the value to round-up. Must be a number between {@code 1} and
 *            <code>1 &lt;&lt; 30</code>.
 *
 * @return the power-of-two rounded value
 */
	static public function mathRoundPoT(value:Int):Int;
/**
 * Returns true if the specified integer {@code value} is a power-of-two
 * number.
 *
 * @param value
 *            the value to test
 *
 * @return true if the value if a power-of-two number.
 */
	static public function mathIsPoT(value:Int):Bool;

}
