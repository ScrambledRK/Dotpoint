package at.dotpoint.gis.shape;

/**
 * ...
 * @author RK
 */
class ShapeTypesRecord 
{
	public static var NULL(default, never):Int 			= 0;
	
	public static var POINT(default, never):Int 		= 1;
	public static var POLYLINE(default, never):Int 		= 3;
	public static var POLYGON(default, never):Int 		= 5;
	public static var MULTIPOINT(default, never):Int 	= 8;
	
	public static var POINT_Z(default, never):Int 		= 11;
	public static var POLYLINE_Z(default, never):Int 	= 13;
	public static var POLYGON_Z(default, never):Int 	= 15;
	public static var MULTIPOINT_Z(default, never):Int 	= 18;
	
	public static var POINT_M(default, never):Int 		= 21;
	public static var POLYLINE_M(default, never):Int 	= 23;
	public static var POLYGON_M(default, never):Int 	= 25;
	public static var MULTIPOINT_M(default, never):Int 	= 28;
	
	public static var MULTIPATCH(default, never):Int 	= 31;
	
	// --------------------------------------------------- //
	// --------------------------------------------------- //
	
	//
	public static function getTypesSize():Int
	{
		return 32;
	}
}

//
class ShapePartType
{
	public static var TRIANGLE_STRIP(default, never):Int 	= 0;
	public static var TRIANGLE_FAN(default, never):Int 		= 1;
	public static var OUTER_RING(default, never):Int 		= 2;
	public static var INNER_RING(default, never):Int 		= 3;	
	public static var FIRST_RING(default, never):Int 		= 4;	
	public static var LAST_RING(default, never):Int 		= 5;	
}