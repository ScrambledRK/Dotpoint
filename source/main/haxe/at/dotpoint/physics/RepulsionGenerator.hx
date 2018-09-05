package at.dotpoint.physics;

import at.dotpoint.exception.AbstractMethodException;
import at.dotpoint.math.tensor.vector.IVector2;

/**
 *
 */
class RepulsionGenerator<T:IParticle> implements IForceGenerator<T>
{

	public var strength:Float;
	public var limit:Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( strength:Float = 0.15, limit = 100 )
	{
		this.strength = strength;
		this.limit = limit;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function update( time:Float, delta:Float ):Void
	{
		for( p in this.getParticles() )
		{
			for( t in this.getTargets() )
			{
				var scale:Float = this.getStrength( p, t );

				if( scale == 0 )
					continue;

				//
				var dx:Float = p.position.x - t.position.x;
				var dy:Float = p.position.y - t.position.y;

				var dss:Float = ( dx * dx + dy * dy );
				var dsq:Float = Math.sqrt(dss);

				//
				if( dsq > this.limit )
					continue;

				//
				if( dsq <= 0 )
				{
					this.onZeroDistance( p );
					continue;
				}

				//
				p.force.x += scale * dx / dss;
				p.force.y += scale * dy / dss;
			}
		}
	}

	//
	public dynamic function getParticles():Iterator<T>
	{
		throw new AbstractMethodException();
	}

	//
	public dynamic function getTargets():Iterator<T>
	{
		return this.getParticles();
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public dynamic function onZeroDistance( particle:T ):Void
	{
		particle.force.x += Math.random() - Math.random();
		particle.force.y += Math.random() - Math.random();
	}

	//
	public dynamic function getStrength( particle:T, target:T ):Float
	{
		if( particle == target )
			return 0;

		return this.strength;
	}
}
