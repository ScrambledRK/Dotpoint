package at.dotpoint.spatial.geometry.primitive.cube;

import at.dotpoint.math.tensor.vector.IVector3;

/**
 * min, max representation of an axis aligned cube, useful for bounding box. <br/>
 */
interface ICube
{

	/**
	 * center point in euler coordinate system.
	 */
	public var center(get, null):IVector3;

	/**
	 * (half) extentions from the center to the outer bounds of the cube. can never be negative unless
	 * the cube is "empty" (initial state)
	 */
	public var extent(get, null):IVector3;

	// ----------------- //
	// ----------------- //

	/**
	 * @param value new min in euler coordinate system (TOP_LEFT_FRONT corner of the cube)
	 * @return this cube for chaining
	 */
	public function setMin( value:IVector3 ):ICube;

	/**
	 * @param	output optional vector the result will be stored into or new instance if none provided
	 * @return	provided `output` vector or a new one with the computational result
	 */
	public function getMin( ?output:IVector3 ):IVector3;

	/**
	 * @param	output optional vector the result will be stored into or new instance if none provided
	 * @return	provided `output` vector or a new one with the computational result
	 */
	public function getMax( ?output:IVector3 ):IVector3;

	/**
	 * @param value new min in euler coordinate system (TOP_LEFT_FRONT corner of the cube)
	 * @return this cube for chaining
	 */
	public function setMax( value:IVector3 ):ICube;

}