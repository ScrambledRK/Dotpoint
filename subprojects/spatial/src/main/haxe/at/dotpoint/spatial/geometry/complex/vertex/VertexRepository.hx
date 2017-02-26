package at.dotpoint.spatial.geometry.complex.vertex;

import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.spatial.geometry.complex.MeshSignature;

/**
 * ...
 * @author RK
 */
class VertexRepository<TVertex:EnumValue> extends ByteRepository<TVertex,MeshSignature<TVertex>>
{

	//
	public function new( signature:MeshSignature<TVertex> ) 
	{
		super( signature, signature.numVertices );
	}
	
}