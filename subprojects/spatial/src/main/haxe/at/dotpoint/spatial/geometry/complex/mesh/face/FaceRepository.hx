package at.dotpoint.spatial.geometry.complex.mesh.face;

import at.dotpoint.datastructure.bytes.ByteRepository;

/**
 * ...
 * @author RK
 */
class FaceRepository extends ByteRepository<FaceSignature>
{

	public function new( signature:FaceSignature ) 
	{
		super( signature, signature.numTriangles );
	}
	
}