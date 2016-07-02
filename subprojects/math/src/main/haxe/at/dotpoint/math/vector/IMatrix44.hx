package haxe.at.dotpoint.math.vector;

/**
 * 4x4 column major matrix. upper 3x3 matrix is assumed to be rotation/scaling, 4rd column translation.
 */
interface IMatrix44 extends IMatrix33 
{
	public var m14:Float;
	public var m24:Float;
	public var m34:Float;
	
	public var m41:Float; public var m42:Float; public var m43:Float; public var m44:Float; 	
	
	/**
	 * takes the upper 4x4 matrix values and copies them to this object
	 * can be used to copy/set rotation/scale as well as translation
	 * 
	 * @param	matrix 4x4 matrix to copy the values from
	 */
	public function set44( m:IMatrix44 ):Void;

	/**
	 * sets this matrix to the inverse (might not always be possible)
	 */
	public function inverse():Void;
}