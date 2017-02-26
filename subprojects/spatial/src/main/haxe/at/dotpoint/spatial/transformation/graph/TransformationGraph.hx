package at.dotpoint.spatial.transformation.graph;

import at.dotpoint.datastructure.graph.IGraphContainer;
import at.dotpoint.datastructure.pooling.IObjectPoolRegister;
import at.dotpoint.datastructure.pooling.ObjectPoolRegister;
import at.dotpoint.datastructure.ITensor;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;

/**
 * keeps transformations across the graph consistent. e.g. a parent transformation
 * updates its rotation, all child transformations will be updated as well in time.
 * does not care about the internal datastructure of a single transformation only
 * interessted in the graph consistency.
 * 
 * @author RK
 */
class TransformationGraph implements IGraphContainer<RelationType,TransformationType> 
{
	//
	private var register:IObjectPoolRegister;
	
	//
	private var structure:TransformationRelation;
	private var repository:TransformationCollection;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new( size:Int ) 
	{
		this.register = new ObjectPoolRegister( size );
		
		this.structure = new TransformationRelation( size );
		this.repository = new TransformationCollection( size );
	}
	
	// ************************************************************************ //
	// ITransformation
	// ************************************************************************ //	

	//
	public function setValues( index:Int, type:TransformationType, value:ITensor ):Void
	{		
		this.repository.setValues( index, type, value );
		
	}
	
	//
	public function getValues( index:Int, type:TransformationType, output:ITensor ):Void
	{
		this.repository.getValues( index, type, output );	
	}
	
	
}