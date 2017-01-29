package at.dotpoint.math.tensor.vector;

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

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 * X
	 */
	inline private function get_x():Float { return this.x; }

	inline private function set_x( value:Float ):Float
	{
		return this.x = value;
	}

	/**
	 * Y
	 */
	inline private function get_y():Float { return this.y; }

	inline private function set_y( value:Float ):Float
	{
		return this.y = value;
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 * prints each component seperated by ","
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		return "{" + this.x + ", " + this.y + "}";
	}
}