package haxe.at.dotpoint.math.lazy;

import haxe.at.dotpoint.dispatcher.lazy.LazyComponent;
import haxe.at.dotpoint.math.vector.IQuaternion;
import haxe.at.dotpoint.math.vector.Quaternion;

/**
 * lazy evaluating quaternion dispatching changes through the lazy component. can be used
 * to invalidate objects based on the this object updating and vice-versa. since the
 * lazy system is a signal system bound to a single listener, the lazy component itself
 * responsible for dispatching updates/validation etc is hidden. use the "@:access" macro
 * to set listeners on the lazy component.
 */
class LazyQuaternion implements IQuaternion
{

	/**
	 * actual quaternion object
	 */
	@:dox(show)
	//
	private var value(default,null):Quaternion;

	/**
	 * responsible for dispatching/validating changes
	 */
	@:dox(show)
	//
	private var lazy(default,null):LazyComponent;

	// -------------- //

	/** imaginary x component */
	public var x(get, set):Float;

	/** imaginary y component */
	public var y(get, set):Float;

	/** imaginary z component */
	public var z(get, set):Float;

	/** real x component */
	public var w(get, set):Float;

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
		this.value = new Quaternion( x, y, z, w );
		this.lazy  = new LazyComponent();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * sets the given components to this quaternion.
	 *
	 * @param	x	imaginary x component
	 * @param	y	imaginary y component
	 * @param	z	imaginary z component
	 * @param	w	real w componen
	 */
	public function set( x:Float, y:Float, z:Float, w:Float ):Void
	{
		if ( MathUtil.isEqual( this.x, x )
		&& 	 MathUtil.isEqual( this.y, y )
		&& 	 MathUtil.isEqual( this.z, z )
		&& 	 MathUtil.isEqual( this.w, w ) ) return;

		// ---------- //

		this.x = x;
		this.y = y;
		this.z = z;
		this.w = w;

		this.lazy.dispatchUpdate();
	}

	// ************************************************************************ //
	// IVector3
	// ************************************************************************ //

	/**
	 * X
	 */
	private function get_x():Float
	{
		this.lazy.validate();

		return this.value.x;
	}

	private function set_x( value:Float ):Float
	{
		if ( !MathUtil.isEqual( this.value.x, value ) )
		{
			this.value.x = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	/**
	 * Y
	 */
	private function get_y():Float
	{
		this.lazy.validate();

		return this.value.y;
	}

	private function set_y( value:Float ):Float
	{
		if ( !MathUtil.isEqual( this.value.y, value ) )
		{
			this.value.y = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	/**
	 * Z
	 */
	private function get_z():Float
	{
		this.lazy.validate();

		return this.value.z;
	}

	private function set_z( value:Float ):Float
	{
		if ( !MathUtil.isEqual( this.value.z, value ) )
		{
			this.value.z = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	/**
	 * W
	 */
	private function get_w():Float
	{
		this.lazy.validate();

		return this.value.w;
	}

	private function set_w( value:Float ):Float
	{
		if ( !MathUtil.isEqual( this.value.w, value ) )
		{
			this.value.w = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	// ----------------------------------------------- //
	// ----------------------------------------------- //

	/**
	 * rescales each component between 0 and 1 without changing its ratio to each other so
	 * the length of the vector/quaternion is 1. if the lenght is zero, it will set this
	 * quaternion to identity (0,0,0,1).
	 */
	public function normalize():Void
	{
		this.lazy.validate();

		this.value.normalize();

		this.lazy.dispatchUpdate();
	}

	/**
	 * squareroot of x^2 + y^2 + z^2 + w^2
	 *
	 * @return length of the vector/quaternion
	 */
	public function length():Float
	{
		this.lazy.validate();

		return this.value.length();
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
		return "[LazyQuaternion;" + this.x + ", " + this.y + ", " + this.z + ", " + this.w + "]";
	}

}
