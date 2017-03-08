package at.dotpoint.gis.shape;
import at.dotpoint.gis.shape.records.ARecordRepresentation;

/**
 * ...
 * @author RK
 */
class ShapeRepository 
{

	public var index(default,null):ShapeIndexRepository;
	public var record(default,null):ShapeRecordRepository;
	
	//
	public function new( index:ShapeIndexRepository, record:ShapeRecordRepository ) 
	{
		this.index = index;
		this.record = record;
	}
	
	// ************************************************************************ //
	// Repository
	// ************************************************************************ //	
	
	//
	public function getRecord( record:Int, output:ARecordRepresentation ):Void
	{
		output.position = this.index.getPosition( record );
		output.readBytes( this.record );
	}
}