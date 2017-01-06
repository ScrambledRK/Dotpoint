package at.dotpoint.math;

import at.dotpoint.math.matrix.IMatrix44;
import at.dotpoint.math.matrix.Matrix44;

/**
 * ...
 * @author RK
 */
class MathMatrix44
{

	/**
	 * copies given instance into a new matrix instance
	 *
	 * @param	from	matrix to copy all values from
	 * @param	output 	optional matrix the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	inline public static function clone( from:IMatrix44, ?output:IMatrix44 ):IMatrix44
	{
		if ( output == null )
			output = cast new Matrix44();

		output.m11 = from.m11; output.m12 = from.m12; output.m13 = from.m13; output.m14 = from.m14;
		output.m21 = from.m21; output.m22 = from.m22; output.m23 = from.m23; output.m24 = from.m24;
		output.m31 = from.m31; output.m32 = from.m32; output.m33 = from.m33; output.m34 = from.m34;
		output.m41 = from.m41; output.m42 = from.m42; output.m43 = from.m43; output.m44 = from.m44;

		return output;
	}
	
	// ************************************************************************ //
	// Array
	// ************************************************************************ //

	/**
	 * returns an array with the values of the 3x3 matrix. the array is ordered
	 * rows first. (m11,m21,m31,m12,m22,...)
	 *
	 * @param	a	target matrix
	 * @param	output	optional array the result will be stored into or new instance if none provided
	 * @return	provided `output` array or a new one with matrix values, rows first
	 */
	public static function getArray( a:IMatrix44, ?output:Array<Float> ):Array<Float>
	{
		if ( output == null )
			output = new Array<Float>();

		output[0]  = a.m11;
		output[1]  = a.m21;
		output[2]  = a.m31;
		output[3]  = a.m41;

		output[4]  = a.m12;
		output[5]  = a.m22;
		output[6]  = a.m32;
		output[7]  = a.m42;

		output[8]  = a.m13;
		output[9]  = a.m23;
		output[10] = a.m33;
		output[11] = a.m43;

		output[12] = a.m14;
		output[13] = a.m24;
		output[14] = a.m34;
		output[15] = a.m44;

		return output;
	}

	/**
	 * sets the matrix with the values from the given array. array is expected to
	 * order it values rows first (m11,m21,m31,m12,m22,...)
	 *
	 * @param	a		target matrix
	 * @param	input 	matrix values to set, rows first
	 * @return 			given matrix 'a' for chaining
	 */
	public static function setArray( a:IMatrix44, input:Array<Float> ):IMatrix44
	{
		if ( input.length < 16 )
			throw "given input array is not of length 16";

		a.m11 = input[0];
		a.m21 = input[1];
		a.m31 = input[2];
		a.m41 = input[3];

		a.m12 = input[4];
		a.m22 = input[5];
		a.m32 = input[6];
		a.m42 = input[7];

		a.m13 = input[8];
		a.m23 = input[9];
		a.m33 = input[10];
		a.m43 = input[11];

		a.m14 = input[12];
		a.m24 = input[13];
		a.m34 = input[14];
		a.m44 = input[15];

		return a;
	}
	
	// ************************************************************************ //
	// unary operations
	// ************************************************************************ //

	/**
	 * resets the matrix to identity. diagonal will be set to 1, rest to 0
	 *
	 * @param	a	target matrix
	 * @return 		given matrix 'a' for chaining
	 */
	public static function toIdentity( a:IMatrix44 ):IMatrix44
	{
		a.m11 = 1; a.m12 = 0; a.m13 = 0; a.m14 = 0;
		a.m21 = 0; a.m22 = 1; a.m23 = 0; a.m24 = 0;
		a.m31 = 0; a.m32 = 0; a.m33 = 1; a.m34 = 0;
		a.m41 = 0; a.m42 = 0; a.m43 = 0; a.m44 = 1;

		return a;
	}

	/**
	 * switches row values with column values and vice versa.
	 * can be used to switch between column (opengl) and row major (directx)
	 *
	 * @param	a	target matrix
	 * @return 		given matrix 'a' for chaining
	 */
	public static function transpose( a:IMatrix44 ):IMatrix44
	{
		var t:Float;

		t = a.m21; a.m21 = a.m12; a.m12 = t;
		t = a.m31; a.m31 = a.m13; a.m13 = t;
		t = a.m32; a.m32 = a.m23; a.m23 = t;
		t = a.m41; a.m41 = a.m14; a.m14 = t;
		t = a.m42; a.m42 = a.m24; a.m24 = t;
		t = a.m43; a.m43 = a.m34; a.m34 = t;

		return a;
	}

