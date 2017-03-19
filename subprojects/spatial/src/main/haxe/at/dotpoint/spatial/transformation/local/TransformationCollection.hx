package at.dotpoint.spatial.transformation.local;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.IByteRepository;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.transformation.local.TransformationSignature;
import at.dotpoint.spatial.transformation.local.TransformationType;

/**
 * keeps data internally consistent. e.g. a component (say rotation quaternion) updates,
 * the matrix will be updated as well and vice versa. does not know anything about a
 * transformation hierarchy (scene graph) - this is for the graph itself to do ...
 *
 * @author RK
 */
class TransformationCollection implements IByteRepository<TransformationSignature>
{

	//
	public var signature(default, null):TransformationSignature;

	private var repository:TransformationRepository;
	private var validation:TransformationValidation;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( numEntries:Int )
	{
		this.signature = new TransformationSignature();

		this.repository = new TransformationRepository( this.signature, numEntries );
		this.validation = new TransformationValidation( numEntries );
	}

	// ************************************************************************ //
	// read/write
	// ************************************************************************ //

	/**
	 *
	 * @param	index
	 * @param	type
	 * @param	value
	 * @return
	 */
	public function setValues( index:Int, type:Int, value:ITensor ):ITensor
	{
		this.invalidate( index, type );
		this.repository.writeTensor( index, type, value );

		return value;
	}

	/**
	 *
	 * @param	index
	 * @param	type
	 * @param	output
	 * @return
	 */
	public function getValues( index:Int, type:Int, output:ITensor ):ITensor
	{
		this.validate( index, type, output );
		this.repository.readTensor( index, type, output );

		return output;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function invalidate( index:Int, type:Int )
	{
		if ( type != TransformationType.TRANSLATION )
			this.validation.invalidate( index, this.getValidationTarget( type ) );
	}

	//
	inline private function getValidationTarget( type:Int ):Int
	{
		return type != TransformationType.MATRIX ? TransformationType.MATRIX : TransformationType.TRANSLATION;
	}

	//
	private function validate( index:Int, type:Int, output:ITensor )
	{
		if ( this.validation.isInvalid( index, type ) )
		{
			var rotation:IQuaternion = new Quaternion();	// TODO: prevent object allocation
			var matrix:IMatrix44 = new Matrix44();
			var scale:IVector3 = new Vector3();

			//
			if ( type == TransformationType.MATRIX )
			{
				this.repository.readTensor( index, TransformationType.ROTATION, rotation );
				this.repository.readTensor( index, TransformationType.SCALE, scale );

				MathTransformation.setRotation( matrix, rotation );
				MathTransformation.setScale( matrix, scale );

				this.repository.writeTensor( index, type, matrix );
			}
			else
			{
				this.repository.readTensor( index, TransformationType.MATRIX, matrix );

				MathTransformation.getRotation( matrix, rotation );
				MathTransformation.getScale( matrix, scale );

				this.repository.writeTensor( index, TransformationType.ROTATION, rotation  );
				this.repository.writeTensor( index, TransformationType.SCALE, scale );
			}

		}
	}

}