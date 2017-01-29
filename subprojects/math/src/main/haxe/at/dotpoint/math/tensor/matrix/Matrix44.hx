package at.dotpoint.math.tensor.matrix;


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
	 * creates a new 4x4 identity matrix
	 */
	public function new()
	{		
		m11 = 1; m12 = 0; m13 = 0; m14 = 0;
		m21 = 0; m22 = 1; m23 = 0; m24 = 0;
		m31 = 0; m32 = 0; m33 = 1; m34 = 0;
		m41 = 0; m42 = 0; m43 = 0; m44 = 1;		
	}
	
	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 * prints each row seperated by ";"
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		var array:Array<Float> = MathMatrix44.getArray( this );

		var r1:Array<Float> = array.splice( 0, 4 );
		var r2:Array<Float> = array.splice( 0, 4 );
		var r3:Array<Float> = array.splice( 0, 4 );
		var r4:Array<Float> = array.splice( 0, 4 );

		return "[" + r1.toString() + ";" + r2.toString() + ";" + r3.toString() + ";" + r4.toString() + "]";
	}
}