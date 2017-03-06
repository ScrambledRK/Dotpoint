package at.dotpoint.gis.shape;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteHeader;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class ShapeSignatureHeader implements IByteSignature 
{
	//
	public var formats(default, null):Vector<ByteFormat>;
	
	//
	public function new() 
	{
		this.formats = new Vector<ByteFormat>( 8 );
				
		this.formats[0] = new ByteFormat( ByteType.INT, 1, true );		// file code (always hex value 0x0000270a)
		this.formats[1] = new ByteFormat( ByteType.INT, 5, true );		// unused
		this.formats[2] = new ByteFormat( ByteType.INT, 1, true );		// file length
		this.formats[3] = new ByteFormat( ByteType.INT, 1, false );		// version
		this.formats[4] = new ByteFormat( ByteType.INT, 1, false );		// shape type
		
		this.formats[5] = new ByteFormat( ByteType.FLOAT, 4, false );	// minimum bounding rectangle
		this.formats[6] = new ByteFormat( ByteType.FLOAT, 2, false );	// range Z
		this.formats[7] = new ByteFormat( ByteType.FLOAT, 2, false );	// range M
	}	
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function getNumValues( type:Int ):Int 
	{
		return this.formats[type].numValues;
	}
	
	//
	public function getSizeValue( type:Int ):Int 
	{
		return this.formats[type].sizeValue;
	}
	
	//
	public function getSizeTotal( numEntries:Int ):Int 
	{
		return 100;
	}
	
	//
	public function getEntryIndex( index:Int, type:Int ):Int 
	{
		var total:Int = 0;
		
		for( j in 0...type )
			total += this.formats[j].sizeTotal;			
		
		//
		return total;
	}
	
}