package at.dotpoint.physics;

/**
 *
 */
class ParticleProperties
{

	public var mass:Float;
	public var maxVelocity:Float;
	public var maxForce:Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( mass:Float = 0.25, maxVelocity:Float = 100, maxForce:Float = 100 )
	{
		this.mass = mass;
		this.maxVelocity = maxVelocity;
		this.maxForce = maxForce;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //


}
