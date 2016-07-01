package haxe.at.dotpoint.math;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * @author RK
 */

enum Axis
{
	X;
	Y;
	Z;
}

enum AxisDirection
{
	LEFT;
	RIGHT;
	UP;
	DOWN;
	FRONT;
	BACK;
}

class AxisRelative
{

	public static var CENTER:Vector3 				= new Vector3( 0.5,	0.5, 0.5 );

	// --------------------------- //

	public static var TOP:Vector3 					= new Vector3( 0.5,	0.0, 0.5 );
	public static var LEFT:Vector3 					= new Vector3( 0.0, 0.5, 0.5 );
	public static var RIGHT:Vector3 				= new Vector3( 1.0, 0.5, 0.5 );
	public static var BOTTOM:Vector3 				= new Vector3( 0.5, 1.0, 0.5 );

	// --------------------------- //
	// TOP, BOTTOM

	public static var TOP_LEFT:Vector3 				= new Vector3( 0.0,	0.0, 0.5 );
	public static var TOP_RIGHT:Vector3 			= new Vector3( 1.0,	0.0, 0.5 );

	public static var BOTTOM_LEFT:Vector3 			= new Vector3( 0.0,	1.0, 0.5 );
	public static var BOTTOM_RIGHT:Vector3 			= new Vector3( 1.0,	1.0, 0.5 );

	// --------------------------- //
	// FRONT, BACK

	public static var TOP_LEFT_FRONT:Vector3 		= new Vector3( 0.0,	0.0, 0.0 );
	public static var TOP_LEFT_BACK:Vector3 		= new Vector3( 0.0,	0.0, 1.0 );

	public static var TOP_RIGHT_FRONT:Vector3 		= new Vector3( 1.0,	0.0, 0.0 );
	public static var TOP_RIGHT_BACK:Vector3 		= new Vector3( 1.0,	0.0, 1.0 );

	public static var BOTTOM_LEFT_FRONT:Vector3 	= new Vector3( 0.0,	1.0, 0.0 );
	public static var BOTTOM_LEFT_BACK:Vector3 		= new Vector3( 0.0,	1.0, 1.0 );

	public static var BOTTOM_RIGHT_FRONT:Vector3 	= new Vector3( 1.0,	1.0, 0.0 );
	public static var BOTTOM_RIGHT_BACK:Vector3 	= new Vector3( 1.0,	1.0, 1.0 );

	/**
	 *
	 * @param	direction
	 * @return
	 */
	public static function getRelative( direction:AxisDirection ):Vector3
	{
		throw "not implemented";
		return null; // TODO: implement getRelative( AxisDirection ):V3
	}
}

class AxisOrientation
{
	public static var UP:Vector3 	    = new Vector3( 0.0,	1.0, 0.0, 0 );
	public static var RIGHT:Vector3 	= new Vector3( 1.0, 0.0, 0.0, 0 );
	public static var FRONT:Vector3 	= new Vector3( 0.0, 0.0, 1.0, 0 );

	public static var DOWN:Vector3 	    = new Vector3( 0.0,	-1.0, 0.0, 0 );
	public static var LEFT:Vector3 		= new Vector3( -1.0, 0.0, 0.0, 0 );
	public static var BACK:Vector3 		= new Vector3( 0.0, 0.0, -1.0, 0 );

	/**
	 *
	 * @param	direction
	 * @return
	 */
	public static function getOrientation( direction:AxisDirection ):Vector3
	{
		switch( direction )
		{
			case AxisDirection.LEFT:	return AxisOrientation.LEFT;
			case AxisDirection.RIGHT:	return AxisOrientation.RIGHT;
			case AxisDirection.UP:		return AxisOrientation.UP;
			case AxisDirection.DOWN:	return AxisOrientation.DOWN;
			case AxisDirection.FRONT:	return AxisOrientation.FRONT;
			case AxisDirection.BACK:	return AxisOrientation.BACK;
		}

		return null;
	}
}

