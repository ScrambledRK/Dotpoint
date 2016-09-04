package at.dotpoint.math.vector;

/**
 * 3x3 column major matrix. can be used as a rotation matrix (opengl comform) 
 */
interface IMatrix33
{

	public var m11:Float; public var m12:Float; public var m13:Float;
	public var m21:Float; public var m22:Float; public var m23:Float;
	public var m31:Float; public var m32:Float; public var m33:Float;
	
	/**
	 * resets the matrix to identity. diagonal will be set to 1, rest to 0
	 */
	public function toIdentity():Void;
	
	/**
	 * switches row values with column values and vice versa.
	 * can be used to switch between column (opengl) and row major (directx)
	 */
	public function transpose():Void;
	
	/**
	 * useful value for various operations.  
	 * @return calculated determinat value of this matrix
	 */
	public function determinant():Float;
	
	/**
	 * takes the upper 3x3 matrix values and copies them to this object
	 * can be used to copy/set rotation/scale
	 * 
	 * @param	matrix 3x3 matrix to copy the values from
	 */
	public function set33( m:IMatrix33 ):Void;
	
	/**
	 * returns an array with the values of the 3x3 matrix. the array is ordered
	 * rows first. 
	 * 
	 * @param	output	optional array the result will be stored into or new instance if none provided
	 * @return	provided `output` array or a new one with matrix values, rows first
	 */
	public function getArray( ?output:Array<Float> ):Array<Float>;
	
	/**
	 * sets the matrix with the values from the given array. array is expected to
	 * order it values rows first.
	 * 
	 * @param	input matrix values to set, rows first
	 */
	public function setArray( input:Array<Float> ):Void;
	
}