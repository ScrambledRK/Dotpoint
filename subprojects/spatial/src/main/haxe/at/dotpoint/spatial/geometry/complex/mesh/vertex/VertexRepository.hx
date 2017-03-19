package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.bytes.ByteRepository;

/**
 * ...
 * @author RK
 */
class VertexRepository extends ByteRepository<VertexSignature>
{

	//
	public function new( signature:VertexSignature ) 
	{
		super( signature, signature.numVertices );
	}
	
}