	/**
	 * useful value for various operations. yes I am this specific about this.
	 * fight me!
	 *
	 * @param	a	target matrix
	 * @return 		calculated determinat value of this matrix
	 */
	public static function determinant( a:IMatrix44 ):Float
	{
		return		(a.m11 * a.m22 - a.m21 * a.m12) * (a.m33 * a.m44 - a.m43 * a.m34) - (a.m11 * a.m32 - a.m31 * a.m12) * (a.m23 * a.m44 - a.m43 * a.m24)
				+ 	(a.m11 * a.m42 - a.m41 * a.m12) * (a.m23 * a.m34 - a.m33 * a.m24) + (a.m21 * a.m32 - a.m31 * a.m22) * (a.m13 * a.m44 - a.m43 * a.m14)
				- 	(a.m21 * a.m42 - a.m41 * a.m22) * (a.m13 * a.m34 - a.m33 * a.m14) + (a.m31 * a.m42 - a.m41 * a.m32) * (a.m13 * a.m24 - a.m23 * a.m14);
	}
	
	/**
	 * sets this matrix to the inverse using cramer formula (devide by determinant, multiply by inverse)
	 * 
	 * @param	a	target matrix
	 * @return 		given matrix 'a' for chaining
	 */
	public static function inverse( a:IMatrix44 ):IMatrix44
	{
		var d:Float = MathMatrix44.determinant( a );

		if( Math.abs(d) < MathBasic.ZERO_TOLERANCE )	// cannot invert with a null determinant
			return a;

		d = 1 / d;

		var m11:Float = a.m11; var m21:Float = a.m21; var m31:Float = a.m31; var m41:Float = a.m41;
		var m12:Float = a.m12; var m22:Float = a.m22; var m32:Float = a.m32; var m42:Float = a.m42;
		var m13:Float = a.m13; var m23:Float = a.m23; var m33:Float = a.m33; var m43:Float = a.m43;
		var m14:Float = a.m14; var m24:Float = a.m24; var m34:Float = a.m34; var m44:Float = a.m44;

		a.m11 =  d * ( m22*(m33*m44 - m43*m34) - m32*(m23*m44 - m43*m24) + m42*(m23*m34 - m33*m24) );
		a.m12 = -d * ( m12*(m33*m44 - m43*m34) - m32*(m13*m44 - m43*m14) + m42*(m13*m34 - m33*m14) );
		a.m13 =  d * ( m12*(m23*m44 - m43*m24) - m22*(m13*m44 - m43*m14) + m42*(m13*m24 - m23*m14) );
		a.m14 = -d * ( m12*(m23*m34 - m33*m24) - m22*(m13*m34 - m33*m14) + m32*(m13*m24 - m23*m14) );
		a.m21 = -d * ( m21*(m33*m44 - m43*m34) - m31*(m23*m44 - m43*m24) + m41*(m23*m34 - m33*m24) );
		a.m22 =  d * ( m11*(m33*m44 - m43*m34) - m31*(m13*m44 - m43*m14) + m41*(m13*m34 - m33*m14) );
		a.m23 = -d * ( m11*(m23*m44 - m43*m24) - m21*(m13*m44 - m43*m14) + m41*(m13*m24 - m23*m14) );
		a.m24 =  d * ( m11*(m23*m34 - m33*m24) - m21*(m13*m34 - m33*m14) + m31*(m13*m24 - m23*m14) );
		a.m31 =  d * ( m21*(m32*m44 - m42*m34) - m31*(m22*m44 - m42*m24) + m41*(m22*m34 - m32*m24) );
		a.m32 = -d * ( m11*(m32*m44 - m42*m34) - m31*(m12*m44 - m42*m14) + m41*(m12*m34 - m32*m14) );
		a.m33 =  d * ( m11*(m22*m44 - m42*m24) - m21*(m12*m44 - m42*m14) + m41*(m12*m24 - m22*m14) );
		a.m34 = -d * ( m11*(m22*m34 - m32*m24) - m21*(m12*m34 - m32*m14) + m31*(m12*m24 - m22*m14) );
		a.m41 = -d * ( m21*(m32*m43 - m42*m33) - m31*(m22*m43 - m42*m23) + m41*(m22*m33 - m32*m23) );
		a.m42 =  d * ( m11*(m32*m43 - m42*m33) - m31*(m12*m43 - m42*m13) + m41*(m12*m33 - m32*m13) );
		a.m43 = -d * ( m11*(m22*m43 - m42*m23) - m21*(m12*m43 - m42*m13) + m41*(m12*m23 - m22*m13) );
		a.m44 =  d * ( m11*(m22*m33 - m32*m23) - m21*(m12*m33 - m32*m13) + m31*(m12*m23 - m22*m13) );

		return a;
	}

