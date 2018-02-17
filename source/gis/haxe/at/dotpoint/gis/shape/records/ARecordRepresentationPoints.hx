package at.dotpoint.gis.shape.records;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.primitive.cube.Cube;
import at.dotpoint.spatial.geometry.primitive.cube.ICube;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class ARecordRepresentationPoints extends ARecordRepresentation implements IPointCollection
{

	public var boundings:ICube;
	public var points:Vector<IVector3>;
	
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
		
		this.boundings = null;
		this.points = null;
	}
	
	// ************************************************************************ //
	// IByteRepresentation
	// ************************************************************************ //
	
	//
	override public function readBytes( repository:ShapeRecordRepository ):Void
	{
		super.readBytes( repository );
		
		this.boundings = repository.getBoundingBox( this.position, this.index );
		this.points = repository.getPointList( this.position, this.index );
	}

	// ************************************************************************ //
	// IPointCollection
	// ************************************************************************ //
	
	//
	public function getPoints():Vector<IVector3>
	{
		return this.points;
	}
	
	//
	public function getBounds():ICube
	{
		return this.boundings;
	}
}