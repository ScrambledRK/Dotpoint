package at.dotpoint.math.tensor.matrix;

/**
 * 3x3 column major matrix. can be used as a rotation matrix
 */
interface IMatrix33
{
	public var m11:Float; public var m12:Float; public var m13:Float;
	public var m21:Float; public var m22:Float; public var m23:Float;
	public var m31:Float; public var m32:Float; public var m33:Float;	
}