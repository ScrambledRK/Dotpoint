package at.dotpoint.gis.shape;

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
	
}