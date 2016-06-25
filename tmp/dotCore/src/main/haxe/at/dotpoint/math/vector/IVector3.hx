package haxe.at.dotpoint.math.vector;

/**
 * vector with 3 components (x,y,z) + homogenous (w: 0 = direction; 1 = point)
 */
interface IVector3 extends IVector2
{

	/** z component, usually z-axis in euler coordinate system */
	public var z(get, set):Float;
	
	/** homogenous w component, useful for projection calculations. 0 = direction, 1 = point */
	public var w(get, set):Float;
	
}