package at.dotpoint.spatial.transformation.local;
import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.spatial.transformation.local.TransformationSignature;

/**
 * ...
 * @author RK
 */
class TransformationRepository extends ByteRepository<TransformationSignature>
{

	//
	public function new( signature:TransformationSignature, numEntries:Int )
	{
		super( signature, numEntries );
	}
	
}