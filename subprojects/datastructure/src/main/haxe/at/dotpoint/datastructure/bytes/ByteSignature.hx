package at.dotpoint.datastructure.bytes;
import haxe.ds.Vector;

/**
 * describes where and how each byte format data is stored (yet does not store the data itself) and can be used
 * to easily store and access the data some place else. it holds ByteFormat objects and some context information
 * such as the stride where the data can be found in the context of the data structure it is stored in 
 * (e.g. there are several float values before this entry so there is an offset of x * float size bits)
 * 
 * use this in conjunction with a byte repository for maximum thrills n giggls.
 * 
 * @author RK
 */
class ByteSignature<T:EnumValue> implements IByteSignature<T>
{
	
	//
	public var layout(default,null):ByteLayoutType;
	
	//
	public var formats(default, null):Vector<ByteFormat>;
	public var entries(default, null):Vector<Int>;	
	public var types(default, null):Vector<T>;
	
	//
	public var size(default, null):Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	/**
	 * INTERLEAVED layout has all different types/byteformats sequentially next to
	 * each other. each entry has all types together as if it were a single object.
	 * 
	 * BLOCKED layout has all different types/byteformats split apart. each type
	 * has values stored for all entries as if each type is stored in a seperate
	 * array containing the values for all entries sequentially.
	 * 
	 * @param	empty list for enum types; size must be size of constructable enum values, not smaller!
	 * @param	layout BLOCKED or INTERLEAVED
	 */
	public function new( types:Vector<T>, ?layout:ByteLayoutType ) 
	{
		if( layout == null )
			layout = ByteLayoutType.INTERLEAVED;
		
		this.layout = layout;
		this.size = types.length;
		
		//
		this.formats = new Vector<ByteFormat>( this.size );
		this.entries = new Vector<Int>( this.size );
		this.types = types;
		
		for( j in 0...this.size )
			this.formats[j] = new ByteFormat( null, 0 );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	/**
	 * sets a byteformat and associates it with the given type. in case of a BLOCKED 
	 * bytelayout the number of entries is relevant and required to be set. entries irrelevant 
	 * for interleaved, yet must not be 0. 0 entries means the given enum type is not used and 
	 * must be ignored for the step size calculations.
	 * 
	 * @param	type	identifier to associate with the given byteformat
	 * @param	format	byte storage information for a "value-unit"
	 * @param	numEntries number of entries for given type (only relevant for BLOCKED layout)
	 */
	public function setFormat( type:T, format:ByteFormat, ?numEntries:Int ):Void
	{
		if (numEntries == null || numEntries < 0 )
			numEntries = 0;
		
		//
		var index:Int = type.getIndex();
		
		this.formats[ index ] = format;
		this.entries[ index ] = this.layout == ByteLayoutType.INTERLEAVED ? 1 : numEntries;	
		this.types[ index ] = type;
	}
	
	//
	public function getFormat( type:T ):ByteFormat
	{
		return this.formats[ type.getIndex() ];
	}
	

	public function numEntries( type:T ):Int
	{
		return this.entries[ type.getIndex() ];
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return 	number of components the byte format consists of
	 */
	public function getNumValues( type:T ):Int
	{
		return this.getFormat( type ).numValues;
	}
	
	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return	size in bytes of a single component of the byte format
	 */	
	public function getSizeValue( type:T ):Int
	{
		return this.getFormat( type ).sizeValue;
	}
	
	/**
	 * calculates the total number of bytes required to store the signature in respect
	 * to the given number of entries. 
	 * 
	 * only the INTERLEAVED bytelayout respects the given number of entries. BLOCKED
	 * requires the number of entries to be set for each byte format / type and uses
	 * this data only. (see setFormat)
	 * 
	 * @param	numEntries number of data entries one wants to store
	 * @return  size in bytes required to store all entries
	 */
	public function getSizeTotal( numEntries:Int ):Int
	{
		var total:Int = 0;
				
		for( j in 0...this.formats.length )
			total += this.formats[j].sizeTotal * this.entries[j];			// might ommit with zero entries

		//
		switch( this.layout )
		{
			case ByteLayoutType.INTERLEAVED:	return total * numEntries;				
			case ByteLayoutType.BLOCKED:		return total;			
		}
	}
	
	/**
	 * calculates the byte position of the given entry index and requested "value-unit" type.
	 * this calculation depends a lot on the internal byte layout and byte formats set.
	 * 
	 * @param	index entry index requested (not type of "value-unit" (byte format))
	 * @param	type byte format / value-unit requested. e.g. POSITION
	 * @return	byte position the requested entry + type must be located
	 */
	public function getEntryIndex( index:Int, type:T ):Int
	{
		return index * this.getStepSizeEntry( type ) + this.getStepSizeType( type );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	/**
	 * step size required to get to / iterate over the requested type data within a byte repo
	 * see getEntryIndex for more information.
	 * 
	 * @param	type identifier associated with a requested ByteFormat ("value-unit")
	 * @return	number of bytes required to stride over to obtain the requested type data
	 */
	private function getStepSizeType( type:T ):Int
	{
		var total:Int = 0;
		
		for( j in 0...type.getIndex() )
			total += this.formats[j].sizeTotal * this.entries[j];			// interleaved might ommit with zero entries
		
		//
		return total;
	}
	
	/**
	 * step size required to get to / iterate over the requested type data within a byte repo
	 * see getEntryIndex for more information.
	 * 
	 * @param	type identifier associated with a requested ByteFormat ("value-unit")
	 * @return	number of bytes required to stride over to obtain the requested type data
	 */
	private function getStepSizeEntry( type:T ):Int
	{
		switch( this.layout )
		{
			//
			case ByteLayoutType.INTERLEAVED:
			{
				var total:Int = 0;
				
				for( j in 0...this.formats.length )
					total += this.formats[j].sizeTotal * this.entries[j];	// might ommit with zero entries
					
				return total;	
			}
			
			//
			case ByteLayoutType.BLOCKED:
			{
				return this.formats[type.getIndex()].sizeTotal;				// step size within a block
			}
		}	
	}
}