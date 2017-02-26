package at.dotpoint.spatial.geometry.complex.face;

import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.spatial.geometry.complex.IMeshStatistic;
import at.dotpoint.spatial.geometry.complex.MeshSignature;

/**
 * ...
 * @author RK
 */
class FaceRepository extends ByteRepository<FaceType,FaceSignature>
{

	public function new( statistic:IMeshStatistic, ?layout:FaceLayoutType ) 
	{
		super( new FaceSignature( statistic, layout ), statistic.numTriangles );
	}
	
}