package at.dotpoint.physics;

/**
 *
 */
interface IForceGenerator<T:IParticle>
{
	public function update( time:Float, delta:Float ):Void;
}
