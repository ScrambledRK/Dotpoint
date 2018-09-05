package at.dotpoint.math.tensor;

import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;

/**
 * 2016-12-05
 * @author RK
 */
class MathVector3
{

	/**
	 * copies this instance into a new vector instance
	 *
	 * @param	from	vector to copy all values from (including homogenous w component)
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	inline public static function clone( from:IVector3, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		output.x = from.x;
		output.y = from.y;
		output.z = from.z;
		output.w = from.w;

		return output;
	}

	/**
	 * sets the given components to this vector
	 *
	 * @param	a	target vector
	 * @param	x	usually x-axis in euler coordinate system
	 * @param	y	usually y-axis in euler coordinate system
	 * @param	z	usually z-axis in euler coordinate system
	 * @param	w	optional homogenous w component. 0 = direction, 1 = point
	 * @return 		given vector 'a' for chaining
	 */
	inline public static function set( a:IVector3, x:Float, y:Float, z:Float, ?w:Float ):IVector3
	{
		a.x = x;
		a.y = y;
		a.z = z;

		if ( w != null )
			a.w = w;

		return a;
	}

	//
	inline public static function setZero( a:IVector3 ):IVector3
	{
		return MathVector3.set( a, 0, 0, 0, 1 );
	}

	// ************************************************************************ //
	// unary operations
	// ************************************************************************ //

	/**
	 * rescales each component between 0 and 1 without changing its ratio to each other so
	 * the length of the vector is 1. if the lenght is zero, nothing will happen.
	 * does nothing with homogenous w component.
	 *
	 * @param	a	vector to normalize - this will change the given vector
	 * @return given vector 'a' for chaining
	 */
	inline public static function normalize( a:IVector3 ):IVector3
	{
		var l:Float = MathVector3.length( a );

		if ( l == 0 )
			return a;

		var k:Float = 1. / l;

		a.x *= k;
		a.y *= k;
		a.z *= k;

		return a;
	}

	/**
	 * squareroot(x^2 + y^2 + z^2) of the given vector.
	 * does nothing with homogenous w component.
	 *
	 * @return length of the vector
	 */
	inline public static function length( a:IVector3 ):Float
	{
		return Math.sqrt( a.x * a.x + a.y * a.y + a.z * a.z );
	}

	/**
	 * x^2 + y^2 + z^2 (no squareroot) of the given vector.
	 * does nothing with homogenous w component.
	 *
	 * @return squared length of the vector
	 */
	inline public static function lengthSq( a:IVector3 ):Float
	{
		return a.x * a.x + a.y * a.y + a.z * a.z;
	}

	// ************************************************************************ //
	// calculations
	// ************************************************************************ //

	/**
	 * adds each component together (a+b). communtative. output can be an input instance.
	 * does nothing with homogenous w component.
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @param	scale	optional scaling of the given b vector
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function add( a:IVector3, b:IVector3, scale:Float = 1, output:IVector3 = null ):IVector3
	{
		if ( output == null )
			output = new Vector3();

		output.x = a.x + b.x * scale;
		output.y = a.y + b.y * scale;
		output.z = a.z + b.z * scale;

		return output;
	}

	/**
	 * substracts component values from a with values from b (a-b). communtative. output can be an input instance.
	 * does nothing with homogenous w component.
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @param	scale	optional scaling of the given b vector
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function subtract( a:IVector3, b:IVector3, scale:Float = 1, output:IVector3 = null ):IVector3
	{
		if ( output == null )
			output = new Vector3();

		output.x = a.x - b.x * scale;
		output.y = a.y - b.y * scale;
		output.z = a.z - b.z * scale;

		return output;
	}

	/**
	 * multiplies component values from a with a scalar value. output can be an input instance.
	 * does nothing with homogenous w component.
	 *
	 * @param	a		vector to use the values from
	 * @param	scalar	factor to multiply 'a' with
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function scale( a:IVector3, scalar:Float, ?output:IVector3 = null ):IVector3
	{
		if ( output == null )
			output = new Vector3();

		output.x = a.x * scalar;
		output.y = a.y * scalar;
		output.z = a.z * scalar;

		return output;
	}

	/**
	 * calculates the product of 2 vector. not communtative (a*b != b*a). output can be an input instance
	 * (creates an internal copy of input if necessary). useful to get a vector normal to the plane the
	 * two input vectors span. does nothing with homogenous w component.
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function cross( a:IVector3, b:IVector3, ?output:IVector3 = null ):IVector3
	{
		if ( output == null )
			output = new Vector3();

		else if ( output == a ) 	a = new Vector3( a.x, a.y, a.z, a.w );
		else if ( output == b ) 	b = new Vector3( b.x, b.y, b.z, b.w );

		output.x = a.y * b.z - a.z * b.y;
		output.y = a.z * b.x - a.x * b.z;
		output.z = a.x * b.y - a.y * b.x;

		return output;
	}

	/**
	  * dotproduct between a and b; calculates the cosine angle between a and b.
	  * does nothing with homogenous w component.
	  *
	  * @param	a 	vector to use the values from
	  * @param	b	vector to use the values from
	  * @return 	dot product between a and b, eg: cosine angle between a and b
	  */
	public static function dot( a:IVector3, b:IVector3 ):Float
	{
		return a.x * b.x + a.y * b.y + a.z * b.z;
	}

	// ------------------------------------ //
	// ------------------------------------ //

	/**
	 * row vector multiplication (matrix * vector = vector). useful to transform a vector into different
	 * transformation spaces (e.g. local to world space)
	 *
	 * @param	a		vector to multiply a matrix with
	 * @param	b		matrix to mutliply the vector with
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function multiplyMatrix( a:IVector3, b:IMatrix44, ?output:IVector3 = null ):IVector3
	{
		if ( output == null )
			output = new Vector3();

		output.x = b.m11 * a.x + b.m21 * a.y + b.m31 * a.z + b.m41 * a.w;
		output.y = b.m12 * a.x + b.m22 * a.y + b.m32 * a.z + b.m42 * a.w;
		output.z = b.m13 * a.x + b.m23 * a.y + b.m33 * a.z + b.m43 * a.w;
		output.w = b.m14 * a.x + b.m24 * a.y + b.m34 * a.z + b.m44 * a.w;

		return output;
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 * compares each component for equality within ZERO_TOLERANCE
	 *
	 * @param	a			vector to use the values from
	 * @param	b			vector to use the values from
	 * @param	includeW	if true, also compares homogenous w component (default false)
	 * @return				true if both vector objects are the same
	 */
	public static function isEqual( a:IVector3, b:IVector3, ?includeW:Bool = false ):Bool
	{
		if ( !MathBasic.isEqual(a.x, b.x) ) return false;
		if ( !MathBasic.isEqual(a.y, b.y) ) return false;
		if ( !MathBasic.isEqual(a.z, b.z) ) return false;

		if ( includeW && !MathBasic.isEqual(a.w, b.w) )
			return false;

		return true;
	}

}
