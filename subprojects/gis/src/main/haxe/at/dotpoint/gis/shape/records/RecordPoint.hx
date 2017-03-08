package at.dotpoint.gis.shape.records;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.geometry.primitive.cube.Cube;
import at.dotpoint.spatial.geometry.primitive.cube.ICube;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class RecordPoint extends ARecordRepresentation implements IPointCollection
{
	//
	public var point:IVector3;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( position:Int = -1 ) 
	{
		super( position );		
	}
	
	//
	override public function clear( position:Int = -1 ):Void 
	{
		super.clear( position );
		this.point = null;
	}
	
	// ************************************************************************ //
	// IByteRepresentation
	// ************************************************************************ //
	
	//
	override public function readBytes( repository:ShapeRecordRepository ):Void
	{
		super.readBytes( repository );
		
		//
		this.point = repository.getPoint( this.position, this.index );		
	}
	
	// ************************************************************************ //
	// IPointCollection
	// ************************************************************************ //
	
	//
	public function getPoints():Vector<IVector3>
	{
		var list:Vector<IVector3> = new Vector<IVector3>( 1 );
			list[0] = this.point;
			
		return list;
	}
	
	//
	public function getBounds():ICube
	{
		return new Cube( this.point );
	}
}