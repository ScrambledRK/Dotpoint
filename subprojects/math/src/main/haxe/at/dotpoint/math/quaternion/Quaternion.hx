package at.dotpoint.math.quaternion;

/**
 * unit-quaternion is a Vector4 like object for interpolateable and gimbal-lock-free rotations;
 * note - this class does not guarantee to be a unit quaternion but some methodes may rely on it.
 */
class Quaternion implements IQuaternion
{

	/** imaginary x component */
	@:isVar public var x(get, set):Float;

	/** imaginary y component */
	@:isVar public var y(get, set):Float;

	/** imaginary z component */
	@:isVar public var z(get, set):Float;

	/** real x component */
	@:isVar public var w(get, set):Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * creates a new Quaternion instance with the provided optional arguments.
	 * by default: 0,0,0,1
	 *
	 * @param	x	imaginary x component
	 * @param	y	imaginary y component
	 * @param	z	imaginary z component
	 * @param	w	real w component
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
		return "[Quaternion;" + this.x + ", " + this.y + ", " + this.z + ", " + this.w + "]";
	}

}