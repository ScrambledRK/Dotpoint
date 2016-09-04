package at.dotpoint.math.geom;

import at.dotpoint.math.vector.IVector3;

/**
 * min, max representation of an axis aligned cube, useful for bounding box. <br/>
 *
 * cube uses a `pivot` to define how `min`/`max` extends change when `width`/`height`/`length` changes.
 * the cube class destincts between an empty and non-empty cube. empty cubes accept any initial
 * min/max extend, for example when creating a cube using `insertVector3()`.
 */
interface ICube
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
	public var pivot(get,set):IVector3;

	// -------------------- //

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

	// -------------------- //

	/**
	 * sets the `min` to (1,1,1) and `max` to (-1,-1,-1), indicating an empty (invalid) cube.
	 * an empty cube accepts any initial extent value, for example when creating a cube using `insertVector3()`.
	 */
	public function setEmpty():Void;

	/**
	 * checks if `width`, `height` or `length` are negative. negative values are only possible when constructed
	 * or `setEmpty()` has been called. an empty cube accepts any initial extent value <br/>
	 *
	 * this check is useful in combination with `insertVector3()` or `insertCube()` to
	 * generate boundings based on a point cloud, or other bounding-cubes.
	 *
	 * @return true if empty-cube, false if not
	 */
	public function isEmpty():Bool;

	// -------------------- //

	/**
	 * sets `width`, `height` and `length` at once. if a `pivot` argument is given,
	 * sets the pivot first, then sets width/height/length.
	 *
	 * @param	w		width (span x axis, must be positive)
	 * @param	h		height (span y axis, must be positive)
	 * @param	l		length (span z axis, must be positive)
	 * @param	pivot	optional new `pivot` (between 0 and 1 for each component)
	 */
	public function setDimensions( w:Float, h:Float, l:Float, ?pivot:IVector3 ):Void;

	/**
	 * sets `min` and `max` extents at once. if a `pivot` argument is given,
	 * sets the pivot first, then sets min/max.
	 *
	 * @param	min		min extent (must be smaller than max)
	 * @param	max		max extent (must be bigger than min)
	 * @param	pivot	optional new `pivot` (between 0 and 1 for each component)
	 */
	public function setExtensions( min:IVector3, max:IVector3, ?pivot:IVector3 ):Void;

}
