package haxe.at.dotpoint.math.vector;

/**
 * unit-quaternion is a Vector4 like object for interpolateable and gimbal-lock-free rotations;
 * note - this class does not guarantee to be a unit quaternion but some methodes may rely on it.
 */
interface IQuaternion
{
	/** imaginary x component */
	public var x(get, set):Float;
	
	/** imaginary y component */
	public var y(get, set):Float; 
	
	/** imaginary z component */
	public var z(get, set):Float; 
	
	/** real w component */
	public var w(get, set):Float; 

	/**
	 * rescales each component between 0 and 1 without changing its ratio to each other so
	 * the length of the vector/quaternion is 1. if the lenght is zero, it will set this
	 * quaternion to identity (0,0,0,1).
	 */
	public function normalize():Void;
	
	/** 
	 * squareroot of x^2 + y^2 + z^2 + w^2 
	 * 
	 * @return length of the vector/quaternion
	 */
	public function length():Float;
}
