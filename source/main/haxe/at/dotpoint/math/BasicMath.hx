package at.dotpoint.math;

/**
 *
 */
class BasicMath
{

	/**
	 * Value below <em>ZERO_TOLERANCE</em> is treated as zero.
	 */
	inline public static var ZERO_TOLERANCE:Float = 1e-08;

	/**
	 * Multiply value by this constant to convert from radians to degrees (180 / PI).
	 */
	inline public static var RAD_DEG:Float = 57.29577951308232;

	/**
	 * Multiply value by this constant to convert from degrees to radians (PI / 180).
	 */
	inline public static var DEG_RAD:Float = 0.017453292519943295;

	/**
	* The largest representable number (single-precision IEEE-754).
	*/
	inline public static var FLOAT_MAX:Float = 3.4028234663852886e+37;

	/**
	* The smallest representable number (single-precision IEEE-754).
	*/
	inline public static var FLOAT_MIN:Float = -3.4028234663852886e+37;

	/**
	 * Min value, signed integer.
	 */
	inline public static var INT32_MIN:Int = 0x80000000;

	/**
	 * Max value, signed integer.
	 */
	inline public static var INT32_MAX:Int = 0x7fffffff;

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * checks if there is a noticeable difference between the two values using the
	 * the ZERO_TOLERANCE constant by default
	 *
	 * @param	a
	 * @param	b
	 * @param	threshold tolerance range
	 * @return	true if there is NO difference, false if there is a difference
	 */
	inline public static function equals( a:Float, b:Float ):Bool
	{
		if( a > b )
			return a - b < ZERO_TOLERANCE;
		else
			return b - a < ZERO_TOLERANCE;
	}

	/**
	 * @param	value
	 * @return -1 if value is negative, 1 if positive, 0 if 0
	 */
	inline public static function sign( value:Float ):Int
	{
		if( value < 0 ) return -1;
		if( value > 0 ) return  1;

		return  0;
	}

	//
	inline public static function tanh( value:Float ):Float
	{
		var EX1:Float = Math.exp( value);
		var EX2:Float = Math.exp(-value);

		return (EX1 - EX2) / (EX1 + EX2);
	}

	//
	inline public static function isPowerOfTwo( value:Int ):Bool
	{
		while( ( ( value % 2 ) == 0 ) && value > 1 )
			value = Std.int( value / 2 );

		return value == 1;
	}
}
