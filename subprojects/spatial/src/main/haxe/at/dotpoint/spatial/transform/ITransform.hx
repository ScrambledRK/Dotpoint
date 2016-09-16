package at.dotpoint.spatial.transform;

import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.math.geom.Space;
import at.dotpoint.math.vector.IMatrix44;
import at.dotpoint.math.vector.IQuaternion;
import at.dotpoint.math.vector.IVector3;

/**
 * @author RK
 */

interface ITransform extends IEventDispatcher
{
	/**
	 * IVector3 transform-component for translation in localSpace
	 */
	public var position(get,null):IVector3;

	/**
	 * IQuaternion transform-component for rotation in localSpace
	 */
	public var rotation(get,null):IQuaternion;

	/**
	 * IVector3 transform-component for scaling in localSpace
	 */
	public var scale(get, null):IVector3;

	// ---------------------- //
	// ---------------------- //

	/**
	 *
	 */
	public function setMatrix( value:IMatrix44, ?space:Space ):Void;

	/**
	 *
	 */
	public function getMatrix( ?space:Space ):TransformationMatrix;

	// ---------------------- //
	// ---------------------- //

	/**
	 *
	 */
	public function hasRotation( ?space:Space ):Bool;

	/**
	 *
	 */
	public function hasScaling( ?space:Space ):Bool;

}