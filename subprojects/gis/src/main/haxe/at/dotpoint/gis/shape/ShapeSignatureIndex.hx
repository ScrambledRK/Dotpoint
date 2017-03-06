package at.dotpoint.gis.shape;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;

/**
 * ...
 * @author RK
 */
class ShapeIndexSignature implements IByteSignature 
{

	//
	private var header:ShapeSignatureHeader;
	private var format:ByteFormat;							
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new( ?header:ShapeSignatureHeader ) 
	{
		this.header = header != null ? header : new ShapeSignatureHeader();
		this.format = new ByteFormat( ByteType.INT, 2, true );
	}
	
	// ************************************************************************ //
	// IByteSignature
	// ************************************************************************ //
	
	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return 	number of components the byte format consists of
	 */
	public function getNumValues( type:Int ):Int 
	{
		if( type == ShapeTypesIndex.HEADER )
			return this.header.getNumValues( type );
		
		return this.format.numValues;
	}
	
	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return	size in bytes of a single component of the byte format
	 */	
	public function getSizeValue( type:Int ):Int 
	{
		if( type == ShapeTypesIndex.HEADER )
			return this.header.getSizeValue( type );
		
		return this.format.sizeValue;
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
		return this.header.getSizeTotal( numEntries ) + this.format.sizeTotal * numEntries;
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
		if( type == ShapeTypesIndex.HEADER )
			return this.header.getEntryIndex( index, type );
		
		return this.header.getSizeTotal( 1 ) + index * this.format.sizeTotal;
	}
	
}