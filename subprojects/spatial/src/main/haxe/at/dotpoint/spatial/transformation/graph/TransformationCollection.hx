package at.dotpoint.spatial.transformation.graph;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.graph.IGraphRepository;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.transformation.graph.TransformationType;

/**
 * keeps data internally consistent. e.g. a component (say rotation quaternion) updates,
 * the matrix will be updated as well and vice versa. does not know anything about a
 * transformation hierarchy (scene graph) - this is for the graph itself to do ...
 *
 * @author RK
 */
class TransformationCollection implements IGraphRepository<TransformationType>
{

	private var repository:TransformationRepository;
	private var validation:TransformationValidation;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( numEntries:Int )
	{
		this.repository = new TransformationRepository( numEntries );
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
	public function setValues( index:Int, type:TransformationType, value:ITensor ):ITensor
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
	public function getValues( index:Int, type:TransformationType, output:ITensor ):ITensor
	{
		this.validate( index, type, output );
		this.repository.readTensor( index, type, output );

		return output;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function invalidate( index:Int, type:TransformationType )
	{
		if ( type != TransformationType.TRANSLATION )
			this.validation.invalidate( index, type != TransformationType.MATRIX ? TransformationType.MATRIX : TransformationType.TRANSLATION );
	}

	//
	private function validate( index:Int, type:TransformationType, output:ITensor )
	{
		if ( this.validation.isInvalid( index, type ) )
		{
			var rotation:IQuaternion = new Quaternion();
			var matrix:IMatrix44 = new Matrix44();
			var scale:IVector3 = new Vector3();

			//
			if ( type == TransformationType.MATRIX )
			{
				trace("update matrix by components" );

				//
				this.repository.readTensor( index, TransformationType.ROTATION, rotation );
				this.repository.readTensor( index, TransformationType.SCALE, scale );

				MathTransformation.setRotation( matrix, rotation );
				MathTransformation.setScale( matrix, scale );

				this.repository.writeTensor( index, type, matrix );
			}
			else
			{
				trace("update components by matrix; requested component: " + type );

				//
				this.repository.readTensor( index, TransformationType.MATRIX, matrix );

				MathTransformation.getRotation( matrix, rotation );
				MathTransformation.getScale( matrix, scale );

				this.repository.writeTensor( index, TransformationType.ROTATION, rotation  );
				this.repository.writeTensor( index, TransformationType.SCALE, scale );
			}

		}
	}

}