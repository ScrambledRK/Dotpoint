package at.dotpoint.physics;

import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.IVector2;

/**
 *
 */
interface IParticle
{
	public var position:IVector3;
	public var velocity:IVector3;
	public var force:IVector3;

	public function update( delta:Float, ?dampening:Float ):Void;
	public function stop():Void;
}
