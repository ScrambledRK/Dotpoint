package at.dotpoint.gis.shape.records;
import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class AShapeRecordSignature implements IByteSignature
{
	//
	public var header(default,null):ByteFormat;
	public var shape(default, null):ByteFormat;

	public var format(default, null):Vector<ByteFormat>;
	public var entries(default, null):Vector<Int>;	

	//
	public function new( size:Int )
	{
		this.header = new ByteFormat( ByteType.INT, 2, true );	// ID, length
		this.shape 	= new ByteFormat( ByteType.INT, 1, false );	// record shape

		this.format = new Vector<ByteFormat>( size );			// box, point, whatevs ...
		this.entries = new Vector<Int>( size );
		
		for( j in 0...size )
			this.entries[j] = 1;
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
		return this.format[type].numValues;
	}

	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return	size in bytes of a single component of the byte format
	 */
	public function getSizeValue( type:Int ):Int
	{
		return this.format[type].sizeValue;
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
		var total:Int = this.header.sizeTotal + this.shape.sizeTotal;

		for ( j in 0...this.format.length )
			total += this.format[j].sizeTotal * this.entries[j];

		//
		return total * numEntries;
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
		var total:Int = this.header.sizeTotal + this.shape.sizeTotal;

		for ( j in 0...type )
			total += this.format[j].sizeTotal * this.entries[j];

		//
		return total + index * this.format[type].sizeTotal;
	}
}