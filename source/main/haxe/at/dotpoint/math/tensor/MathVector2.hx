package at.dotpoint.math.tensor;

import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.Vector2;

/**
 * 2016-12-05
 * @author RK
 */
class MathVector2
{

	/**
	 * copies this instance into a new vector instance
	 *
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	inline public static function clone( from:IVector2, ?output:IVector2 ):IVector2
	{
		if ( output == null )
			output = new Vector2();

		output.x = from.x;
		output.y = from.y;

		return output;
	}

	/**
	 * sets the given components to this vector
	 *
	 * @param	x	usually x-axis in euler coordinate system
	 * @param	y	usually y-axis in euler coordinate system
	 * @return given vector 'a' for chaining
	 */
	inline public function set( a:IVector2, x:Float, y:Float ):IVector2
	{
		a.x = x;
		a.y = y;

		return a;
	}

	// ************************************************************************ //
	// unary operations
	// ************************************************************************ //

	/**
	 * rescales each component between 0 and 1 without changing its ratio to each other so
	 * the length of the vector is 1. if the lenght is zero, nothing will happen.
	 *
	 * @param	a	vector to normalize - this will change the given vector
	 * @return given vector 'a' for chaining
	 */
	inline public static function normalize( a:IVector2 ):IVector2
	{
		var l:Float = MathVector2.length( a );

		if ( l == 0 )
			return a;

		var k:Float = 1. / l;

		a.x *= k;
		a.y *= k;

		return a;
	}

	/**
	 * squareroot(x^2 + y^2) of the given vector
	 * @return length of the vector
	 */
	inline public static function length( a:IVector2 ):Float
	{
		return Math.sqrt( a.x * a.x + a.y * a.y );
	}

	/**
	 * x^2 + y^2 (no squareroot) of the given vector
	 * @return squared length of the vector
	 */
	inline public static function lengthSq( a:IVector2 ):Float
	{
		return a.x * a.x + a.y * a.y;
	}

	// ************************************************************************ //
	// calculations
	// ************************************************************************ //

	/**
	 * adds each component together (a+b). communtative. output can be an input instance.
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @param	scale	optional scaling of the given b vector
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function add( a:IVector2, b:IVector2, scale:Float = 1, output:IVector2 = null ):IVector2
	{
		if ( output == null )
			output = new Vector2();

		output.x = a.x + b.x * scale;
		output.y = a.y + b.y * scale;

		return output;
	}

	/**
	 * substracts component values from a with values from b (a-b). communtative. output can be an input instance.
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @param	scale	optional scaling of the given b vector
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function subtract( a:IVector2, b:IVector2, scale:Float = 1, output:IVector2 = null ):IVector2
	{
		if ( output == null )
			output = new Vector2();

		output.x = a.x - b.x * scale;
		output.y = a.y - b.y * scale;

		return output;
	}

	/**
	 * multiplies component values from a with a scalar value. output can be an input instance.
	 *
	 * @param	a		vector to use the values from
	 * @param	scalar	factor to multiply 'a' with
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function scale( a:IVector2, scalar:Float, ?output:IVector2 = null ):IVector2
	{
		if ( output == null )
			output = new Vector2();

		output.x = a.x * scalar;
		output.y = a.y * scalar;

		return output;
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 * compares each component for equality within ZERO_TOLERANCE
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @return			true if both vector objects are the same
	 */
	inline public static function isEqual( a:IVector2, b:IVector2 ):Bool
	{
		if ( !MathBasic.isEqual(a.x, b.x) ) return false;
		if ( !MathBasic.isEqual(a.y, b.y) ) return false;

		return true;
	}

}
