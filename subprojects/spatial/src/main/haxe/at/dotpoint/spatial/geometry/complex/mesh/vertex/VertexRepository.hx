package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.spatial.geometry.complex.mesh.MeshSignature;

/**
 * ...
 * @author RK
 */
class VertexRepository<TVertex:EnumValue> extends ByteRepository<TVertex,VertexSignature<TVertex>>
{

	//
	public function new( signature:VertexSignature<TVertex> ) 
	{
		super( signature, signature.numVertices );
	}
	
}