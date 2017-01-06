package at.dotpoint.math;

/**
 * ...
 * @author Gerald Hattensauer
 */

class MathBasic
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
	inline public static function isEqual( a:Float, b:Float ):Bool
	{
		if( a > b )
			return a - b < ZERO_TOLERANCE;
		else
			return b - a < ZERO_TOLERANCE;
	}

	/**
	 *
	 * @param	value
	 * @return
	 */
	inline public static function getSign( value:Float ):Int
	{
		if( value < 0 ) return -1;
		if( value > 0 ) return  1;

		return  0;
	}

	/**
	*
	* @param	value
	* @return
	*/
	inline public static function getRadianAngle( x1:Float, y1:Float, x2:Float, y2:Float ):Float
	{
		var dx:Float = x2 - x1;
		var dy:Float = y2 - y1;

		return Math.atan2(dy,dx);
	}


	/**
	 *
	 * @param	value
	 * @return
	 */
	inline public static function tanh( value:Float ):Float
	{
		var EX1:Float = Math.exp( value);
		var EX2:Float = Math.exp(-value);

		return (EX1 - EX2) / (EX1 + EX2);
	}

	/**
	 *
	 * @param	value
	 * @return
	 */
	inline public static function isPowerOfTwo( value:Int ):Bool
	{
		while( ( ( value % 2 ) == 0 ) && value > 1 )
			value = Std.int( value / 2 );

		return value == 1;
	}
}