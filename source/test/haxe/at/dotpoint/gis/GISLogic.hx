package at.dotpoint.gis;
import at.dotpoint.gis.shape.ShapeRepository;
import at.dotpoint.gis.shape.records.ARecordRepresentation;
import at.dotpoint.gis.shape.records.ARecordRepresentationPoints;
import at.dotpoint.gis.shape.records.IPointCollection;
import at.dotpoint.gis.shape.records.RecordPoint;
import at.dotpoint.gis.shape.signature.ShapeTypesRecord;
import at.dotpoint.math.tensor.vector.Vector2;
import at.dotpoint.spatial.geometry.primitive.cube.ICube;

/**
 * ...
 * @author ...
 */
class GISLogic 
{

	private var repository:ShapeRepository;
	private var view:GISView;
	
	private var bounds:ICube;
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function new( repository:ShapeRepository, view:GISView ) 
	{
		this.repository = repository;
		this.view = view;
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function initialize():Void
	{
		this.bounds = this.repository.getHeaderBounds();	
		this.drawRecords();
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	private function drawRecords():Void
	{
		var record:ARecordRepresentation = null;
		var recordList:ARecordRepresentationPoints = new ARecordRepresentationPoints();
		var recordSingle:RecordPoint = new RecordPoint();
		
		var length:Int = this.repository.getNumRecords();
		
		//
		for( j in 0...length )
		{
			var type:Int = this.repository.getType( j );
			
			if( ShapeTypesRecord.isPoint( type ) )	record = recordSingle;
			else 									record = recordList;
			
			this.repository.getRecord( j, record );
			
			var coll:IPointCollection = cast record;			

			this.view.draw( coll.getPoints() );
		}
	}
	
}