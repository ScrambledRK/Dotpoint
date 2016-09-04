package at.dotpoint.math.geom;

import at.dotpoint.math.Axis.AxisRelative;
import at.dotpoint.math.geom.ICube;
import at.dotpoint.math.vector.IVector3;
import at.dotpoint.math.vector.Vector3;


/**
 * min, max representation of an axis aligned cube, useful for bounding box. <br/>
 *
 * cube uses a `pivot` to define how `min`/`max` extends change when `width`/`height`/`length` changes.
 * the cube class destincts between an empty and non-empty cube. empty cubes accept any initial
 * min/max extend, for example when creating a cube using `insertVector3()`.
 */
class Cube implements ICube
{

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
	@:isVar public var pivot(get,set):IVector3;

	// -------------------- //

	/**
	 * minimum values in euler coordinate system (TOP_LEFT_FRONT corner of the cube).
	 * components (x,y,z) can never be bigger than maximum components, unless the cube is set as empty
	 */
	@:isVar public var min(get, null):IVector3;

	/**
	 * maximum values in euler coordinate system (BOTTOM_RIGHT_BACK corner of the cube).
	 * components (x,y,z) can never be smaller than minimum components, unless the cube is set as empty.
	 */
	@:isVar public var max(get,null):IVector3;

	// -------------------- //

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
		this.pivot = pivot != null ? pivot : cast AxisRelative.TOP_LEFT_FRONT;

		this.min = new Vector3();
		this.max = new Vector3();

