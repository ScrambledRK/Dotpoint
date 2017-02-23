package at.dotpoint.spatial.geometry.complex.index;

import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.spatial.geometry.complex.MeshSignature;

/**
 * ...
 * @author RK
 */
class IndexRepository extends ByteRepository<IndexType,IndexSignature>
{

	public function new( signature:MeshSignature ) 
	{
		super( new IndexSignature( signature ), signature.numTriangles );
	}
	
}