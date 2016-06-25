package haxe.at.dotpoint.math.vector;

/**
 * vector with 2 components (x,y)
 */
interface IVector2 
{

	/** x component, usually x-axis in euler coordinate system */
	public var x(get, set):Float;
	
	/** y component, usually y-axis in euler coordinate system */
	public var y(get, set):Float;
	
	/**
	 * rescales each component between 0 and 1 without changing its ratio to each other so
	 * the length of the vector is 1. 
	 */
	public function normalize():Void;
	
	/** 
	 * squareroot of x^2 + y^2 (+ z^2 (ignores homogenous component))	 * 
	 * @return length of the vector
	 */
	public function length():Float;
}