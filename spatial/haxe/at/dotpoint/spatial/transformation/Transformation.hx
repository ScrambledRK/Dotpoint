package at.dotpoint.spatial.transformation;

import at.dotpoint.math.tensor.MathTransformation;
import at.dotpoint.math.tensor.MathQuaternion;
import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;

/**
 * 2017-03-19
 * @author RK
 */
class Transformation
{

	//
	public var translation:IVector3;
	public var rotation:IQuaternion;
	public var scale:IVector3;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new()
	{
		this.translation = new Vector3();
		this.rotation = new Quaternion();
		this.scale = new Vector3( 1, 1, 1 );
	}

	//
	public function clear():Void
	{
		MathQuaternion.setZero( this.rotation );
		MathVector3.setZero( this.translation );

		this.scale.x = 1;
		this.scale.y = 1;
		this.scale.z = 1;
	}

	// ************************************************************************ //
	// ITransformation
	// ************************************************************************ //

	//
	public function getMatrix( ?output:IMatrix44 ):IMatrix44
	{
		return MathTransformation.getMatrix( this.translation, this.rotation, this.scale, output );
	}

	//
	public function setMatrix( value:IMatrix44 ):Transformation
	{
		MathTransformation.getComponents( this.translation, this.rotation, this.scale, value );
		return this;
	}

	//
	public function hasRotation():Bool
	{
		if( this.rotation.x != 0 )	return true;
		if( this.rotation.y != 0 )	return true;
		if( this.rotation.z != 0 )	return true;
		if( this.rotation.w != 1 )	return true;

		return false;
	}

	//
	public function hasScaling():Bool
	{
		if( this.rotation.x != 1 )	return true;
		if( this.rotation.y != 1 )	return true;
		if( this.rotation.z != 1 )	return true;

		return false;
	}
}
