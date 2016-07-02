package haxe.at.dotpoint.math.vector;

import haxe.at.dotpoint.math.MathUtil;

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

	/**
	 * copies this instance into a new vector instance
	 *
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public function clone<T:IVector3>( ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();

		output.x = this.x;
		output.y = this.y;
		output.z = this.z;
		output.w = this.w;

		return output;
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
	// Methodes
	// ************************************************************************ //

	/**
	 * sets the given components to this vector. homogenous w component is
	 * optional and if non provided the original value of this vector will be used.
	 *
	 * @param	x	x component, usually x-axis in euler coordinate system
	 * @param	y	y component, usually y-axis in euler coordinate system
	 * @param	z	z component, usually z-axis in euler coordinate system
	 * @param	w	optional homogenous w component. 0 = direction, 1 = point
	 */
	public function set( x:Float, y:Float, z:Float, ?w:Float ):Void
	{
		this.x = x;
		this.y = y;
		this.z = z;

		if( w != null )
			this.w = w;
	}

	/**
	 * rescales each component between 0 and 1 without changing its ratio to each other so
	 * the length of the vector is 1. if the lenght is zero, it will set this
	 * vector to identity (0,0,0,1).
	 */
	public function normalize():Void
	{
		var l:Float = this.length();

		if( l == 0 )
		{
			this.set( 0, 0, 0, 1 );
			return;
		}

		var k:Float = 1. / l;

		this.x *= k;
		this.y *= k;
		this.z *= k;
	}

	/**
	 * squareroot of x^2 + y^2 + z^2 (ignores homogenous component)
	 *
	 * @return length of the vector
	 */
	inline public function length():Float
	{
		return Math.sqrt( this.lengthSq() );
	}

	/**
	 * x^2 + y^2 + z^2 (no squareroot, ignores homogenous component)
	 *
	 * @return squared length of the vector
	 */
	inline public function lengthSq():Float
	{
		return this.x * this.x + this.y * this.y + this.z * this.z;
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
	public static function add<T:IVector3>( a:IVector3, b:IVector3, ?output:T = null ):T
	{
		if( output == null )
			output = cast new Vector3();

		output.x = a.x + b.x;
		output.y = a.y + b.y;
		output.z = a.z + b.z;

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
	public static function subtract<T:IVector3>( a:IVector3, b:IVector3, ?output:T = null ):T
	{
		if( output == null )
			output = cast new Vector3();

		output.x = a.x - b.x;
		output.y = a.y - b.y;
		output.z = a.z - b.z;

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
	public static function scale<T:IVector3>( a:IVector3, scalar:Float, ?output:T = null ):T
	{
		if( output == null )
			output = cast new Vector3();

		output.x = a.x * scalar;
		output.y = a.y * scalar;
		output.z = a.z * scalar;

		return output;
	}

	/**
	 * calculates the product of 2 vector. not communtative (a*b != b*a). output can be an input instance
	 * (creates an internal copy of input if necessary). useful to get a vector normal to the plane the
	 * two input vectors span.
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function cross<T:IVector3>( a:IVector3, b:IVector3, ?output:T = null ):T
	{
		if( output == null )
			output = cast new Vector3();

		else if( output == a ) 	a = new Vector3( a.x, a.y, a.z, a.w );
		else if( output == b ) 	b = new Vector3( b.x, b.y, b.z, b.w );

		output.x = a.y * b.z - a.z * b.y;
		output.y = a.z * b.x - a.x * b.z;
		output.z = a.x * b.y - a.y * b.x;

		return output;
	}

	/**
	  * dotproduct between a and b; calculates the cosine angle between a and b
	  *
	  * @param	a 	vector to use the values from
	  * @param	b	vector to use the values from
	  * @return 	dot product between a and b, eg: cosine angle between a and b
	  */
	public static function dot( a:IVector3, b:IVector3 ):Float
	{
		return a.x * b.x + a.y * b.y + a.z * b.z;
	}

	// ------------------------------------ //
	// ------------------------------------ //

	/**
	 * row vector multiplication (matrix * vector = vector). useful to transform a vector into different
	 * transformation spaces (e.g. local to world space)
	 *
	 * @param	a		vector to multiply a matrix with
	 * @param	b		matrix to mutliply the vector with
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function multiplyMatrix<T:IVector3>( a:IVector3, b:IMatrix44, ?output:T = null ):T
	{
		if( output == null )
			output = cast new Vector3();

		output.x = b.m11 * a.x + b.m21 * a.y + b.m31 * a.z + b.m41 * a.w;
		output.y = b.m12 * a.x + b.m22 * a.y + b.m32 * a.z + b.m42 * a.w;
		output.z = b.m13 * a.x + b.m23 * a.y + b.m33 * a.z + b.m43 * a.w;
		output.w = b.m14 * a.x + b.m24 * a.y + b.m34 * a.z + b.m44 * a.w;

		return output;
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	public function toArray( ?includeW:Bool = false ):Array<Float>
	{
		if( includeW )
			return [ this.x, this.y, this.z, this.w ];

		return [ this.x, this.y, this.z ];
	}

	/**
	 * compares each component for equality within ZERO_TOLERANCE
	 *
	 * @param	a		vector to use the values from
	 * @param	b		vector to use the values from
	 * @return			true if both matrix objects are the same
	 */
	public static function isEqual( a:IVector3, b:IVector3 ):Bool
	{
		if ( !MathUtil.isEqual(a.x, b.x) ) return false;
		if ( !MathUtil.isEqual(a.y, b.y) ) return false;
		if ( !MathUtil.isEqual(a.z, b.z) ) return false;

		return true;
	}

	/**
	 * prints each component seperated by ","
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		return "[Vector3;" + this.x + ", " + this.y + ", " + this.z + ", " + this.w + "]";
	}
}