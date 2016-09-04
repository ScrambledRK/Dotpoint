package at.dotpoint.math.vector;

/**
 * 3x3 column major matrix. can be used as a rotation matrix (opengl comform) 
 */
class Matrix33 implements IMatrix33
{

	public var m11:Float; public var m12:Float; public var m13:Float;
	public var m21:Float; public var m22:Float; public var m23:Float;
	public var m31:Float; public var m32:Float; public var m33:Float;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	/**
	 * creates a new 3x3 matrix object either by copying values from a given
	 * matrix or identity matrix if none provided.
	 * 
	 * @param matrix 3x3 matrix to copy values from
	 */
	public function new( ?matrix:IMatrix33 ) 
	{
		if ( matrix != null)	this.set33( matrix );
		else 					this.toIdentity();
	}		

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //		
	
	/**
	 * takes the upper 3x3 matrix values and copies them to this object
	 * can be used to copy/set rotation/scale
	 * 
	 * @param	matrix 3x3 matrix to copy the values from
	 */
	public function set33( matrix:IMatrix33 ):Void
	{
		m11 = matrix.m11; m12 = matrix.m12; m13 = matrix.m13; 
		m21 = matrix.m21; m22 = matrix.m22; m23 = matrix.m23;
		m31 = matrix.m31; m32 = matrix.m32; m33 = matrix.m33; 
	}
	
	/**
	 * resets the matrix to identity. diagonal will be set to 1, rest to 0
	 */
	public function toIdentity():Void
	{
		m11 = 1; m12 = 0; m13 = 0; 
		m21 = 0; m22 = 1; m23 = 0; 
		m31 = 0; m32 = 0; m33 = 1;
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
	}
	
	/**
	 * useful value for various operations.  
	 * @return calculated determinat value of this matrix
	 */
	public function determinant():Float
	{
		var cf0:Float = m22 * m33 - m23 * m32;
		var cf3:Float = m13 * m32 - m12 * m33;
		var cf6:Float = m12 * m23 - m13 * m22;
		
		return m11 * cf0 + m21 * cf3 + m31 * cf6;
	}	
	
	// ************************************************************************ //
	// Array
	// ************************************************************************ //	
	
	/**
	 * returns an array with the values of the 3x3 matrix. the array is ordered
	 * rows first. (m11,m21,m31,m12,m22,...)
	 * 
	 * @param	output	optional array the result will be stored into or new instance if none provided
	 * @return	provided `output` array or a new one with matrix values, rows first
	 */
	public function getArray( ?output:Array<Float> ):Array<Float>
	{
		if( output == null )
			output = new Array<Float>();
		
		output[0] = this.m11;
		output[1] = this.m21;
		output[2] = this.m31;
		
		output[3] = this.m12;
		output[4] = this.m22;
		output[5] = this.m32;
		
		output[6] = this.m13;
		output[7] = this.m23;
		output[8] = this.m33;
		
		return output;
	}
	
	/**
	 * sets the matrix with the values from the given array. array is expected to
	 * order it values rows first (m11,m21,m31,m12,m22,...)
	 * 
	 * @param	input matrix values to set, rows first
	 */
	public function setArray( input:Array<Float> ):Void
	{
		this.m11 = input[0];
		this.m21 = input[1];
		this.m31 = input[2];
		
		this.m12 = input[3];
		this.m22 = input[4];
		this.m32 = input[5];
		
		this.m13 = input[6];
		this.m23 = input[7];
		this.m33 = input[8];
	}
	
}