package at.dotpoint.physics;

import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.MathVector2;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.Vector2;

/**
 *
 */
class Particle implements IParticle
{

	public var position:IVector3;
	public var properties:ParticleProperties;

	public var velocity:IVector3;
	public var acceleration:IVector3;
	public var force:IVector3;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?properties:ParticleProperties )
	{
		this.position = new Vector3();
		this.properties = properties != null ? properties : new ParticleProperties();

		this.velocity = new Vector3();
		this.acceleration = new Vector3();
		this.force = new Vector3();
	}

	//
	public static function clone( from:Particle, ?into:Particle ):Particle
	{
		if( into == null )
			into = new Particle();

		into.acceleration = MathVector3.clone( from.acceleration, into.acceleration );
		into.position = MathVector3.clone( from.position, into.position );
		into.velocity = MathVector3.clone( from.velocity, into.velocity );
		into.force = MathVector3.clone( from.force, into.force );
		into.properties = from.properties;

		return into;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function update( delta:Float, ?dampening:Float = 0.95 ):Void
	{
		MathVector3.truncate( velocity, this.properties.maxVelocity );
		MathVector3.truncate( force, this.properties.maxForce );

		MathVector3.add( position, velocity, delta, position ); 						// pos = pos + vel * time
		MathVector3.add( acceleration, force, this.properties.mass, acceleration ); 	// acc = acc + force * mass
		MathVector3.add( velocity, acceleration, delta, velocity ); 					// vel = vel + acc * time;
		MathVector3.scale( velocity, dampening, velocity );

		this.clearForce();
	}

	//
	public function applyForce( force:IVector3 ):Void
	{
		this.force.x += force.x;
		this.force.y += force.y;
		this.force.z += force.z;
	}

	//
	public function clearForce():Void
	{
		this.force.x = 0;
		this.force.y = 0;
		this.force.z = 0;
	}

	//
	public function stop():Void
	{
		this.clearForce();

		this.acceleration.x = 0;
		this.acceleration.y = 0;
		this.acceleration.z = 0;
		this.velocity.x = 0;
		this.velocity.y = 0;
		this.velocity.z = 0;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function toString():String
	{
		return '[position:$position, acceleration:$acceleration, velocity:$velocity]';
	}
}
