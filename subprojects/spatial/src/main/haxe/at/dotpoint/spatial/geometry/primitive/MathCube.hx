package at.dotpoint.spatial.geometry.primitive;

import at.dotpoint.math.axis.AxisEuler;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
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
	public static function clone( from:ICube, ?output:ICube ):ICube
	{
		if( output == null )
			output = new Cube();

		output.center.x = from.center.x;
		output.center.y = from.center.y;
		output.center.z = from.center.z;
		output.extent.x = from.extent.x;
		output.extent.y = from.extent.y;
		output.extent.z = from.extent.z;

		return output;
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
			case AxisEuler.X: return a.extent.x + a.extent.x;
			case AxisEuler.Y: return a.extent.y + a.extent.y;
			case AxisEuler.Z: return a.extent.z + a.extent.z;
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
		{
			switch( axis )
			{
				case AxisEuler.X: a.extent.x = value * 0.5;
				case AxisEuler.Y: a.extent.y = value * 0.5;
				case AxisEuler.Z: a.extent.z = value * 0.5;
			}
		}
		else
		{
			var center:IVector3 = MathCube.getPoint( a, pivot );
	
			switch( axis )
			{
				case AxisEuler.X:
				{
					MathCube.setMin( a, axis, center.x - value * pivot.x );
					MathCube.setMax( a, axis, center.x + value * (1 - pivot.x) );
				}
				
				case AxisEuler.Y:
				{
					MathCube.setMin( a, axis, center.y - value * pivot.y );
					MathCube.setMax( a, axis, center.y + value * (1 - pivot.y) );
				}
				
				case AxisEuler.Z:
				{
					MathCube.setMin( a, axis, center.z - value * pivot.z );
					MathCube.setMax( a, axis, center.z + value * (1 - pivot.z) );
				}
			}
		}		

		return value;
	}
	
	// ------------------------------------ //
	// ------------------------------------ //
	
	/**
	 * sets the min.x/y/z (TOP_LEFT_FRONT corner of the cube)
	 * 
	 * @param 	a target cube
	 * @param 	axis X for width, Y for height, Z for length
	 * @param 	value new min in euler coordinate system 
	 * @return 	given cube 'a' for chaining
	 */
	public static function setMin( a:ICube, axis:AxisEuler, value:Float ):ICube
	{		
		switch( axis )
		{
			case AxisEuler.X:
			{
				var dx:Float = (a.center.x - a.extent.x - value) * 0.5;
				
				a.center.x -= dx;		
				a.extent.x += dx;
			}
			
			case AxisEuler.Y:
			{
				var dy:Float = (a.center.y - a.extent.y - value) * 0.5;
				
				a.center.y -= dy;		
				a.extent.y += dy;
			}
			
			case AxisEuler.Z:
			{
				var dz:Float = (a.center.z - a.extent.z - value) * 0.5;
				
				a.center.z -= dz;		
				a.extent.z += dz;
			}
		}	
		
		return a;
	}
	
	/**
	 * gets the min.x/y/z (TOP_LEFT_FRONT corner of the cube)
	 * 
	 * @param 	a target cube
	 * @param 	axis X for width, Y for height, Z for length
	 * @return 	min.x/y/z
	 */
	public static function getMin( a:ICube, axis:AxisEuler ):Float
	{ 
		switch( axis )
		{
			case AxisEuler.X: return a.center.x - a.extent.x;
			case AxisEuler.Y: return a.center.y - a.extent.y;
			case AxisEuler.Z: return a.center.z - a.extent.z;
		}
	}

	/**
	 * sets the max.x/y/z (BOTTOM_RIGHT_BACK corner of the cube)
	 * 
	 * @param 	a target cube
	 * @param 	axis X for width, Y for height, Z for length
	 * @param 	value new max in euler coordinate system 
	 * @return 	given cube 'a' for chaining
	 */
	public static function setMax( a:ICube, axis:AxisEuler, value:Float ):ICube
	{		
		switch( axis )
		{
			case AxisEuler.X:
			{
				var dx:Float = (a.center.x + a.extent.x - value) * 0.5;
				
				a.center.x -= dx;		
				a.extent.x += dx;
			}
			
			case AxisEuler.Y:
			{
				var dy:Float = (a.center.y + a.extent.y - value) * 0.5;
				
				a.center.y -= dy;		
				a.extent.y += dy;
			}
			
			case AxisEuler.Z:
			{
				var dz:Float = (a.center.z + a.extent.z - value) * 0.5;
				
				a.center.z -= dz;		
				a.extent.z += dz;
			}
		}	
		
		return a;
	}
	
	/**
	 * gets the max.x/y/z (BOTTOM_RIGHT_BACK corner of the cube)
	 * 
	 * @param 	a target cube
	 * @param 	axis X for width, Y for height, Z for length
	 * @return 	max.x/y/z
	 */
	public static function getMax( a:ICube, axis:AxisEuler ):Float
	{ 
		switch( axis )
		{
			case AxisEuler.X: return a.center.x + a.extent.x;
			case AxisEuler.Y: return a.center.y + a.extent.y;
			case AxisEuler.Z: return a.center.z + a.extent.z;
		}
	}
	
	// ------------------------------------ //
	// ------------------------------------ //
	
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
		if( output == null )
			output = new Vector3();

		output.x = MathCube.getMin( a, AxisEuler.X ) + MathCube.getSpan( a, AxisEuler.X ) * point.x;
		output.y = MathCube.getMin( a, AxisEuler.Y ) + MathCube.getSpan( a, AxisEuler.Y ) * point.y;
		output.z = MathCube.getMin( a, AxisEuler.Z ) + MathCube.getSpan( a, AxisEuler.Z ) * point.z;

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
		MathCube.setSpan( a, AxisEuler.X, w, pivot );
		MathCube.setSpan( a, AxisEuler.Y, h, pivot );
		MathCube.setSpan( a, AxisEuler.Z, l, pivot );
		
		return a;
	}

	/**
	 * sets `min` and `max` extrema at once. (x,y,z values are copied)
	 *
	 * @param 	a target cube
	 * @param	min	extrema (must be smaller than max)
	 * @param	max	extrema (must be bigger than min)
	 * @return given cube 'a' for chaining
	 */
	public static function setExtrema( a:ICube, min:IVector3, max:IVector3 ):ICube
	{
		if ( min.x > max.x || min.y > max.y || min.z > max.z )
			throw "dimensions must be positive but max extend " + max + " is smaller than min " + min;

		MathCube.setMin( a, AxisEuler.X, min.x );
		MathCube.setMin( a, AxisEuler.Y, min.y );
		MathCube.setMin( a, AxisEuler.Z, min.z );
		MathCube.setMax( a, AxisEuler.X, max.x );
		MathCube.setMax( a, AxisEuler.Y, max.y );
		MathCube.setMax( a, AxisEuler.Z, max.z );
		
		return a;
	}

	// ************************************************************************ //
	// insertion
	// ************************************************************************ //
	
	/**
	 * tests if the given `operator` bound is within the boundings of `source`. a cube is considered to be
	 * within the bounds if `operator.min >(=) source.min` and `operator.max <(=) source.max`. the `equal` parameter
	 * specifies whether or not `operator` is allowed to have the same extrema as `source` <br/>
	 *
	 * @param	source	cube to perform the check on
	 * @param	operator	cube to perform the check with
	 * @param	equal	true touching bounds is considered still inside
	 * @return	true `operator` is within `cube`
	 */
	public static function isCubeInside( source:ICube, operator:ICube, ?equal:Bool = false ):Bool
	{
		var min:Bool = MathCube.isPointInside( source, operator.getMin(), equal );	
		var max:Bool = MathCube.isPointInside( source, operator.getMax(), equal );	
			
		return min && max;
	}

	/**
	 * tests if the given `point` vector is within the boundings of `source`. a point is considered to be
	 * within the bounds if `point >(=) cube.min` and `point <(=) cube.max`. the `equal` parameter
	 * specifies whether or not `point` is allowed to have the same value as the extends of `cube` <br/>
	 *
	 * @param	source	cube to perform the check on
	 * @param	operator	point in euler space to perform the check with
	 * @param	equal	true touching bounds is considered still inside
	 * @return	true `point` is within `cube`
	 */
	public static function isPointInside( source:ICube, operator:IVector3, ?equal:Bool = false ):Bool
	{
		if( equal )
		{
			if( operator.x <= MathCube.getMin( source, AxisEuler.X ) )
				return false;

			if( operator.y <= MathCube.getMin( source, AxisEuler.Y ) )
				return false;

			if( operator.z <= MathCube.getMin( source, AxisEuler.Z ) )
				return false;

			if( operator.x >= MathCube.getMax( source, AxisEuler.X ) )
				return false;

			if( operator.y >= MathCube.getMax( source, AxisEuler.Y ) )
				return false;

			if( operator.z >= MathCube.getMax( source, AxisEuler.Z ) )
				return false;
		}
		else
		{
			if( operator.x < MathCube.getMin( source, AxisEuler.X ) )
				return false;

			if( operator.y < MathCube.getMin( source, AxisEuler.Y ) )
				return false;

			if( operator.z < MathCube.getMin( source, AxisEuler.Z ) )
				return false;

			if( operator.x > MathCube.getMax( source, AxisEuler.X ) )
				return false;

			if( operator.y > MathCube.getMax( source, AxisEuler.Y ) )
				return false;

			if( operator.z > MathCube.getMax( source, AxisEuler.Z ) )
				return false;
		}

		return true;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 * inserts the given `operator` into the given `source`, extending its boundings/extents in
	 * case the `operator` `min`/`max` is smaller/bigger than the one cube ones. <br/>
	 *
	 * @param	source	cube to perform the insertion on
	 * @param	operator	cube that should be inserted
	 */
	public static function insertCube( source:ICube, operator:ICube ):Void
	{
		MathCube.insertPoint( source, operator.getMin() );
		MathCube.insertPoint( source, operator.getMax() );
	}

	/**
	 * inserts the given `point` into the given `source`, extending its boundings/extents in
	 * case the `point` is smaller/bigger than the one cube min`/`max` extents. <br/>
	 *
	 * @param	cube	cube to perform the insertion on
	 * @param	point	point that should be inserted
	 */
	public static function insertPoint( source:ICube, operator:IVector3 ):Void
	{
		if( operator.x < MathCube.getMin( source, AxisEuler.X ) )
			MathCube.setMin( source, AxisEuler.X, operator.x );

		if( operator.y < MathCube.getMin( source, AxisEuler.Y ) )
			MathCube.setMin( source, AxisEuler.X, operator.y );
			
		if( operator.z < MathCube.getMin( source, AxisEuler.Z ) )
			MathCube.setMin( source, AxisEuler.Z, operator.z );

		if( operator.x > MathCube.getMax( source, AxisEuler.X ) )
			MathCube.setMax( source, AxisEuler.X, operator.x );

		if( operator.y > MathCube.getMax( source, AxisEuler.Y ) )
			MathCube.setMax( source, AxisEuler.X, operator.y );

		if( operator.z > MathCube.getMax( source, AxisEuler.Z ) )
			MathCube.setMax( source, AxisEuler.Z, operator.z );	
	}	
}