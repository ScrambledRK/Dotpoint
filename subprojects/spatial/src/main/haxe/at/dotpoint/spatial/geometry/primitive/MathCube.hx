package at.dotpoint.spatial.geometry.primitive;

import at.dotpoint.math.axis.AxisEuler;
import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.geometry.primitive.cube.Cube;
import at.dotpoint.spatial.geometry.primitive.cube.ICube;

/**
 * min, max representation of an axis aligned cube, useful for bounding box. <br/>
 *
 * some operations use a `pivot` to define how `min`/`max` extends change when `width`/`height`/`length` changes.
 * relative value (between 0 and 1) specifying the center of the cube (relative to min/max boundings). 
 * 
 * the cube class destincts between an empty and non-empty cube. empty cubes accept any initial
 * min/max extend, for example when creating a cube using `insertVector3()`.
 */
class MathCube 
{
	
	/**
	 * copies this instance into a new cube instance
	 *
	 * @param	from	cube to copy all values from (no matter if empty or not)
	 * @param	output 	optional cube the result will be stored into or new instance if none provided
	 * @return			provided `output` cube or a new one with the computational result
	 */
	inline public static function clone( from:ICube, ?output:ICube ):ICube
	{
		if( output == null )
			output = new Cube();

		output.min.x = from.min.x;
		output.min.y = from.min.y;
		output.min.z = from.min.z;
		output.max.x = from.max.x;
		output.max.y = from.max.y;
		output.max.z = from.max.z;

		return output;
	}
	
	/**
	 * sets the `min`/`max` to zero. note that a cube with a volume of 0 is still considered a valid cube.
	 * use `setEmpty()` to create a truly empty cube. empty cubes opposed to non-empty cubes accept any
	 * initial extent/dimension.
	 * 
	 * @param 	a target cube
	 * @return given cube 'a' for chaining
	 */
	public static function setZero( a:ICube ):ICube
	{
		a.min.x = 0;
		a.min.y = 0;
		a.min.z = 0;
		a.max.x = 0;
		a.max.y = 0;
		a.max.z = 0;
		
		return a;
	}
	
	/**
	 * sets the `min` to (1,1,1) and `max` to (-1,-1,-1), indicating an empty (invalid) cube.
	 * an empty cube accepts any initial extent value, for example when creating a cube using `insertVector3()`.
	 * 
	 * @param 	a target cube
	 * @return given cube 'a' for chaining
	 */
	 public static function setEmpty( a:ICube ):ICube
	{
		a.min.x =  1;
		a.min.y =  1;
		a.min.z =  1;
		a.max.x = -1;
		a.max.y = -1;
		a.max.z = -1;
		
		return a;
	}

	/**
	 * checks if `width`, `height` or `length` are negative. negative values are only possible when constructed
	 * or `setEmpty()` has been called. an empty cube accepts any initial extent value <br/>
	 *
	 * this check is useful in combination with `insertVector3()` or `insertCube()` to
	 * generate boundings based on a point cloud, or other bounding-cubes.
	 *
	 * @param 	a target cube
	 * @return true if empty-cube, false if not
	 */
	public static function isEmpty( a:ICube ):Bool
	{
		var x:Bool = MathCube.getSpan( a, AxisEuler.X ) < 0;
		var y:Bool = MathCube.getSpan( a, AxisEuler.Y ) < 0;
		var z:Bool = MathCube.getSpan( a, AxisEuler.Z ) < 0;
		
		return x || y || z;
	}
	
	// ************************************************************************ //
	// span (width/height/length)
	// ************************************************************************ //

	/**
	 * @param 	a target cube
	 * @param 	axis X for width, Y for height, Z for length
	 * @return 	span between min.x/y/z and max.x/y/z; never negative unless unset (empty cube)
	 */
	public static function getSpan( a:ICube, axis:AxisEuler ):Float
	{
		switch( axis )
		{
			case AxisEuler.X: return a.max.x - a.min.x;
			case AxisEuler.Y: return a.max.y - a.min.y;
			case AxisEuler.Z: return a.max.z - a.min.z;
		}
	}	
	
	/**
	 * changes span between min.x/y/z and max.x/y/z
	 *
	 * @param 	a target cube
	 * @param 	axis X for width, Y for height, Z for length
	 * @param	value new width of the cube; must not be negative
	 * @param	pivot used as a center to change the dimension from, default is center
	 * @return	new width
	 */
	public static function setSpan( a:ICube, axis:AxisEuler, value:Float, ?pivot:IVector3 ):Float
	{
		if( value < 0 )
			throw "dimension must be positive but " + value + " given";

		if( pivot == null )
			pivot = new Vector3( 0.5, 0.5, 0.5 );
			
		if( MathCube.isEmpty( a ) )
			MathCube.setZero( a );

		//
		var center:IVector3 = MathCube.getPoint( a, pivot );

		switch( axis )
		{
			case AxisEuler.X:
			{
				a.min.x = center.x - value * pivot.x;
				a.max.x = center.x + value * (1 - pivot.x);
			}
			
			case AxisEuler.Y:
			{
				a.min.y = center.y - value * pivot.y;
				a.max.y = center.y + value * (1 - pivot.y);
			}
			
			case AxisEuler.Z:
			{
				a.min.z = center.z - value * pivot.z;
				a.max.z = center.z + value * (1 - pivot.z);
			}
		}		

		return value;
	}
	
