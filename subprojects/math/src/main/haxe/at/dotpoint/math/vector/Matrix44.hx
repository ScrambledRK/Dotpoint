package haxe.at.dotpoint.math.vector;

import haxe.at.dotpoint.math.MathUtil;

/**
 * 4x4 column major matrix. upper 3x3 matrix is assumed to be rotation/scaling, 4rd column translation.
 */
class Matrix44 implements IMatrix44
{

	public var m11:Float; public var m12:Float; public var m13:Float; public var m14:Float;
	public var m21:Float; public var m22:Float; public var m23:Float; public var m24:Float;
	public var m31:Float; public var m32:Float; public var m33:Float; public var m34:Float;
	public var m41:Float; public var m42:Float; public var m43:Float; public var m44:Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * creates a new 4x4 matrix object either by copying values from a given
	 * matrix or identity matrix if none provided.
	 *
	 * @param matrix optional 4x4 matrix to copy values from
	 */
	public function new( ?matrix:IMatrix44 )
	{
		if ( matrix != null)	this.set44( matrix );
		else 					this.toIdentity();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * takes the upper 4x4 matrix values and copies them to this object
	 * can be used to copy/set rotation/scale as well as translation
	 *
	 * @param	matrix 4x4 matrix to copy the values from
	 */
	public function set44( matrix:IMatrix44 ):Void
	{
		this.m11 = matrix.m11;
		this.m12 = matrix.m12;
		this.m13 = matrix.m13;
		this.m14 = matrix.m14;

		this.m21 = matrix.m21;
		this.m22 = matrix.m22;
		this.m23 = matrix.m23;
		this.m24 = matrix.m24;

		this.m31 = matrix.m31;
		this.m32 = matrix.m32;
		this.m33 = matrix.m33;
		this.m34 = matrix.m34;

		this.m41 = matrix.m41;
		this.m42 = matrix.m42;
		this.m43 = matrix.m43;
		this.m44 = matrix.m44;
	}

	/**
	 * takes the upper 3x3 matrix values and copies them to this object
	 * can be used to copy/set rotation/scale
	 *
	 * @param	matrix 3x3 matrix to copy the values from
	 */
	public function set33( matrix:IMatrix33 ):Void
	{
		m11 = matrix.m11; m12 = matrix.m12; m13 = matrix.m13; m14 = 0;
		m21 = matrix.m21; m22 = matrix.m22; m23 = matrix.m23; m24 = 0;
		m31 = matrix.m31; m32 = matrix.m32; m33 = matrix.m33; m34 = 0;
		m41 = 0;     m42 = 0;     m43 = 0;     m44 = 1;
	}

	// ************************************************************************ //
	// Array
	// ************************************************************************ //

	/**
	 * returns an array with the values of the 4x4 matrix. the array is ordered
	 * rows first. (m11,m21,m31,m41,m12,m22,...)
	 *
	 * @param	output	optional array the result will be stored into or new instance if none provided
	 * @return	provided `output` array or a new one with matrix values, rows first
	 */
	public function getArray( ?output:Array<Float> ):Array<Float>
	{
		if( output == null )
			output = new Array<Float>();

		output[0]  = this.m11;
		output[1]  = this.m21;
		output[2]  = this.m31;
		output[3]  = this.m41;

		output[4]  = this.m12;
		output[5]  = this.m22;
		output[6]  = this.m32;
		output[7]  = this.m42;

		output[8]  = this.m13;
		output[9]  = this.m23;
		output[10] = this.m33;
		output[11] = this.m43;

		output[12] = this.m14;
		output[13] = this.m24;
		output[14] = this.m34;
		output[15] = this.m44;

		return output;
	}

	/**
	 * sets the matrix with the values from the given array. array is expected to
	 * order it values rows first (m11,m21,m31,m41,m12,m22,...)
	 *
	 * @param	input matrix values to set, rows first
	 */
	public function setArray( input:Array<Float> ):Void
	{
		this.m11 = input[0];
		this.m21 = input[1];
		this.m31 = input[2];
		this.m41 = input[3];

		this.m12 = input[4];
		this.m22 = input[5];
		this.m32 = input[6];
		this.m42 = input[7];

		this.m13 = input[8];
		this.m23 = input[9];
		this.m33 = input[10];
		this.m43 = input[11];

		this.m14 = input[12];
		this.m24 = input[13];
		this.m34 = input[14];
		this.m44 = input[15];
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * resets the matrix to identity. diagonal will be set to 1, rest to 0
	 */
	public function toIdentity():Void
	{
		m11 = 1; m12 = 0; m13 = 0; m14 = 0;
		m21 = 0; m22 = 1; m23 = 0; m24 = 0;
		m31 = 0; m32 = 0; m33 = 1; m34 = 0;
		m41 = 0; m42 = 0; m43 = 0; m44 = 1;
	}

	/**
	 * switches row values with column values and vice versa.
	 * can be used to switch between column (opengl) and row major (directx)
	 */
	public function transpose():Void
	{
		var t:Float;
		t = m21; m21 = m12; m12 = t;
		t = m31; m31 = m13; m13 = t;
		t = m32; m32 = m23; m23 = t;
		t = m41; m41 = m14; m14 = t;
		t = m42; m42 = m24; m24 = t;
		t = m43; m43 = m34; m34 = t;
	}

	/**
	 * useful value for various operations.
	 * @return calculated determinat value of this matrix
	 */
	public function determinant():Float
	{
		return		(m11 * m22 - m21 * m12) * (m33 * m44 - m43 * m34)- (m11 * m32 - m31 * m12) * (m23 * m44 - m43 * m24)
				 + 	(m11 * m42 - m41 * m12) * (m23 * m34 - m33 * m24)+ (m21 * m32 - m31 * m22) * (m13 * m44 - m43 * m14)
				 - 	(m21 * m42 - m41 * m22) * (m13 * m34 - m33 * m14)+ (m31 * m42 - m41 * m32) * (m13 * m24 - m23 * m14);
	}

	/**
	 * sets this matrix to the inverse using cramer formula (devide by determinant, multiply by inverse)
	 */
	public function inverse():IMatrix44
	{
		var d:Float = this.determinant();

		if( Math.abs(d) < MathUtil.ZERO_TOLERANCE )	// cannot invert with a null determinant
			return this;

		d = 1 / d;

		var m11:Float = this.m11; var m21:Float = this.m21; var m31:Float = this.m31; var m41:Float = this.m41;
		var m12:Float = this.m12; var m22:Float = this.m22; var m32:Float = this.m32; var m42:Float = this.m42;
		var m13:Float = this.m13; var m23:Float = this.m23; var m33:Float = this.m33; var m43:Float = this.m43;
		var m14:Float = this.m14; var m24:Float = this.m24; var m34:Float = this.m34; var m44:Float = this.m44;

		this.m11 =  d * ( m22*(m33*m44 - m43*m34) - m32*(m23*m44 - m43*m24) + m42*(m23*m34 - m33*m24) );
		this.m12 = -d * ( m12*(m33*m44 - m43*m34) - m32*(m13*m44 - m43*m14) + m42*(m13*m34 - m33*m14) );
		this.m13 =  d * ( m12*(m23*m44 - m43*m24) - m22*(m13*m44 - m43*m14) + m42*(m13*m24 - m23*m14) );
		this.m14 = -d * ( m12*(m23*m34 - m33*m24) - m22*(m13*m34 - m33*m14) + m32*(m13*m24 - m23*m14) );
		this.m21 = -d * ( m21*(m33*m44 - m43*m34) - m31*(m23*m44 - m43*m24) + m41*(m23*m34 - m33*m24) );
		this.m22 =  d * ( m11*(m33*m44 - m43*m34) - m31*(m13*m44 - m43*m14) + m41*(m13*m34 - m33*m14) );
		this.m23 = -d * ( m11*(m23*m44 - m43*m24) - m21*(m13*m44 - m43*m14) + m41*(m13*m24 - m23*m14) );
		this.m24 =  d * ( m11*(m23*m34 - m33*m24) - m21*(m13*m34 - m33*m14) + m31*(m13*m24 - m23*m14) );
		this.m31 =  d * ( m21*(m32*m44 - m42*m34) - m31*(m22*m44 - m42*m24) + m41*(m22*m34 - m32*m24) );
		this.m32 = -d * ( m11*(m32*m44 - m42*m34) - m31*(m12*m44 - m42*m14) + m41*(m12*m34 - m32*m14) );
		this.m33 =  d * ( m11*(m22*m44 - m42*m24) - m21*(m12*m44 - m42*m14) + m41*(m12*m24 - m22*m14) );
		this.m34 = -d * ( m11*(m22*m34 - m32*m24) - m21*(m12*m34 - m32*m14) + m31*(m12*m24 - m22*m14) );
		this.m41 = -d * ( m21*(m32*m43 - m42*m33) - m31*(m22*m43 - m42*m23) + m41*(m22*m33 - m32*m23) );
		this.m42 =  d * ( m11*(m32*m43 - m42*m33) - m31*(m12*m43 - m42*m13) + m41*(m12*m33 - m32*m13) );
		this.m43 = -d * ( m11*(m22*m43 - m42*m23) - m21*(m12*m43 - m42*m13) + m41*(m12*m23 - m22*m13) );
		this.m44 =  d * ( m11*(m22*m33 - m32*m23) - m21*(m12*m33 - m32*m13) + m31*(m12*m23 - m22*m13) );

		return this;
	}

	// ************************************************************************ //
	// static binary Operations
	// ************************************************************************ //

	/**
	 * adds each component together (a+b). communtative. output can be an input instance.
	 *
	 * @param	a		matrix to use the values from
	 * @param	b		matrix to use the values from
	 * @param	output 	optional matrix the result will be stored into or new instance if none provided
	 * @return			provided `output` matrix or a new one with the computational result
	 */
	public static function add<T:IMatrix44>( a:IMatrix44, b:IMatrix44, ?output:T ):T
	{
		if( output == null )
			output = cast new Matrix44();

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
	public static function subtract<T:IMatrix44>( a:IMatrix44, b:IMatrix44, ?output:T ):T
	{
		if( output == null )
			output = cast new Matrix44();

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
	public static function scale<T:IMatrix44>( a:IMatrix44, scalar:Float, ?output:T ):T
	{
		if( output == null )
			output = cast new Matrix44();

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
	public static function multiply<T:IMatrix44>( a:IMatrix44, b:IMatrix44, ?output:T ):T
	{
		if( output == null )
			output = cast new Matrix44();

		else if( output == a ) 	a = new Matrix44( a );
		else if( output == b ) 	b = new Matrix44( b );

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

		if(( !MathUtil.isEqual(a.m11, b.m11) )
		|| ( !MathUtil.isEqual(a.m12, b.m12) )
		|| ( !MathUtil.isEqual(a.m13, b.m13) )
		|| ( !MathUtil.isEqual(a.m14, b.m14) )

		|| ( !MathUtil.isEqual(a.m21, b.m21) )
		|| ( !MathUtil.isEqual(a.m22, b.m22) )
		|| ( !MathUtil.isEqual(a.m23, b.m23) )
		|| ( !MathUtil.isEqual(a.m24, b.m24) )

		|| ( !MathUtil.isEqual(a.m31, b.m31) )
		|| ( !MathUtil.isEqual(a.m32, b.m32) )
		|| ( !MathUtil.isEqual(a.m33, b.m33) )
		|| ( !MathUtil.isEqual(a.m34, b.m34) )

		|| ( !MathUtil.isEqual(a.m41, b.m41) )
		|| ( !MathUtil.isEqual(a.m42, b.m42) )
		|| ( !MathUtil.isEqual(a.m43, b.m43) )
		|| ( !MathUtil.isEqual(a.m44, b.m44) ))
		{
			success = false;
		}

		return success;
	}

	/**
	 * prints each row seperated by ";"
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		var array:Array<Float> = this.getArray();

		var r1:Array<Float> = array.splice( 0, 4 );
		var r2:Array<Float> = array.splice( 0, 4 );
		var r3:Array<Float> = array.splice( 0, 4 );
		var r4:Array<Float> = array.splice( 0, 4 );

		return "[" + r1.toString() + ";" + r2.toString() + ";" + r3.toString() + ";" + r4.toString() + "]";
	}
}