package at.dotpoint.display.renderable.basic;

/**
 * 2017-04-07
 * @author RK
 */
class RenderableType
{

	public static var GEOMETRY(default,never) 	= 0;
	public static var MATERIAL(default,never) 	= 1;
	public static var SHADER(default,never) 	= 2;
	public static var SPATIAL(default, never) 	= 3;

	//
	public static function getTypeSize():Int
	{
		return 4;
	}
}
