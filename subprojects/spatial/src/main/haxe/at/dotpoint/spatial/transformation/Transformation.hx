package at.dotpoint.spatial.transformation;

import at.dotpoint.math.tensor.MathQuaternion;
import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.spatial.transformation.local.TransformationType;
import at.dotpoint.spatial.transformation.local.TransformationCollection;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.transformation.local.ITransformation;

/**
 * 2017-03-19
 * @author RK
 */
class Transformation implements ITransformation
{

	//
	public var index:Int;

	//
	public var translation:IVector3;
	public var rotation:IQuaternion;
	public var scale:IVector3;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( index:Int = -1 )
	{
		this.translation = new Vector3();
		this.rotation = new Quaternion();
		this.scale = new Vector3();

		this.clear( index );
	}

	//
	public function clear( index:Int = -1 ):Void
	{
		this.index = index;

		MathQuaternion.setZero( this.rotation );
		MathVector3.setZero( this.translation );
		MathVector3.setZero( this.scale );
	}

	// ************************************************************************ //
	// IByteRepresentation
	// ************************************************************************ //

	/**
	 * store this byte collection with its internal data representation into the given byte repository
	 * be horrible careful, you can easily destroy the whole repository!
	 *
	 * @param	repository target to store the internal data into
	 */
	public function writeBytes( repository:TransformationCollection ):Void
	{
		if( this.index < 0 )
			throw "transformation ID/index out of bounds";

		repository.setValues( this.index, TransformationType.TRANSLATION, this.translation );
		repository.setValues( this.index, TransformationType.ROTATION, this.rotation );
		repository.setValues( this.index, TransformationType.SCALE, this.scale );
	}

	/**
	 * use the given bytes repository data to store its values into this byte collection internal data representation
	 * be horrible careful, you can easily destroy the whole repository!
	 *
	 * @param	repository source to read the internal data from
	 */
	public function readBytes( repository:TransformationCollection ):Void
	{
		if( this.index < 0 )
			throw "transformation ID/index out of bounds";

		repository.getValues( this.index, TransformationType.TRANSLATION, this.translation );
		repository.getValues( this.index, TransformationType.ROTATION, this.rotation );
		repository.getValues( this.index, TransformationType.SCALE, this.scale );
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
	public function setMatrix( value:IMatrix44 ):Void
	{
		MathTransformation.getComponents( this.translation, this.rotation, this.scale, value );
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
