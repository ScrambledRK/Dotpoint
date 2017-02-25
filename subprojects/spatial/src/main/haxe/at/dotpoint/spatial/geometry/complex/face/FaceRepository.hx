package at.dotpoint.spatial.geometry.complex.face;

import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.spatial.geometry.complex.MeshSignature;

/**
 * ...
 * @author RK
 */
class FaceRepository extends ByteRepository<FaceType,FaceSignature>
{

	public function new( signature:MeshSignature ) 
	{
		super( new FaceSignature( signature ), signature.numTriangles );
	}
	
}