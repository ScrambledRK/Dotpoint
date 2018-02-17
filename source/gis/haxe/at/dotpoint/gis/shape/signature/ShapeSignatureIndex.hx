package at.dotpoint.gis.shape.signature;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.gis.shape.signature.ShapeSignatureHeader;

/**
 * ...
 * @author RK
 */
class ShapeSignatureIndex implements IByteSignature 
{

	//
	public var header(default,null):ShapeSignatureHeader;
	
	public var record(default,null):ByteFormat;							
	public var shape(default,null):ByteFormat;							
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new( ?header:ShapeSignatureHeader, isWithShape:Bool = false ) 
	{
		this.header = header != null ? header : new ShapeSignatureHeader();		
		this.record = new ByteFormat( ByteType.INT, 2, true );		// position, length
		
		if( isWithShape )
			this.shape 	= new ByteFormat( ByteType.INT, 1, false );	// record shape
	}
	
	// ************************************************************************ //
	// IByteSignature
	// ************************************************************************ //
	
	/**
	 * not the number of a simple value but num components of the record
	 * in case of header, otherwise actual component size
	 * 
	 * @param	index identifier associated with the requested record
	 * @return 	number of byte formats the record consists of 
	 */
	public function getNumValues( type:Int ):Int 
	{
		if( this.shape == null && type == ShapeTypesIndex.SHAPE )
			throw "shape byte format is not supported";
		
		switch( type )
		{
			case ShapeTypesIndex.HEADER: return this.header.formats.length;
			case ShapeTypesIndex.RECORD: return this.record.numValues;
			case ShapeTypesIndex.SHAPE:  return this.shape.numValues;
		}
		
		return -1;
	}
	
	/**
	 * not a single value, but the total size of the record in case of header,
	 * otherwise actual component value size
	 * 
	 * @param	index identifier associated with the requested record
	 * @return	total size of the record including header
	 */
	public function getSizeValue( type:Int ):Int 
	{
		if( this.shape == null && type == ShapeTypesIndex.SHAPE )
			throw "shape byte format is not supported";
		
		switch( type )
		{
			case ShapeTypesIndex.HEADER: return this.header.getSizeTotal( 1 );
			case ShapeTypesIndex.RECORD: return this.record.sizeValue;
			case ShapeTypesIndex.SHAPE:  return this.shape.sizeValue;
		}
		
		return -1;
	}
	
	/**
	 * calculates the total number of bytes required to store the signature in respect
	 * to the given number of entries. the size may depend on the internal byte layout
	 * the signature has and might even disregard the given number of entries in case
	 * it is irrelevant.
	 * 
	 * @param	numEntries number of data entries one wants to store
	 * @return  size in bytes required to store all entries
	 */
	public function getSizeTotal( numEntries:Int ):Int 
	{
		if( this.shape != null )
			return this.header.getSizeTotal( numEntries ) + (this.record.sizeTotal + this.shape.sizeTotal) * numEntries;
			
		return this.header.getSizeTotal( numEntries ) + this.record.sizeTotal * numEntries;	
	}
	
	/**
	 * calculates the byte position of the given entry index and requested "value-unit" type.
	 * this calculation depends a lot on the internal byte layout and byte formats set.
	 * 
	 * @param	index entry index requested (not type of "value-unit" (byte format))
	 * @param	type byte format / value-unit requested. e.g. POSITION
	 * @return	byte position the requested entry + type must be located
	 */
	public function getEntryIndex( index:Int, type:Int ):Int 
	{
		if( this.shape == null && type == ShapeTypesIndex.SHAPE )
			throw "shape byte format is not supported";
		
		//
		var total:Int = this.header.getSizeTotal( 1 );
		
		switch( type )
		{
			case ShapeTypesIndex.HEADER: 
				return this.header.getEntryIndex( index, type );
				
			case ShapeTypesIndex.RECORD: 
			{
				if( this.shape != null )
					return total + index * (this.record.sizeTotal + this.shape.sizeTotal);
					
				return total + index * this.record.sizeTotal;	
			}
				
			case ShapeTypesIndex.SHAPE:  
				return total + index * (this.record.sizeTotal + this.shape.sizeTotal) + this.record.sizeTotal;
		}
		
		return -1;
	}
	
}