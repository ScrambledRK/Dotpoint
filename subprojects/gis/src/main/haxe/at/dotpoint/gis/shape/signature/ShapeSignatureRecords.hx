package at.dotpoint.gis.shape.signature;

import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.gis.shape.signature.ShapeSignatureHeader;
import at.dotpoint.gis.shape.signature.records.AShapeRecordSignature;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class ShapeSignatureRecords implements IByteSignature 
{

	//
	public var header(default, null):ShapeSignatureHeader;
	public var records(default, null):Array<AShapeRecordSignature>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new( ?header:ShapeSignatureHeader ) 
	{
		this.header = header != null ? header : new ShapeSignatureHeader();
		this.records = new Array<AShapeRecordSignature>();
	}	
	
	// ************************************************************************ //
	// IByteSignature
	// ************************************************************************ //

	/**
	 * not the number of a simple value but num components of the record
	 * 
	 * @param	index identifier associated with the requested record
	 * @return 	number of byte formats the record consists of 
	 */
	public function getNumValues( index:Int ):Int
	{
		return this.records[index].format.length;
	}

	/**
	 * not a single value, but the total size of a record
	 * 
	 * @param	index identifier associated with the requested record
	 * @return	total size of the record including header
	 */
	public function getSizeValue( index:Int ):Int
	{
		return this.records[index].getSizeTotal( 1 );
	}

	/**
	 * calculates the total number of bytes required to store the signature in respect
	 * to the given number of entries. might be entirely bullshit depending on
	 * the record signature (if they are setup correctly) - may take a while
	 * depending on the amount of records
	 *
	 * @param	numEntries number of data entries one wants to store
	 * @return  size in bytes required to store all entries including header
	 */
	public function getSizeTotal( numEntries:Int ):Int
	{
		var total:Int = this.header.getSizeTotal( 1 ) ;

		for ( j in 0...this.records.length )
			total += this.getSizeValue( j );

		//
		return total * numEntries;
	}

	/**
	 * calculates the byte position of the given entry index and requested "value-unit" type.
	 * does not give an absolute position, but a relative within the recrod
	 *
	 * @param	record requested
	 * @param	component e.g. BOX or whatnot depending on the record
	 * @return	byte position relative to the record position
	 */
	public function getEntryIndex( record:Int, component:Int ):Int
	{
		return this.records[record].getEntryIndex( 0, component );
	}
	
}