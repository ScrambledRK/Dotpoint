package at.dotpoint.gis.shape.signature.records;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;

/**
 * ...
 * @author RK
 */
class ShapePoint4Signature extends AShapeRecordSignature
{

	public function new() 
	{
		super( 1 );
		
		//
		this.format[0] = new ByteFormat( ByteType.FLOAT, 4, false );
	}	
	
}