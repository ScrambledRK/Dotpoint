package at.dotpoint.math.tensor;

import at.dotpoint.math.spatial.Point;
import at.dotpoint.math.tensor.ITensor.TTensor;

/**
 *
 */
interface IVector<T:IVector<T>> extends ITensor<T>
{

	/**
	 * dot product: x1 * x2 + y1 * y2
	 */
	public function dot( b:T):Float;

	/**
	 * squareroot(x^2 + y^2) [by default, or squared if true] of the given vector
	 */
	public function magnitude( squared:Bool = false ):Float;

	// -------------------------------------- //
	// magnitude range

	/**
	 * rescales each component so the magnitude equals 1. if magnitude is zero, nothing happens. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function normalize():T;

	/**
	 * caps the magnitude of the this vector to the given maximum length. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function truncate( max:Float ):T;

	/**
	 * stretches the magnitude of the this vector to the given minimum length. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function stretch( min:Float ):T;

	/**
	 * clamp the magnitude of the this vector to the given range. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function clamp( min:Float, max:Float ):T;

	// -------------------------------------- //
	// component range

	/**
	 * componentwise max values of each given vector. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function max( b:T):T;

	/**
	 * componentwise min values of each given vector. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function min( b:T):T;

	/**
	 * interpolates lineary between two given vectors. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function lerp( b:T, delta:Float ):T;

	/**
	 * interpolates between two given vectors. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function interpolate( b:T, delta:Float, method:Float->Float ):T;

	// -------------------------------------- //
	// spatial

	/**
	 * projects this vector onto the other given vector. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function project( b:T):T;

	/**
	 * reflecting this vector around a given normal. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function reflect( normal:T):T;

	//
	public function distance( b:Point<T>, squared:Bool = false ):Float;
}
