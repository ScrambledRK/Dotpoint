package at.dotpoint.math.lazy;

import at.dotpoint.dispatcher.lazy.LazyComponent;
import at.dotpoint.math.geom.Cube;
import at.dotpoint.math.geom.ICube;
import at.dotpoint.math.vector.IVector3;
import at.dotpoint.math.vector.Vector3;

/**
 * lazy evaluating cube dispatching changes through the lazy component. can be used
 * to invalidate objects based on the this object updating and vice-versa. since the
 * lazy system is a signal system bound to a single listener, the lazy component itself
 * responsible for dispatching updates/validation etc is hidden. use the "@:access" macro
 * to set listeners on the lazy component.
 */
@:access(at.dotpoint.math.geom.Cube)
//
class LazyCube implements ICube
{

	/**
	 * actual vector3 object
	 */
	@:dox(show)
	//
	private var value:Cube;

	/**
	 * responsible for dispatching/validating changes
	 */
	@:dox(show)
	//
	private var lazy:LazyComponent;

	// -------------- //

	/**
	 * relative value (between 0 and 1) specifying the center of the cube (relative to min/max boundings).
	 * used when changing width/height/length to calculate the new `min`/`max` extends. can be set using
	 * `Axis.AxisRelative` </br>
	 *
	 * pivot is not a point/coordinate in euler space but can be calculated using `cube.getPoint( cube.pivot )`. </br>
	 *
	 * setting the pivot to `AxisRelative.TOP_LEFT_FRONT` (x:0,y:0,z:0) and changing width will only
	 * change the `max.x` component. setting it to (x:1,y:0,z:0) would only change the `min.x` component.
	 */
	public var pivot(get,set):IVector3;

	/**
	 * minimum values in euler coordinate system (TOP_LEFT_FRONT corner of the cube).
	 * components (x,y,z) can never be bigger than maximum components, unless the cube is set as empty
	 */
	public var min(get, null):IVector3;

	/**
	 * maximum values in euler coordinate system (BOTTOM_RIGHT_BACK corner of the cube).
	 * components (x,y,z) can never be smaller than minimum components, unless the cube is set as empty.
	 */
	public var max(get,null):IVector3;

	/** span between min.x and max.x; never negative unless unset (empty cube) */
	public var width(get, set):Float;

	/** span between min.y and max.y; never negative unless unset (empty cube) */
	public var height(get, set):Float;

