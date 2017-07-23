package at.dotpoint.spatial.transformation.world;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.pooling.IObjectPoolRegister;
import at.dotpoint.datastructure.pooling.ObjectPoolRegister;
import at.dotpoint.spatial.transformation.local.TransformationCollection;

/**
 * keeps transformations across the graph consistent. e.g. a parent transformation
 * updates its rotation, all child transformations will be updated as well in time.
 * does not care about the internal datastructure of a single transformation only
 * interessted in the graph consistency.
 * 
 * @author RK
 */
class TransformationGraph
{
	//
	private var register:IObjectPoolRegister;
	
	//
	private var repository:TransformationCollection;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new( size:Int ) 
	{
		this.register = new ObjectPoolRegister( size );
		
		this.repository = new TransformationCollection( size );
	}
	
	// ************************************************************************ //
	// ITransformation
	// ************************************************************************ //	

	//
	public function setValues( index:Int, type:Int, value:ITensor ):Void
	{		
		this.repository.setValues( index, type, value );
		
	}
	
	//
	public function getValues( index:Int, type:Int, output:ITensor ):Void
	{
		this.repository.getValues( index, type, output );	
	}
	
	
}