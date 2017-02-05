package at.dotpoint.math.tensor.matrix;

/**
 * 3x3 column major matrix. can be used as a rotation matrix
 */
class Matrix33 implements IMatrix33
{

	public var m11:Float; public var m21:Float; public var m31:Float; // hardcoded so cross compile memory is compact
	public var m12:Float; public var m22:Float; public var m32:Float; // array etc. may get gigantic depending on platform
	public var m13:Float; public var m23:Float; public var m33:Float;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	/**
	 * creates a new 3x3 identity matrix
	 */
	public function new() 
	{		
		m11 = 1; m21 = 0; m31 = 0; 
		m12 = 0; m22 = 1; m32 = 0; 
		m13 = 0; m23 = 0; m33 = 1;		
	}	
	
	// ************************************************************************ //
	// get/set
	// ************************************************************************ //

	/**
	 * @param	columnIndex 0-2; 0 = m1x, 1 = m2x, ...
	 * @param	rowIndex 0-2; 0 = mx1, 1 = mx2, ...
	 * @return	value of the given row/column matrix entry
	 */
	inline public function get( columnIndex:Int, rowIndex:Int ):Float
	{
		switch( columnIndex )
		{
			case 0:
			{
				switch( rowIndex )
				{
					case 0: return this.m11;
					case 1: return this.m12;
					case 2: return this.m13;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-2 allowed)";	// written in this stupid way so compiler optimization works out
				}
			}	
			
			case 1:
			{
				switch( rowIndex )
				{
					case 0: return this.m21;
					case 1: return this.m22;
					case 2: return this.m23;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-2 allowed)";
				}
			}
			
			case 2:
			{
				switch( rowIndex )
				{
					case 0: return this.m31;
					case 1: return this.m32;
					case 2: return this.m33;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-2 allowed)";
				}
			}
			
			default: throw "invalid column index: " + columnIndex + "(0-2 allowed)";
		}
	}
	
	/**
	 * @param	columnIndex 0-2; 0 = m1x, 1 = m2x, ...
	 * @param	rowIndex 0-2; 0 = mx1, 1 = mx2, ...
	 * @param	value new value of the given row/column matrix entry
	 */
	inline public function set( columnIndex:Int, rowIndex:Int, value:Float ):Void
	{
		switch( columnIndex )
		{
			case 0:
			{
				switch( rowIndex )
				{
					case 0: this.m11 = value;
					case 1: this.m12 = value;
					case 2: this.m13 = value;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-2 allowed)";
				}
			}	
			
			case 1:
			{
				switch( rowIndex )
				{
					case 0: this.m21 = value;
					case 1: this.m22 = value;
					case 2: this.m23 = value;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-2 allowed)";
				}
			}
			
			case 2:
			{
				switch( rowIndex )
				{
					case 0: this.m31 = value;
					case 1: this.m32 = value;
					case 2: this.m33 = value;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-2 allowed)";
				}
			}
			
			default: throw "invalid column index: " + columnIndex + "(0-2 allowed)";
		}
	}
	
	//
	inline public function getByIndex( index:Int ):Float
	{
		return this.get( Std.int( index / 3 ), index % 3 );
	}
	
	//
	inline public function setByIndex( index:Int, value:Float ):Void
	{
		this.set( Std.int( index / 3 ), index % 3, value );
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