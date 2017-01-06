package at.dotpoint.math.quaternion;

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
}
