package at.dotpoint.spatial.geometry.complex;

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