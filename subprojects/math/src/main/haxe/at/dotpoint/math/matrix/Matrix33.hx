package at.dotpoint.math.matrix;

/**
 * 3x3 column major matrix. can be used as a rotation matrix
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
	 * creates a new 3x3 identity matrix
	 */
	public function new() 
	{		
		m11 = 1; m12 = 0; m13 = 0; 
		m21 = 0; m22 = 1; m23 = 0; 
		m31 = 0; m32 = 0; m33 = 1;		
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
		var array:Array<Float> = MathMatrix33.getArray( this );

		var r1:Array<Float> = array.splice( 0, 3 );
		var r2:Array<Float> = array.splice( 0, 3 );
		var r3:Array<Float> = array.splice( 0, 3 );

		return "[" + r1.toString() + ";" + r2.toString() + ";" + r3.toString() + "]";
	}	
}