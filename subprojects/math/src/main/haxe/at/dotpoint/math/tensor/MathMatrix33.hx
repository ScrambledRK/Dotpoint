package at.dotpoint.math.tensor;

import at.dotpoint.math.tensor.matrix.IMatrix33;
import at.dotpoint.math.tensor.matrix.Matrix33;

/**
 * ...
 * @author RK
 */
class MathMatrix33 
{

	/**
	 * copies this instance into a new matrix instance
	 *
	 * @param	from	matrix to copy all values from
	 * @param	output 	optional matrix the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	inline public static function clone( from:IMatrix33, ?output:IMatrix33 ):IMatrix33
	{
		if( output == null )
			output = cast new Matrix33();
		
		output.m11 = from.m11; output.m12 = from.m12; output.m13 = from.m13; 
		output.m21 = from.m21; output.m22 = from.m22; output.m23 = from.m23;
		output.m31 = from.m31; output.m32 = from.m32; output.m33 = from.m33; 
		
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
	public static function getArray( a:IMatrix33, ?output:Array<Float> ):Array<Float>
	{
		if( output == null )
			output = new Array<Float>();
		
		output[0] = a.m11;
		output[1] = a.m21;
		output[2] = a.m31;
		
		output[3] = a.m12;
		output[4] = a.m22;
		output[5] = a.m32;
		
		output[6] = a.m13;
		output[7] = a.m23;
		output[8] = a.m33;
		
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
	public static function setArray( a:IMatrix33, input:Array<Float> ):IMatrix33
	{
		if( input.length < 9 )
			throw "given input array is not of length 9";
		
		a.m11 = input[0];
		a.m21 = input[1];
		a.m31 = input[2];
		
		a.m12 = input[3];
		a.m22 = input[4];
		a.m32 = input[5];
		
		a.m13 = input[6];
		a.m23 = input[7];
		a.m33 = input[8];
		
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
	public static function toIdentity( a:IMatrix33 ):IMatrix33
	{
		a.m11 = 1; a.m12 = 0; a.m13 = 0; 
		a.m21 = 0; a.m22 = 1; a.m23 = 0; 
		a.m31 = 0; a.m32 = 0; a.m33 = 1;
		
		return a;
	}
	
	/**
	 * switches row values with column values and vice versa.
	 * can be used to switch between column (opengl) and row major (directx)
	 * 
	 * @param	a	target matrix
	 * @return 		given matrix 'a' for chaining
	 */
	public static function transpose( a:IMatrix33 ):IMatrix33
	{
		var t:Float;
		
		t = a.m21; a.m21 = a.m12; a.m12 = t;
		t = a.m31; a.m31 = a.m13; a.m13 = t;
		t = a.m32; a.m32 = a.m23; a.m23 = t;
		
		return a;
	}
	
	/**
	 * useful value for various operations. yes I am this specific about this.
	 * fight me!
	 * 
	 * @param	a	target matrix
	 * @return 		calculated determinat value of this matrix
	 */
	public static function determinant( a:IMatrix33 ):Float
	{
		var cf0:Float = a.m22 * a.m33 - a.m23 * a.m32;
		var cf3:Float = a.m13 * a.m32 - a.m12 * a.m33;
		var cf6:Float = a.m12 * a.m23 - a.m13 * a.m22;
		
		return a.m11 * cf0 + a.m21 * cf3 + a.m31 * cf6;
	}	
	
	/**
	 * sets given matrix to the inverse using cramer formula (devide by determinant, multiply by inverse)
	 * 
	 * @param	a	target matrix
	 * @return 		given matrix 'a' for chaining
	 */
	public static function inverse( a:IMatrix33 ):IMatrix33
	{
		throw "method not implemented, arrrr ...";
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
	public static function add( a:IMatrix33, b:IMatrix33, ?output:IMatrix33 ):IMatrix33
	{
		if( output == null )
			output = new Matrix33();

		output.m11 = a.m11 + b.m11;
		output.m12 = a.m12 + b.m12;
		output.m13 = a.m13 + b.m13;

		output.m21 = a.m21 + b.m21;
		output.m22 = a.m22 + b.m22;
		output.m23 = a.m23 + b.m23;

		output.m31 = a.m31 + b.m31;
		output.m32 = a.m32 + b.m32;
		output.m33 = a.m33 + b.m33;

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
	public static function subtract( a:IMatrix33, b:IMatrix33, ?output:IMatrix33 ):IMatrix33
	{
		if( output == null )
			output = new Matrix33();

		output.m11 = a.m11 - b.m11;
		output.m12 = a.m12 - b.m12;
		output.m13 = a.m13 - b.m13;

		output.m21 = a.m21 - b.m21;
		output.m22 = a.m22 - b.m22;
		output.m23 = a.m23 - b.m23;

		output.m31 = a.m31 - b.m31;
		output.m32 = a.m32 - b.m32;
		output.m33 = a.m33 - b.m33;

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
	public static function scale( a:IMatrix33, scalar:Float, ?output:IMatrix33 ):IMatrix33
	{
		if( output == null )
			output = new Matrix33();

		output.m11 = a.m11 * scalar;
		output.m12 = a.m12 * scalar;
		output.m13 = a.m13 * scalar;

		output.m21 = a.m21 * scalar;
		output.m22 = a.m22 * scalar;
		output.m23 = a.m23 * scalar;

		output.m31 = a.m31 * scalar;
		output.m32 = a.m32 * scalar;
		output.m33 = a.m33 * scalar;

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
	public static function multiply( a:IMatrix33, b:IMatrix33, ?output:IMatrix33 ):IMatrix33
	{
		if( output == null )
			output = new Matrix33();

		else if( output == a ) 	a = MathMatrix33.clone( a );
		else if( output == b ) 	b = MathMatrix33.clone( b );

		// ------------------ //

		output.m11 = a.m11 * b.m11 + a.m12 * b.m21 + a.m13 * b.m31;
		output.m12 = a.m11 * b.m12 + a.m12 * b.m22 + a.m13 * b.m32;
		output.m13 = a.m11 * b.m13 + a.m12 * b.m23 + a.m13 * b.m33;

		// ------------------ //

		output.m21 = a.m21 * b.m11 + a.m22 * b.m21 + a.m23 * b.m31;
		output.m22 = a.m21 * b.m12 + a.m22 * b.m22 + a.m23 * b.m32;
		output.m23 = a.m21 * b.m13 + a.m22 * b.m23 + a.m23 * b.m33;

		// ------------------ //

		output.m31 = a.m31 * b.m11 + a.m32 * b.m21 + a.m33 * b.m31;
		output.m32 = a.m31 * b.m12 + a.m32 * b.m22 + a.m33 * b.m32;
		output.m33 = a.m31 * b.m13 + a.m32 * b.m23 + a.m33 * b.m33;

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
	public static function isEqual( a:IMatrix33, b:IMatrix33 ):Bool
	{
		var success:Bool = true;

		if(( !MathBasic.isEqual(a.m11, b.m11) )
		|| ( !MathBasic.isEqual(a.m12, b.m12) )
		|| ( !MathBasic.isEqual(a.m13, b.m13) )

		|| ( !MathBasic.isEqual(a.m21, b.m21) )
		|| ( !MathBasic.isEqual(a.m22, b.m22) )
		|| ( !MathBasic.isEqual(a.m23, b.m23) )

		|| ( !MathBasic.isEqual(a.m31, b.m31) )
		|| ( !MathBasic.isEqual(a.m32, b.m32) )
		|| ( !MathBasic.isEqual(a.m33, b.m33) ))
		{
			success = false;
		}

		return success;
	}	
}