	// ************************************************************************ //
	// binary Operations
	// ************************************************************************ //

	/**
	 * adds each component together (a+b). communtative. output can be an input instance.
	 *
	 * @param	a		matrix to use the values from
	 * @param	b		matrix to use the values from
	 * @param	output 	optional matrix the result will be stored into or new instance if none provided
	 * @return			provided `output` matrix or a new one with the computational result
	 */
	public static function add( a:IMatrix44, b:IMatrix44, ?output:IMatrix44 ):IMatrix44
	{
		if( output == null )
			output = new Matrix44();

		output.m11 = a.m11 + b.m11;
		output.m12 = a.m12 + b.m12;
		output.m13 = a.m13 + b.m13;
		output.m14 = a.m14 + b.m14;

		output.m21 = a.m21 + b.m21;
		output.m22 = a.m22 + b.m22;
		output.m23 = a.m23 + b.m23;
		output.m24 = a.m24 + b.m24;

		output.m31 = a.m31 + b.m31;
		output.m32 = a.m32 + b.m32;
		output.m33 = a.m33 + b.m33;
		output.m34 = a.m34 + b.m34;

		output.m41 = a.m41 + b.m41;
		output.m42 = a.m42 + b.m42;
		output.m43 = a.m43 + b.m43;
		output.m44 = a.m44 + b.m44;

		return output;
	}

	/**
	 * substracts  component values from a with values from b (a-b). communtative. output can be an input instance.
	 *
	 * @param	a		matrix to use the values from
	 * @param	b		matrix to use the values from
	 * @param	output 	optional matrix the result will be stored into or new instance if none provided
	 * @return			provided `output` matrix or a new one with the computational result
	 */
	public static function subtract( a:IMatrix44, b:IMatrix44, ?output:IMatrix44 ):IMatrix44
	{
		if( output == null )
			output = new Matrix44();

		output.m11 = a.m11 - b.m11;
		output.m12 = a.m12 - b.m12;
		output.m13 = a.m13 - b.m13;
		output.m14 = a.m14 - b.m14;

		output.m21 = a.m21 - b.m21;
		output.m22 = a.m22 - b.m22;
		output.m23 = a.m23 - b.m23;
		output.m24 = a.m24 - b.m24;

		output.m31 = a.m31 - b.m31;
		output.m32 = a.m32 - b.m32;
		output.m33 = a.m33 - b.m33;
		output.m34 = a.m34 - b.m34;

		output.m41 = a.m41 - b.m41;
		output.m42 = a.m42 - b.m42;
		output.m43 = a.m43 - b.m43;
		output.m44 = a.m44 - b.m44;

		return output;
	}

	/**
	 * multiplies component values from a with a scalar value. output can be an input instance.
	 *
	 * @param	a		matrix to use the values from
	 * @param	scalar	factor to multiply 'a' with
	 * @param	output 	optional matrix the result will be stored into or new instance if none provided
	 * @return			provided `output` matrix or a new one with the computational result
	 */
	public static function scale( a:IMatrix44, scalar:Float, ?output:IMatrix44 ):IMatrix44
	{
		if( output == null )
			output = new Matrix44();

		output.m11 = a.m11 * scalar;
		output.m12 = a.m12 * scalar;
		output.m13 = a.m13 * scalar;
		output.m14 = a.m14 * scalar;

		output.m21 = a.m21 * scalar;
		output.m22 = a.m22 * scalar;
		output.m23 = a.m23 * scalar;
		output.m24 = a.m24 * scalar;

		output.m31 = a.m31 * scalar;
		output.m32 = a.m32 * scalar;
		output.m33 = a.m33 * scalar;
		output.m34 = a.m34 * scalar;

		output.m41 = a.m41 * scalar;
		output.m42 = a.m42 * scalar;
		output.m43 = a.m43 * scalar;
		output.m44 = a.m44 * scalar;

		return output;
	}

