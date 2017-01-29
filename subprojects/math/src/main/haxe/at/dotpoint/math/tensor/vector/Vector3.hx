package at.dotpoint.math.tensor.vector;

/**
 * vector with 3 components (x,y,z) + homogenous (w: 0 = direction; 1 = point)
 */
class Vector3 implements IVector3
{

	/** x component, usually x-axis in euler coordinate system */
	@:isVar public var x(get, set):Float;

	/** y component, usually y-axis in euler coordinate system */
	@:isVar public var y(get, set):Float;

	/** z component, usually z-axis in euler coordinate system */
	@:isVar public var z(get, set):Float;

	/** homogenous w component, useful for projection calculations. 0 = direction, 1 = point */
	@:isVar public var w(get, set):Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * creates a new vector instance with the provided optional arguments.
	 * by default: 0,0,0,1 (point in space, not direction)
	 *
	 * @param	x	x component, usually x-axis in euler coordinate system
	 * @param	y	y component, usually y-axis in euler coordinate system
	 * @param	z	z component, usually z-axis in euler coordinate system
	 * @param	w	homogenous w component. 0 = direction, 1 = point
	 */
	public function new( x:Float = 0, y:Float = 0, z:Float = 0, w:Float = 1 )
	{
		this.x = x;
		this.y = y;
		this.z = z;
		this.w = w;
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

	/**
	 * Z
	 */
	inline private function get_z():Float { return this.z; }

	inline private function set_z( value:Float ):Float
	{
		return this.z = value;
	}

	/**
	 * W
	 */
	inline private function get_w():Float { return this.w; }

	inline private function set_w( value:Float ):Float
	{
		return this.w = value;
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
		return "{" + this.x + ", " + this.y + ", " + this.z + ", " + this.w + "}";
	}
}