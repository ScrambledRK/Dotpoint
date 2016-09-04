package at.dotpoint.math.vector;

import at.dotpoint.math.MathUtil;

/**
 * vector with 2 components (x,y)
 */
class Vector2 implements IVector2
{

	/** x component, usually x-axis in euler coordinate system */
	@:isVar public var x(get, set):Float;

	/** y component, usually y-axis in euler coordinate system */
	@:isVar public var y(get, set):Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * creates a new vector instance with the provided optional arguments.
	 * by default: 0,0
	 *
	 * @param	x	x component, usually x-axis in euler coordinate system
	 * @param	y	y component, usually y-axis in euler coordinate system
	 */
	public function new( x:Float = 0, y:Float = 0 )
	{
		this.x = x;
		this.y = y;
	}

	/**
	 * copies this instance into a new vector instance
	 *
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function clone<T:IVector2>( from:IVector2, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector2();

		output.x = from.x;
		output.y = from.y;

		return output;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 * X
	 */
	private function get_x():Float { return this.x; }

	private function set_x( value:Float ):Float
	{
		return this.x = value;
	}

	/**
	 * Y
	 */
	private function get_y():Float { return this.y; }

	private function set_y( value:Float ):Float
	{
		return this.y = value;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * sets the given components to this vector
	 *
	 * @param	x	x component, usually x-axis in euler coordinate system
	 * @param	y	y component, usually y-axis in euler coordinate system
	 */
	public function set( x:Float, y:Float ):Void
	{
		this.x = x;
		this.y = y;
	}

	/**
	 * rescales each component between 0 and 1 without changing its ratio to each other so
	 * the length of the vector is 1. if the lenght is zero, nothing will happen.
	 */
	public function normalize():Void
	{
		var l:Float = this.length();

		if( l == 0 )
			return;

		var k:Float = 1. / l;

		this.x *= k;
		this.y *= k;
	}

	/**
	 * squareroot of x^2 + y^2
	 *
	 * @return length of the vector
	 */
	inline public function length():Float
	{
		return Math.sqrt( this.x * this.x + this.y * this.y );
	}

	/**
	 * x^2 + y^2 (no squareroot)
	 *
	 * @return squared length of the vector
	 */
	inline public function lengthSq():Float
	{
		return this.x * this.x + this.y * this.y;
	}

	// ************************************************************************ //
	// static Operations
	// ************************************************************************ //

	/**
	 * adds each component together (a+b). communtative. output can be an input instance.
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function add<T:IVector2>( a:IVector2, b:IVector2, ?output:T = null ):T
	{
		if( output == null )
			output = cast new Vector2();

		output.x = a.x + b.x;
		output.y = a.y + b.y;

		return output;
	}

	/**
	 * substracts component values from a with values from b (a-b). communtative. output can be an input instance.
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function subtract<T:IVector2>( a:IVector2, b:IVector2, ?output:T = null ):T
	{
		if( output == null )
			output = cast new Vector2();

		output.x = a.x - b.x;
		output.y = a.y - b.y;

		return output;
	}

	/**
	 * multiplies component values from a with a scalar value. output can be an input instance.
	 *
	 * @param	a		vector to use the values from
	 * @param	scalar	factor to multiply 'a' with
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function scale<T:IVector2>( a:IVector2, scalar:Float, ?output:T = null ):T
	{
		if( output == null )
			output = cast new Vector2();

		output.x = a.x * scalar;
		output.y = a.y * scalar;

		return output;
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 * compares each component for equality within ZERO_TOLERANCE
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @return			true if both matrix objects are the same
	 */
	public static function isEqual( a:IVector2, b:IVector2 ):Bool
	{
		if ( !MathUtil.isEqual(a.x, b.x) ) return false;
		if ( !MathUtil.isEqual(a.y, b.y) ) return false;

		return true;
	}

	/**
	 * prints each component seperated by ","
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		return "[Vector2;" + this.x + ", " + this.y + "]";
	}
}