	/**
	 * calculates the matrix product of 2 matrices. not communtative (a*b != b*a). output can be an input instance
	 * (creates an internal copy of input if necessary). can be used to compose 2 matrix together, useful for space transformation
	 * operations. rows of a are multiplied with columns of b;
	 *
	 * @param	a		matrix to use the (row) values from
	 * @param	b		matrix to use the (column) values from
	 * @param	output 	optional matrix the result will be stored into or new instance if none provided
	 * @return			provided `output` matrix or a new one with the computational result
	 */
	public static function multiply( a:IMatrix44, b:IMatrix44, ?output:IMatrix44 ):IMatrix44
	{
		if( output == null )
			output = new Matrix44();

		else if( output == a ) 	a = MathMatrix44.clone( a );
		else if( output == b ) 	b = MathMatrix44.clone( b );

		// ------------------ //

		output.m11 = a.m11 * b.m11 + a.m12 * b.m21 + a.m13 * b.m31 + a.m14 * b.m41;
		output.m12 = a.m11 * b.m12 + a.m12 * b.m22 + a.m13 * b.m32 + a.m14 * b.m42;
		output.m13 = a.m11 * b.m13 + a.m12 * b.m23 + a.m13 * b.m33 + a.m14 * b.m43;
		output.m14 = a.m11 * b.m14 + a.m12 * b.m24 + a.m13 * b.m34 + a.m14 * b.m44;

		// ------------------ //

		output.m21 = a.m21 * b.m11 + a.m22 * b.m21 + a.m23 * b.m31 + a.m24 * b.m41;
		output.m22 = a.m21 * b.m12 + a.m22 * b.m22 + a.m23 * b.m32 + a.m24 * b.m42;
		output.m23 = a.m21 * b.m13 + a.m22 * b.m23 + a.m23 * b.m33 + a.m24 * b.m43;
		output.m24 = a.m21 * b.m14 + a.m22 * b.m24 + a.m23 * b.m34 + a.m24 * b.m44;

		// ------------------ //

		output.m31 = a.m31 * b.m11 + a.m32 * b.m21 + a.m33 * b.m31 + a.m34 * b.m41;
		output.m32 = a.m31 * b.m12 + a.m32 * b.m22 + a.m33 * b.m32 + a.m34 * b.m42;
		output.m33 = a.m31 * b.m13 + a.m32 * b.m23 + a.m33 * b.m33 + a.m34 * b.m43;
		output.m34 = a.m31 * b.m14 + a.m32 * b.m24 + a.m33 * b.m34 + a.m34 * b.m44;

		// ------------------ //

		output.m41 = a.m41 * b.m11 + a.m42 * b.m21 + a.m43 * b.m31 + a.m44 * b.m41;
		output.m42 = a.m41 * b.m12 + a.m42 * b.m22 + a.m43 * b.m32 + a.m44 * b.m42;
		output.m43 = a.m41 * b.m13 + a.m42 * b.m23 + a.m43 * b.m33 + a.m44 * b.m43;
		output.m44 = a.m41 * b.m14 + a.m42 * b.m24 + a.m43 * b.m34 + a.m44 * b.m44;

		return output;
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 * compares each component for equality within ZERO_TOLERANCE
	 *
	 * @param	a		matrix to use the values from
	 * @param	b		matrix to use the values from
	 * @return			true if both matrix objects are the same
	 */
	public static function isEqual( a:IMatrix44, b:IMatrix44 ):Bool
	{
		var success:Bool = true;

		if(( !MathBasic.isEqual(a.m11, b.m11) )
		|| ( !MathBasic.isEqual(a.m12, b.m12) )
		|| ( !MathBasic.isEqual(a.m13, b.m13) )
		|| ( !MathBasic.isEqual(a.m14, b.m14) )

		|| ( !MathBasic.isEqual(a.m21, b.m21) )
		|| ( !MathBasic.isEqual(a.m22, b.m22) )
		|| ( !MathBasic.isEqual(a.m23, b.m23) )
		|| ( !MathBasic.isEqual(a.m24, b.m24) )

		|| ( !MathBasic.isEqual(a.m31, b.m31) )
		|| ( !MathBasic.isEqual(a.m32, b.m32) )
		|| ( !MathBasic.isEqual(a.m33, b.m33) )
		|| ( !MathBasic.isEqual(a.m34, b.m34) )

		|| ( !MathBasic.isEqual(a.m41, b.m41) )
		|| ( !MathBasic.isEqual(a.m42, b.m42) )
		|| ( !MathBasic.isEqual(a.m43, b.m43) )
		|| ( !MathBasic.isEqual(a.m44, b.m44) ))
		{
			success = false;
		}

		return success;
	}
}