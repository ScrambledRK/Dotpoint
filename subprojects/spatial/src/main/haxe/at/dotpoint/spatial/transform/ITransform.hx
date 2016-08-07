package haxe.at.dotpoint.spatial.transform;

import haxe.at.dotpoint.dispatcher.event.IEventDispatcher;
import haxe.at.dotpoint.math.geom.Space;
import haxe.at.dotpoint.math.vector.IMatrix44;
import haxe.at.dotpoint.math.vector.IQuaternion;
import haxe.at.dotpoint.math.vector.IVector3;

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
	public function getMatrix( ?output:IMatrix44, ?space:Space ):IMatrix44;

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

	// ---------------------- //
	// ---------------------- //

	private function getWorldMatrix():TransformationMatrix;
	private function invalidateWorldMatrix():Void;
}