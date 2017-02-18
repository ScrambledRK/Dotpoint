package at.dotpoint.datastructure.bytes;
import haxe.ds.Vector;

/**
 * describes where and how each byte format data is stored (yet does not store the data itself) and can be used
 * to easily store and access the data some place else. it holds ByteFormat objects and some context information
 * such as the stride where the data can be found in the context of the data structure it is stored in 
 * (e.g. there are several float values before this entry so there is an offset of x * float size bits)
 * 
 * 
 * 
 * @author RK
 */
class ByteSignature<T:EnumValue> implements IByteSignature<T>
{
	
	//
	public var type(default,null):ByteLayoutType;
	
	//
	public var formats(default, null):Vector<ByteFormat>;
	public var entries(default, null):Vector<Int>;	

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	/**
	 * 
	 * @param	size of the generic type param enum (length all enum values)
	 */
	public function new( size:Int, ?type:ByteLayoutType ) 
	{
		if( type == null )
			type = ByteLayoutType.INTERLEAVED;
		
		this.type = type;
		
		//
		this.formats = new Vector<ByteFormat>( size );
		this.entries = new Vector<Int>( size );
		
		for( j in 0...size )
			this.formats[j] = new ByteFormat( null, 0 );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	// entries irrelevant for interleaved, yet must not be 0. 0 entries means the
	// given enum type is not used and must be ignored for the step size calculations
	//
	public function setFormat( type:T, format:ByteFormat, ?numEntries:Int ):Void
	{
		if (numEntries == null || numEntries < 0 )
			numEntries = 0;
		
		//
		var index:Int = type.getIndex();
		
		this.formats[ index ] = format;
		this.entries[ index ] = this.type == ByteLayoutType.INTERLEAVED ? 1 : numEntries;	
	}
	
	//
	public function getFormat( type:T ):ByteFormat
	{
		return this.formats[ type.getIndex() ];
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function getStepSizeType( type:T ):Int
	{
		var total:Int = 0;
		
		for( j in 0...type.getIndex() )
			total += this.formats[j].sizeTotal * this.entries[j];			// interleaved might ommit with zero entries
		
		//
		return total;
	}
	
	//
	public function getStepSizeEntry( type:T ):Int
	{
		switch( this.type )
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
	
	//
	public function getSizeTotal( numEntries:Int ):Int
	{
		var total:Int = 0;
				
		for( j in 0...this.formats.length )
			total += this.formats[j].sizeTotal * this.entries[j];			// might ommit with zero entries

		//
		switch( this.type )
		{
			case ByteLayoutType.INTERLEAVED:	return total * numEntries;				
			case ByteLayoutType.BLOCKED:		return total;			
		}
	}
}