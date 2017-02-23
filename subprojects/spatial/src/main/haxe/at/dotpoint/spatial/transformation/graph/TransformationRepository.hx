package at.dotpoint.spatial.transformation.graph;
import at.dotpoint.datastructure.bytes.ByteRepository;

/**
 * ...
 * @author RK
 */
class TransformationRepository extends ByteRepository<TransformationType,TransformationSignature>
{

	//
	public function new( numEntries:Int ) 
	{
		super( new TransformationSignature(), numEntries );
	}
	
}