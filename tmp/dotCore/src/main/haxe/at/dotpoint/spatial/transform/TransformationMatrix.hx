package haxe.at.dotpoint.spatial.transform;

import haxe.at.dotpoint.math.vector.IMatrix44;
import haxe.at.dotpoint.math.vector.IQuaternion;
import haxe.at.dotpoint.math.vector.IVector3;
import haxe.at.dotpoint.math.vector.Matrix44;
import haxe.at.dotpoint.math.vector.Quaternion;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * 09.02.15
 * @author RK
 */
class TransformationMatrix extends Matrix44
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?m:IMatrix44 )
	{
		super( m );
	}

	// ************************************************************************ //
	// Components
	// ************************************************************************ //

	/**
	 *
	 */
	public function setComponents( rotation:IQuaternion, scale:IVector3, position:IVector3 ):Void
	{
		this.setRotation( rotation );
		this.setPosition( position );

		this.setScale( scale );
	}

	// ------------------------------------------------ //
	// ------------------------------------------------ //
	// Position:

	/**
	 *
	 */
	public function getPosition<T:IVector3>( ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();

		output.x = this.m41;
		output.y = this.m42;
		output.z = this.m43;

		return output;
	}

	/**
	 *
	 */
	public function setPosition( input:IVector3 ):Void
	{
		this.m41 = input.x;
		this.m42 = input.y;
		this.m43 = input.z;
	}

	// ------------------------------------------------ //
	// ------------------------------------------------ //
	// Scale:

	/**
	 *
	 */
	public function getScale<T:IVector3>( ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();

		output.x = Math.sqrt( this.m11 * this.m11 + this.m12 * this.m12 + this.m13 * this.m13 );
		output.y = Math.sqrt( this.m21 * this.m21 + this.m22 * this.m22 + this.m23 * this.m23 );
		output.z = Math.sqrt( this.m31 * this.m31 + this.m32 * this.m32 + this.m33 * this.m33 );

		return output;
	}

	/**
	 *
	 */
	public function setScale( input:IVector3 ):Void
	{
		if ( input.x != 1 || input.y != 1 || input.z != 1 )
		{
			var scale:Matrix44 = new Matrix44();
				scale.m11 = input.x;
				scale.m22 = input.y;
				scale.m33 = input.z;

			Matrix44.multiply( this, scale, this );
		}
	}

	// ------------------------------------------------ //
	// ------------------------------------------------ //
	// Rotation:

	/**
	 *
	 */
	public function getRotation<T:IQuaternion>( ?output:T ):T
	{
		if( output == null )
			output = cast new Quaternion();

		return Quaternion.setMatrix( this, output );
	}

	/**
	 *
	 */
	public function setRotation( input:IQuaternion ):Void
	{
		Quaternion.toMatrix( input, this );
	}

}