		this.setEmpty();
	}

	/**
	 * copies this instance into a new cube instance
	 *
	 * @param	output 	optional cube the result will be stored into or new instance if none provided
	 * @return			provided `output` cube or a new one with the computational result
	 */
	public function clone( ?output:Cube ):Cube
	{
		if( output == null )
			output = new Cube();

		output.pivot.x 	= this.pivot.x;
		output.pivot.y 	= this.pivot.y;
		output.pivot.z 	= this.pivot.z;
		output.min.x 	= this.min.x;
		output.min.y 	= this.min.y;
		output.min.z 	= this.min.z;
		output.max.x 	= this.max.x;
		output.max.y 	= this.max.y;
		output.max.z 	= this.max.z;

		return output;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 */
	private function get_min():IVector3 { return this.min; }

	/**
	 *
	 */
	private function get_max():IVector3 { return this.max; }

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 * @return
	 */
	private function get_pivot():IVector3{ return this.pivot; }

	private function set_pivot( value:IVector3 ):IVector3
	{
		return this.pivot = value;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 * @return
	 */
	private function get_width():Float { return this.max.x - this.min.x; }

	private function set_width( value:Float ):Float
	{
		if( value < 0 )
			throw "dimension must be positive but " + value + " given";

		if( this.isEmpty() )
			this.setZero();

		var center:IVector3 = this.getPivot();

		this.min.x = center.x - value * this.pivot.x;
		this.max.x = center.x + value * (1 - this.pivot.x);

		return value;
	}

	/**
	 *
	 * @return
	 */
	private function get_height():Float { return this.max.y - this.min.y; }

	private function set_height( value:Float ):Float
	{
		if( value < 0 )
			throw "dimension must be positive but " + value + " given";

		if( this.isEmpty() )
			this.setZero();

		var center:IVector3 = this.getPivot();

		this.min.y = center.y - value * this.pivot.y;
		this.max.y = center.y + value * (1 - this.pivot.y);

		return value;
	}

	/**
	 *
	 * @return
	 */
	private function get_length():Float { return this.max.z - this.min.z; }

	private function set_length( value:Float ):Float
	{
		if( value < 0 )
			throw "dimension must be positive but " + value + " given";

		if( this.isEmpty() )
			this.setZero();

		var center:IVector3 = this.getPivot();

		this.min.z = center.z - value * this.pivot.z;
		this.max.z = center.z + value * (1 - this.pivot.z);

		return value;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * sets the `min`/`max` to zero. note that a cube with a volume of 0 is still considered a valid cube.
	 * use `setEmpty()` to create a truly empty cube. empty cubes opposed to non-empty cubes accept any
	 * initial extent, for example when creating a cube using `insertVector3()`.
	 */
	public function setZero():Void
	{
		this.min.x = 0;
		this.min.y = 0;
		this.min.z = 0;
		this.max.x = 0;
		this.max.y = 0;
		this.max.z = 0;
	}

	/**
	 * sets the `min` to (1,1,1) and `max` to (-1,-1,-1), indicating an empty (invalid) cube.
	 * an empty cube accepts any initial extent value, for example when creating a cube using `insertVector3()`.
	 */
	public function setEmpty():Void
	{
		this.min.x =  1;
		this.min.y =  1;
		this.min.z =  1;
		this.max.x = -1;
		this.max.y = -1;
		this.max.z = -1;
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
		return this.width < 0 || this.height < 0 || this.length < 0;
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
	public function setDimensions( w:Float, h:Float, l:Float, ?pivot:IVector3 ):Void
	{
		if( pivot != null )
			this.pivot = pivot;

		this.width  = w;
		this.height = h;
		this.length = l;
	}

	/**
	 * sets `min` and `max` extents at once. if a `pivot` argument is given,
	 * sets the pivot first, then sets min/max.
	 *
	 * @param	min		min extent (must be smaller than max)
	 * @param	max		max extent (must be bigger than min)
	 * @param	pivot	optional new `pivot` (between 0 and 1 for each component)
	 */
	//
	// TODO: copy x/y/z values instead of using replacing the vector?
	//
	public function setExtensions( min:IVector3, max:IVector3, ?pivot:IVector3 ):Void
	{
		if( pivot != null )
			this.pivot = pivot;

		if( min.x > max.x || min.y > max.y || min.z > max.z )
			throw "dimensions must be positive but max extend " + max + " is smaller than min " + min;

		this.min = min;
		this.max = max;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 * @param	position
	 * @return
	 */
	private function getPivot<T:IVector3>( ?output:T ):T
	{
		return this.getPoint( this.pivot, output );
	}

	/**
	 * calculates a point in euler space using the current boundings (`min`/`max` extents) and the given
	 * relative `point` (between 0 and 1). </br>
	 *
	 * for example a requested point (0,0,0) will return the `min` extent values, (1,1,1) the `max` extent
	 * and (0.5,0.5,0.5) will return the center.
	 *
	 * @param	point	x, y, z between 0 and 1
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public function getPoint<T:IVector3>( point:IVector3, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();

		output.x = this.min.x + this.width  * point.x;
		output.y = this.min.y + this.height * point.y;
		output.z = this.min.z + this.length * point.z;

		return output;
	}

	// ************************************************************************ //
	// static Operations
	// ************************************************************************ //

	/**
	 * tests if the given `other` bound is within the boundings of `cube`. a cube is considered to be
	 * within the bounds if `other.min >(=) cube.min` and `other.max <(=) cube.max`. the `equal` parameter
	 * specifies whether or not `other` is allowed to have the same extents as `cube` <br/>
	 *
	 * if either `cube` or `other` are empty, the method returns false.
	 *
	 * @param	cube	cube to perform the check on
	 * @param	other	cube to perform the check with
	 * @param	equal	true touching bounds is considered still inside
	 * @return	true `other` is within `cube`
	 */
	public static function isCubeInside( cube:ICube, other:ICube, ?equal:Bool = false ):Bool
	{
		if( cube.isEmpty() || other.isEmpty() )
			return false;

		return Cube.isVector3Inside( cube, other.min, equal ) && Cube.isVector3Inside( cube, other.max, equal );
	}

	/**
	 * tests if the given `point` vector is within the boundings of `cube`. a point is considered to be
	 * within the bounds if `point >(=) cube.min` and `point <(=) cube.max`. the `equal` parameter
	 * specifies whether or not `point` is allowed to have the same value as the extends of `cube` <br/>
	 *
	 * if `cube` is empty, the method returns false.
	 *
	 * @param	cube	cube to perform the check on
	 * @param	point	point in euler space to perform the check with
	 * @param	equal	true touching bounds is considered still inside
	 * @return	true `point` is within `cube`
	 */
	public static function isVector3Inside( cube:ICube, point:IVector3, ?equal:Bool = false ):Bool
	{
		if( cube.isEmpty() )
			return false;

		if( equal )
		{
			if( point.x <= cube.min.x )
				return false;

			if( point.y <= cube.min.y )
				return false;

			if( point.z <= cube.min.z )
				return false;

			if( point.x >= cube.max.x )
				return false;

			if( point.y >= cube.max.y )
				return false;

			if( point.z >= cube.max.z )
				return false;
		}
		else
		{
			if( point.x < cube.min.x )
				return false;

			if( point.y < cube.min.y )
				return false;

			if( point.z < cube.min.z )
				return false;

			if( point.x > cube.max.x )
				return false;

			if( point.y > cube.max.y )
				return false;

			if( point.z > cube.max.z )
				return false;
		}

		return true;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 * inserts the given `other` into the given `cube`, extending its boundings/extents in
	 * case the `other` `min`/`max` is smaller/bigger than the one cube ones. <br/>
	 *
	 * note that a cube of zero volume is still considered valid and inserting one might not
	 * change it. (since for example: `other.min.x > cube.min.x`) use `cube.setEmpty()` first
	 * to always insert `other`.<br/>
	 *
	 * if the given `other` cube is empty, the method returns doing nothing.
	 *
	 * @param	cube	cube to perform the insertion on
	 * @param	other	cube that should be inserted
	 */
	public static function insertCube( cube:ICube, other:ICube ):Void
	{
		if( other.isEmpty() )
			return;

		Cube.insertVector3( cube, other.min );
		Cube.insertVector3( cube, other.max );
	}

	/**
	 * inserts the given `point` into the given `cube`, extending its boundings/extents in
	 * case the `point` is smaller/bigger than the one cube min`/`max` extents. <br/>
	 *
	 * note that a cube of zero volume is still considered valid and inserting a point might not
	 * change it. (since for example: `point.x > cube.min.x`) use `cube.setEmpty()` first
	 * to always insert the point.<br/>
	 *
	 * @param	cube	cube to perform the insertion on
	 * @param	point	point that should be inserted
	 */
	public static function insertVector3( cube:ICube, point:IVector3 ):Void
	{
		if( cube.isEmpty() )
		{
			cube.min.x = point.x;
			cube.min.y = point.y;
			cube.min.z = point.z;

			cube.max.x = point.x;
			cube.max.y = point.y;
			cube.max.z = point.z;
		}
		else
		{
			if( point.x < cube.min.x )
				cube.min.x = point.x;

			if( point.y < cube.min.y )
				cube.min.y = point.y;

			if( point.z < cube.min.z )
				cube.min.z = point.z;

			if( point.x > cube.max.x )
				cube.max.x = point.x;

			if( point.y > cube.max.y )
				cube.max.y = point.y;

			if( point.z > cube.max.z )
				cube.max.z = point.z;
		}
	}

	// ************************************************************************ //
	// toString
	// ************************************************************************ //

	/**
	 * prints min components followed by width/height/length
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		return "{x:" + this.min.x + " y:" + this.min.y + " z:" + this.min.z + " w:" + this.width + " h:" + this.height + " l:" + this.length + "}";
	}
}