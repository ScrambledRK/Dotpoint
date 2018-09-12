package at.dotpoint.math.spatial;

import at.dotpoint.math.tensor.IVector;

/**
 *
 */
interface IPoint<T:IVector<T>> extends IVector<T>
{

	/**
	 * calculates the distance between two vectors. 'this' will change.
	 */
	public function distance( b:T, squared:Bool = false ):Float;

}
