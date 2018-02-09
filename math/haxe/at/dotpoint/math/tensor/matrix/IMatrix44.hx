package at.dotpoint.math.tensor.matrix;

/**
 * 4x4 column major matrix. upper 3x3 matrix is assumed to be rotation/scaling, 4rd column translation.
 */
interface IMatrix44 extends IMatrix33 
{
	public var m14:Float;
	public var m24:Float;
	public var m34:Float;
	
	public var m41:Float; public var m42:Float; public var m43:Float; public var m44:Float; 		
}