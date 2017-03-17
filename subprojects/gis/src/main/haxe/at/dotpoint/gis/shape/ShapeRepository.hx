package at.dotpoint.gis.shape;
import at.dotpoint.gis.shape.records.ARecordRepresentation;
import at.dotpoint.spatial.geometry.primitive.cube.ICube;

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
	public function getType( record:Int ):Int
	{
		return this.record.getType( this.index.getPosition( record ) );
	}
	
	//
	public function getRecord( record:Int, output:ARecordRepresentation ):Void
	{
		output.position = this.index.getPosition( record );
		output.readBytes( this.record );
	}
	
	//
	public function getHeaderBounds():ICube
	{
		return this.record.getBoundingBox( -1, -1 );
	}
	
	//
	public function getNumRecords():Int
	{
		return this.record.signature.records.length;
	}
}