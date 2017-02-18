package at.dotpoint.spatial;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.transformation.graph.DataType;
import at.dotpoint.spatial.transformation.graph.TransformationGraph;

/**
 * keeps transformation, boundings, geometry consistent to each other. e.g. a
 * an object rotates, transformation and boundings update; its geometry changes
 * and only the bounds update. etc. does not care about the possible relations
 * each of those components have internally (for example does not care about
 * the scene graph and its transformation hierarchy)
 * 
 * @author RK
 */
class SpatialScene 
{
	
	private var transformation:TransformationGraph;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() 
	{
		
	}
	
	// ************************************************************************ //
	// ITransformation
	// ************************************************************************ //
	
	/**
	 * TRANSLATION
	 *
	 * @param	node
	 * @param	value
	 */
	public function setTranslation( index:Int, value:IVector3 ):Void
	{
		this.transformation.setValues( index, DataType.TRANSLATION, value );
	}

	//
	public function getTranslation( index:Int, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		//
		this.transformation.getValues( index, DataType.TRANSLATION, output );

		//
		return output;
	}

	/**
	 * ROTATION
	 *
	 * @param	node
	 * @param	value
	 */
	public function setRotation( index:Int, value:IQuaternion ):Void
	{
		this.transformation.setValues( index, DataType.ROTATION, value );
	}

	//
	public function getRotation( index:Int, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		//
		this.transformation.getValues( index, DataType.ROTATION, output );

		//
		return output;
	}

	/**
	 * SCALING
	 *
	 * @param	node
	 * @param	value
	 */
	public function setScaling( index:Int, value:IVector3 ):Void
	{
		this.transformation.setValues( index, DataType.SCALE, value );
	}

	//
	public function getScaling( index:Int, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		//
		this.transformation.getValues( index, DataType.SCALE, output );

		//
		return output;
	}

	/**
	 * MATRIX
	 *
	 * @param	node
	 * @param	value
	 */
	public function setMatrix( index:Int, value:IMatrix44 ):Void
	{
		this.transformation.setValues( index, DataType.MATRIX, value );
	}

	//
	public function getMatrix( index:Int, ?output:IMatrix44 ):IMatrix44
	{
		if( output == null )
			output = new Matrix44();

		//
		this.transformation.getValues( index, DataType.MATRIX, output );

		//
		return output;
	}
	
	// ---------------------- //
	// ---------------------- //

	/**
	 *
	 */
	public function hasRotation( key:Int ):Bool
	{
		return true; // this.repository.hasRotation( this.key );
	}

	/**
	 *
	 */
	public function hasScaling( key:Int ):Bool
	{
		return true; // this.repository.hasRotation( this.key );
	}		
}