package at.dotpoint.spatial.geometry.complex.vertex;

import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.spatial.geometry.complex.MeshSignature;

/**
 * ...
 * @author RK
 */
class VertexRepository extends ByteRepository<VertexType,MeshSignature>
{

	//
	public function new( signature:MeshSignature ) 
	{
		super( signature, signature.numVertices );
	}
	
}