	/**
	 * calculates a point in euler space using the current boundings (`min`/`max` extents) and the given
	 * relative `point` (between 0 and 1). </br>
	 *
	 * for example a requested point (0,0,0) will return the `min` extent values, (1,1,1) the `max` extent
	 * and (0.5,0.5,0.5) will return the center.
	 *
	 * @param 	a target cube
	 * @param	point	x, y, z between 0 and 1
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	 public static function getPoint( a:ICube, point:IVector3, ?output:IVector3 ):IVector3
	{
		if( MathCube.isEmpty( a ) )
			throw "cannot calculate relative coordinates of an empty cube";
		
		if( output == null )
			output = new Vector3();

		output.x = a.min.x + MathCube.getSpan( a, AxisEuler.X ) * point.x;
		output.y = a.min.y + MathCube.getSpan( a, AxisEuler.Y ) * point.y;
		output.z = a.min.z + MathCube.getSpan( a, AxisEuler.Z ) * point.z;

		return output;
	}
	
	// ************************************************************************ //
	// dimension/extent
	// ************************************************************************ //
	
	/**
	 * sets `width`, `height` and `length` at once.
	 *
	 * @param 	a target cube
	 * @param	w		width (span x axis, must be positive)
	 * @param	h		height (span y axis, must be positive)
	 * @param	l		length (span z axis, must be positive)
	 * @param	pivot	optional `pivot` (between 0 and 1 for each component)
	 * @return given cube 'a' for chaining
	 */
	public static function setDimensions( a:ICube, w:Float, h:Float, l:Float, ?pivot:IVector3 ):ICube
	{
		if( pivot == null )
			pivot = new Vector3( 0.5, 0.5, 0.5 );		// optimization attempt; this method could be more efficient in general
		
		MathCube.setSpan( a, AxisEuler.X, w, pivot );
		MathCube.setSpan( a, AxisEuler.Y, h, pivot );
		MathCube.setSpan( a, AxisEuler.Z, l, pivot );
		
		return a;
	}

	/**
	 * sets `min` and `max` extents at once. (x,y,z values are copied)
	 *
	 * @param 	a target cube
	 * @param	min		min extent (must be smaller than max)
	 * @param	max		max extent (must be bigger than min)
	 * @return given cube 'a' for chaining
	 */
	public static function setExtensions( a:ICube, min:IVector3, max:IVector3 ):ICube
	{
		if ( min.x > max.x || min.y > max.y || min.z > max.z )
			throw "dimensions must be positive but max extend " + max + " is smaller than min " + min;

		MathVector3.clone( min, a.min );
		MathVector3.clone( max, a.max );
		
		return a;
	}

	// ************************************************************************ //
	// insertion
	// ************************************************************************ //
	
	/**
	 * tests if the given `other` bound is within the boundings of `cube`. a cube is considered to be
	 * within the bounds if `other.min >(=) cube.min` and `other.max <(=) cube.max`. the `equal` parameter
	 * specifies whether or not `other` is allowed to have the same extents as `cube` <br/>
	 *
	 * if either `cube` or `other` are empty, the method returns false.
	 *
	 * @param	a	cube to perform the check on
	 * @param	b	cube to perform the check with
	 * @param	equal	true touching bounds is considered still inside
	 * @return	true `other` is within `cube`
	 */
	public static function isCubeInside( source:ICube, operator:ICube, ?equal:Bool = false ):Bool
	{
		if( MathCube.isEmpty( source ) || MathCube.isEmpty( operator ) )
			return false;

		var min:Bool = MathCube.isVector3Inside( source, operator.min, equal );	
		var max:Bool = MathCube.isVector3Inside( source, operator.max, equal );	
			
		return min && max;
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
	public static function isVector3Inside( source:ICube, operator:IVector3, ?equal:Bool = false ):Bool
	{
		if( MathCube.isEmpty( source ) )
			return false;

		if( equal )
		{
			if( operator.x <= source.min.x )
				return false;

			if( operator.y <= source.min.y )
				return false;

			if( operator.z <= source.min.z )
				return false;

			if( operator.x >= source.max.x )
				return false;

			if( operator.y >= source.max.y )
				return false;

			if( operator.z >= source.max.z )
				return false;
		}
		else
		{
			if( operator.x < source.min.x )
				return false;

			if( operator.y < source.min.y )
				return false;

			if( operator.z < source.min.z )
				return false;

			if( operator.x > source.max.x )
				return false;

			if( operator.y > source.max.y )
				return false;

			if( operator.z > source.max.z )
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
	 * if the given `other` cube is empty, the method throws error
	 *
	 * @param	a	cube to perform the insertion on
	 * @param	b	cube that should be inserted
	 */
	public static function insertCube( source:ICube, operator:ICube ):ICube
	{
		if( MathCube.isEmpty( operator ) )
			throws "cannot insert empty cube into other cube";

		MathCube.insertVector3( source, operator.min );
		MathCube.insertVector3( source, operator.max );
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
	public static function insertVector3( source:ICube, operator:IVector3 ):Void
	{
		if( MathCube.isEmpty( source ) )
		{
			source.min.x = operator.x;
			source.min.y = operator.y;
			source.min.z = operator.z;

			source.max.x = operator.x;
			source.max.y = operator.y;
			source.max.z = operator.z;
		}
		else
		{
			if( operator.x < source.min.x )
				source.min.x = operator.x;

			if( operator.y < source.min.y )
				source.min.y = operator.y;

			if( operator.z < source.min.z )
				source.min.z = operator.z;

			if( operator.x > source.max.x )
				source.max.x = operator.x;

			if( operator.y > source.max.y )
				source.max.y = operator.y;

			if( operator.z > source.max.z )
				source.max.z = operator.z;
		}
	}	
}