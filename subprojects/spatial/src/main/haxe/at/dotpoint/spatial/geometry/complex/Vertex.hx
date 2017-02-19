package at.dotpoint.spatial.geometry.complex;
import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.math.tensor.matrix.Matrix33;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.Vector2;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;

/**
 * ...
 * @author RK
 */
class Vertex 
{

	//
	public var ID:MeshIndexVertex;
	
	//
	public var data:MeshData;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( data:MeshData, ID:MeshIndexVertex ) 
	{
		this.data = data;
		this.ID = ID;
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function getData( type:VertexType, ?output:ITensor ):ITensor
	{
		if( output == null )
			output = this.getTensor( type );
			
		//
		var index:MeshIndexData = this.data.getVertexDataIndex( this.ID, type );		
		this.data.getVertexData( index, type, output );
		
		return output;
	}
	
	//
	private function getTensor( type:VertexType ):ITensor
	{
		var format:ByteFormat = this.data.getSignature().getFormat( type );
		
		//
		switch( format.numValues )
		{
			case 2:	return new Vector2();
			case 3: return new Vector3();
			case 4: return new Quaternion();
			case 9: return new Matrix33();
			
			default:
				return new Matrix44();
		}
	}
}