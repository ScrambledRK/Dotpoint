package haxe.at.dotpoint.math.lazy;

import haxe.at.dotpoint.dispatcher.lazy.LazyComponent;
import haxe.at.dotpoint.math.vector.IVector3;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * lazy evaluating vector3 dispatching changes through the lazy component. can be used
 * to invalidate objects based on the this object updating and vice-versa. since the
 * lazy system is a signal system bound to a single listener, the lazy component itself
 * responsible for dispatching updates/validation etc is hidden. use the "@:access" macro
 * to set listeners on the lazy component.
 */
class LazyVector3 implements IVector3
{

	/**
	 * actual vector3 object
	 */
	@:dox(show)
	//
	private var value(default,null):Vector3;

	/**
	 * responsible for dispatching/validating changes
	 */
	@:dox(show)
	//
	private var lazy(default,null):LazyComponent;

	// -------------- //

	/** x component, usually x-axis in euler coordinate system */
	public var x(get, set):Float;

	/** y component, usually y-axis in euler coordinate system */
	public var y(get, set):Float;

	/** z component, usually z-axis in euler coordinate system */
	public var z(get, set):Float;

	/** homogenous w component, useful for projection calculations. 0 = direction, 1 = point */
	public var w(get, set):Float;

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
		this.value = new Vector3( x, y, z, w );
		this.lazy  = new LazyComponent();
	}

	// ************************************************************************ //
	// Methods
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
		if( w == null )
			w = this.w;

		if ( MathUtil.isEqual( this.x, x )
		&& 	 MathUtil.isEqual( this.y, y )
		&& 	 MathUtil.isEqual( this.z, z )
		&& 	 MathUtil.isEqual( this.w, w ) ) return;

		// ---------- //

		this.value.x = x;
		this.value.y = y;
		this.value.z = z;
		this.value.w = w;

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
	 * the length of the vector is 1. if the lenght is zero, it will set this
	 * vector to identity (0,0,0,1).
	 */
	public function normalize():Void
	{
		this.lazy.validate();

		this.value.normalize();

		this.lazy.dispatchUpdate();
	}

	/**
	 * squareroot of x^2 + y^2 + z^2 (ignores homogenous component)
	 *
	 * @return length of the vector
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
		return "[LazyVector3;" + this.x + ", " + this.y + ", " + this.z + ", " + this.w + "]";
	}

}
