package at.dotpoint.gis.shape.records;
import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;

/**
 * ...
 * @author RK
 */
class ShapeMultiPatch extends AShapeRecordSignature
{

	public function new() 
	{
		super( 10 );
		
		//
		this.format[0] = new ByteFormat( ByteType.FLOAT, 4, false );	// minimum bounding rectangle
		this.format[1] = new ByteFormat( ByteType.INT, 1, false );		// num parts
		this.format[2] = new ByteFormat( ByteType.INT, 1, false );		// num points
		this.format[3] = new ByteFormat( ByteType.INT, 1, false );		// parts
		this.format[4] = new ByteFormat( ByteType.INT, 1, false );		// part types
		this.format[5] = new ByteFormat( ByteType.FLOAT, 2, false );	// points
		this.format[6] = new ByteFormat( ByteType.FLOAT, 2, false );	// z range
		this.format[7] = new ByteFormat( ByteType.FLOAT, 1, false );	// z values
		this.format[8] = new ByteFormat( ByteType.FLOAT, 2, false );	// m range
		this.format[9] = new ByteFormat( ByteType.FLOAT, 1, false );	// m values
	}	
	
}