package at.dotpoint.math.tensor.matrix;


/**
 * 4x4 column major matrix. upper 3x3 matrix is assumed to be rotation/scaling, 4rd column translation.
 */
class Matrix44 implements IMatrix44
{

	public var m11:Float; public var m21:Float; public var m31:Float; public var m41:Float;	// hardcoded so cross compile memory is compact
	public var m12:Float; public var m22:Float; public var m32:Float; public var m42:Float; // array etc. may get gigantic depending on platform
	public var m13:Float; public var m23:Float; public var m33:Float; public var m43:Float;
	public var m14:Float; public var m24:Float; public var m34:Float; public var m44:Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * creates a new 4x4 identity matrix
	 */
	public function new()
	{		
		m11 = 1; m21 = 0; m31 = 0; m41 = 0;
		m12 = 0; m22 = 1; m32 = 0; m42 = 0;
		m13 = 0; m23 = 0; m33 = 1; m43 = 0;
		m14 = 0; m24 = 0; m34 = 0; m44 = 1;		
	}
	
	// ************************************************************************ //
	// get/set
	// ************************************************************************ //

	//
	inline public function getNumComponents():Int
	{
		return 16;
	}
	
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
					case 3: return this.m14;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-3 allowed)"; // written in this stupid way so compiler optimization works out
				}
			}	
			
			case 1:
			{
				switch( rowIndex )
				{
					case 0: return this.m21;
					case 1: return this.m22;
					case 2: return this.m23;
					case 3: return this.m24;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-3 allowed)";
				}
			}
			
			case 2:
			{
				switch( rowIndex )
				{
					case 0: return this.m31;
					case 1: return this.m32;
					case 2: return this.m33;
					case 3: return this.m34;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-3 allowed)";
				}
			}
			
			case 3:
			{
				switch( rowIndex )
				{
					case 0: return this.m41;
					case 1: return this.m42;
					case 2: return this.m43;
					case 3: return this.m44;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-3 allowed)";
				}
			}
			
			default: throw "invalid column index: " + columnIndex + "(0-3 allowed)";
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
					case 3: this.m14 = value;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-3 allowed)";
				}
			}	
			
			case 1:
			{
				switch( rowIndex )
				{
					case 0: this.m21 = value;
					case 1: this.m22 = value;
					case 2: this.m23 = value;
					case 3: this.m24 = value;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-3 allowed)";
				}
			}
			
			case 2:
			{
				switch( rowIndex )
				{
					case 0: this.m31 = value;
					case 1: this.m32 = value;
					case 2: this.m33 = value;
					case 3: this.m34 = value;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-3 allowed)";
				}
			}
			
			case 3:
			{
				switch( rowIndex )
				{
					case 0: this.m41 = value;
					case 1: this.m42 = value;
					case 2: this.m43 = value;
					case 3: this.m44 = value;
					
					default: 
						throw "invalid row index: " + rowIndex + "(0-3 allowed)";
				}
			}
			
			default: throw "invalid column index: " + columnIndex + "(0-3 allowed)";
		}
	}
	
	//
	inline public function getByIndex( index:Int ):Float
	{
		//trace( index, Std.int( index / 4 ), index % 4 );
		return this.get( Std.int( index / 4 ), index % 4 );
	}
	
	//
	inline public function setByIndex( index:Int, value:Float ):Void
	{
		this.set( Std.int( index / 4 ), index % 4, value );
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