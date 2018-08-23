package at.dotpoint.math.tensor.vector;

/**
 * vector with 3 components (x,y,z) + homogenous (w: 0 = direction; 1 = point),
 * with getter/setter indirection
 */
interface IVector3 extends IVector2
{
	/** z component, usually z-axis in euler coordinate system */
	public var z(get, set):Float;
	
	/** homogenous w component, useful for projection calculations. 0 = direction, 1 = point */
	public var w(get, set):Float;
}