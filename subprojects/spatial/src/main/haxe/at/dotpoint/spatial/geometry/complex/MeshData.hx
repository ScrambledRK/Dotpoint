package at.dotpoint.spatial.geometry.complex;
import at.dotpoint.spatial.geometry.complex.index.IndexData;
import at.dotpoint.spatial.geometry.complex.vertex.VertexData;

/**
 * ...
 * @author RK
 */
class MeshData 
{

	private var vertex:VertexData;
	private var index:IndexData;
	
	//
	public function new( signature:MeshSignature ) 
	{
		this.vertex = new VertexData( signature );
		this.index = new IndexData( signature );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	
}