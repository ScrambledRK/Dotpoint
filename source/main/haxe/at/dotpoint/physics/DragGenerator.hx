package at.dotpoint.physics;


import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.exception.AbstractMethodException;

/**
 *
 */
class DragGenerator<T:IParticle> implements IForceGenerator<T>
{

	//
	public var k1:Float;
	public var k2:Float;

	private var force:IVector3;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( k1:Float = 0.5, k2:Float = 0.25 )
	{
		this.k1 = k1;
		this.k2 = k2;

		this.force = new Vector3();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function update( time:Float, delta:Float ):Void
	{
		for( p in this.getParticles() )
		{
			this.force = MathVector3.clone( p.velocity, this.force );

			var drag:Float = MathVector3.length( this.force );
				drag = this.k1 * drag + k2 * drag * drag;

			MathVector3.normalize( this.force );
			MathVector3.scale( this.force, -drag );

			//trace( p.velocity, this.force );

			//
			MathVector3.add( p.force, this.force, p.force );
		}
	}

	//
	public dynamic function getParticles():Iterator<T>
	{
		throw new AbstractMethodException();
	}

}