	/** span between min.z and max.z; never negative unless unset (empty cube) */
	public var length(get,set):Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * creates a new empty cube (`min` component values > `max` component values) using the given pivot parameter. </br>
	 *
	 * an empty cube does not have a valid dimension (e.g. width/height/length values are negative). use `setDimensions()`,
	 * `setDimensions()` or the getter/setter `width`/`height`/`length` directly to setup a valid cube. </br>
	 * in case of using the width/height/length getter/setter the pivot will be used to calculate the `min`/`max` extends.
	 *
	 * @param	pivot	x, y, z between 0 and 1 or `AxisRelative.TOP_LEFT_FRONT` (0,0,0) if none provided
	 */
	public function new( ?pivot:IVector3 = null )
	{
		this.value = new Cube( pivot );
		this.lazy  = new LazyComponent();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * sets the `min` to (1,1,1) and `max` to (-1,-1,-1), indicating an empty (invalid) cube.
	 * an empty cube accepts any initial extent value, for example when creating a cube using `insertVector3()`.
	 */
	public function setEmpty():Void
	{
		this.value.setEmpty();
		this.lazy.dispatchUpdate();
	}

	/**
	 * checks if `width`, `height` or `length` are negative. negative values are only possible when constructed
	 * or `setEmpty()` has been called. an empty cube accepts any initial extent value <br/>
	 *
	 * this check is useful in combination with `insertVector3()` or `insertCube()` to
	 * generate boundings based on a point cloud, or other bounding-cubes.
	 *
	 * @return true if empty-cube, false if not
	 */
	public function isEmpty():Bool
	{
		this.lazy.validate();
		return this.value.isEmpty();
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 * sets `width`, `height` and `length` at once. if a `pivot` argument is given,
	 * sets the pivot first, then sets width/height/length.
	 *
	 * @param	w		width (span x axis, must be positive)
	 * @param	h		height (span y axis, must be positive)
	 * @param	l		length (span z axis, must be positive)
	 * @param	pivot	optional new `pivot` (between 0 and 1 for each component)
	 */
	public function setDimensions( w:Float, h:Float, l:Float, ?p:IVector3 ):Void
	{
		if( p == null )
			p = this.value.pivot;

		if ( MathUtil.isEqual( this.width,  w )
		&& 	 MathUtil.isEqual( this.height, h )
		&& 	 MathUtil.isEqual( this.length, l )
		&&   Vector3.isEqual( this.pivot, p ) ) return;

		// ---------- //

		this.value.pivot  = p;
		this.value.width  = w;
		this.value.height = h;
		this.value.length = l;

		this.lazy.dispatchUpdate();
	}

	/**
	 * sets `min` and `max` extents at once. if a `pivot` argument is given,
	 * sets the pivot first, then sets min/max.
	 *
	 * @param	min		min extent (must be smaller than max)
	 * @param	max		max extent (must be bigger than min)
	 * @param	pivot	optional new `pivot` (between 0 and 1 for each component)
	 */
	public function setExtensions( min:IVector3, max:IVector3, ?p:IVector3 ):Void
	{
		if( p == null )
			p = this.value.pivot;

		if ( Vector3.isEqual( this.min, min )
		&& 	 Vector3.isEqual( this.max, max )
		&&   Vector3.isEqual( this.pivot, p ) ) return;

		// ---------- //

		this.value.pivot = p;

		this.value.min.x = min.x;
		this.value.min.y = min.y;
		this.value.min.z = min.z;

		this.value.max.x = max.x;
		this.value.max.y = max.y;
		this.value.max.z = max.z;

		this.lazy.dispatchUpdate();
	}

	// ************************************************************************ //
	// ICube
	// ************************************************************************ //

	/**
	 * Pivot
	 */
	private function get_pivot():IVector3
	{
		this.lazy.validate();
		return this.value.pivot;
	}

	private function set_pivot( value:IVector3 ):IVector3
	{
		if ( !Vector3.isEqual( this.value.pivot, value ) )
		{
			this.value.pivot = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	// ----------------------------------------------- //
	// ----------------------------------------------- //

	/**
	 * W
	 */
	private function get_width():Float
	{
		this.lazy.validate();
		return this.value.width;
	}

	private function set_width( value:Float ):Float
	{
		if ( !MathUtil.isEqual( this.value.width, value ) )
		{
			this.value.width = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	/**
	 * H
	 */
	private function get_height():Float
	{
		this.lazy.validate();
		return this.value.height;
	}

	private function set_height( value:Float ):Float
	{
		if ( !MathUtil.isEqual( this.value.height, value ) )
		{
			this.value.height = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	/**
	 * L
	 */
	private function get_length():Float
	{
		this.lazy.validate();
		return this.value.length;
	}

	private function set_length( value:Float ):Float
	{
		if ( !MathUtil.isEqual( this.value.length, value ) )
		{
			this.value.length = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	// ----------------------------------------------- //
	// ----------------------------------------------- //

	/**
	 * Min
	 */
	private function get_min():IVector3
	{
		this.lazy.validate();
		return this.value.min;
	}

	private function set_min( value:IVector3 ):IVector3
	{
		if ( !Vector3.isEqual( this.value.min, value ) )
		{
			this.value.min = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	/**
	 * Max
	 */
	private function get_max():IVector3
	{
		this.lazy.validate();
		return this.value.max;
	}

	private function set_max( value:IVector3 ):IVector3
	{
		if ( !Vector3.isEqual( this.value.max, value ) )
		{
			this.value.max = value;
			this.lazy.dispatchUpdate();
		}

		return value;
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 * prints min components followed by width/height/length
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		return "{x:" + this.min.x + " y:" + this.min.y + " w:" + this.width + " h:" + this.height + "}";
	}

}
