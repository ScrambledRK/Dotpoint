package at.dotpoint.gis.shape.records;
import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;

/**
 * ...
 * @author RK
 */
class ShapePoly2Signature extends AShapeRecordSignature
{

	public function new() 
	{
		super( 5 );
		
		//
		this.format[0] = new ByteFormat( ByteType.FLOAT, 4, false );	// minimum bounding rectangle
		this.format[1] = new ByteFormat( ByteType.INT, 1, false );		// num parts
		this.format[2] = new ByteFormat( ByteType.INT, 1, false );		// num points
		this.format[3] = new ByteFormat( ByteType.INT, 1, false );		// parts
		this.format[4] = new ByteFormat( ByteType.FLOAT, 2, false );	// points
	}	
	
}