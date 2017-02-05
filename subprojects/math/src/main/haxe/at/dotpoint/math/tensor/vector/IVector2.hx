package at.dotpoint.math.tensor.vector;
import at.dotpoint.math.tensor.ITensor;

/**
 * vector with 2 components (x,y),
 * with getter/setter indirection
 */
interface IVector2 extends ITensor
{
	/** x component, usually x-axis in euler coordinate system */
	public var x(get, set):Float;
	
	/** y component, usually y-axis in euler coordinate system */
	public var y(get, set):Float;
}