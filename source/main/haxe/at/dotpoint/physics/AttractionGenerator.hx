package at.dotpoint.physics;

import at.dotpoint.exception.AbstractMethodException;
import at.dotpoint.math.tensor.vector.IVector2;

/**
 *
 */
class AttractionGenerator<T:IParticle> implements IForceGenerator<T>
{

	//
	public var target:IVector2;
	public var strength:Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?target:IVector2 )
	{
		this.target = target;
		this.strength = 0.25;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function update( time:Float, delta:Float ):Void
	{
		for( p in this.getParticles() )
		{
			var scale:Float = this.getStrength( p );

			var dx:Float = p.position.x - target.x;
			var dy:Float = p.position.y - target.y;

			p.force.x += scale * dx;
			p.force.y += scale * dy;
		}
	}

	//
	public dynamic function getParticles():Iterator<T>
	{
		throw new AbstractMethodException();
	}

	//
	public dynamic function getStrength( particle:T ):Float
	{
		return this.strength;
	}

}
