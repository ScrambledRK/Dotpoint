package haxe.at.dotpoint.math.geom;

import haxe.at.dotpoint.math.vector.IVector2;

/**
 * 15.02.15
 * @author RK
 */

interface IRectangle
{

	public var pivot(get,set):IVector2;

	// -------------------- //

	public var min(get,null):IVector2;
	public var max(get,null):IVector2;

	public var width	(get,set):Float;
	public var height	(get,set):Float;

	// -------------------- //

	/**
	 *
	 */
	public function setEmpty():Void;

	/**
	 *
	 */
	public function isEmpty():Bool;

	// -------------------- //

	/**
	 *
	 */
	public function setDimensions( w:Float, h:Float, ?p:IVector2 ):Void;

	/**
	 *
	 */
	public function setExtensions( min:IVector2, max:IVector2, ?p:IVector2 ):Void;

}
