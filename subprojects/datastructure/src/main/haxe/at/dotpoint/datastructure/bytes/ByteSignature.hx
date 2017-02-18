package at.dotpoint.datastructure.bytes;
import haxe.ds.Vector;

/**
 * describes where and how each byte format data is stored (yet does not store the data itself) and can be used
 * to easily store and access the data some place else. it holds ByteFormat objects and some context information
 * such as the stride where the data can be found in the context of the data structure it is stored in 
 * (e.g. there are several float values before this entry so there is an offset of x * float size bits)
 * 
 * @author RK
 */
class ByteSignature<T:EnumValue> implements IByteSignature<T>
{

	/** all byte formats with their length, type and size information */
	public var formats(default,null):Vector<ByteFormat>;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	/**
	 * 
	 * @param	size
	 */
	public function new( size:Int ) 
	{
		this.formats = new Vector<ByteFormat>( size );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	inline public function setFormat( format:ByteFormat, type:T ):Void
	{
		this.formats[ type.getIndex() ] = format;
	}
	
	//
	inline public function getFormat( type:T ):ByteFormat
	{
		return this.formats[ type.getIndex() ];
	}
	
	//
	inline public function getStride( type:T ):Int
	{
		var total:Int = 0;
		
		for( j in 0...type.getIndex() )
			total += this.formats[j].sizeTotal;
			
		return total;
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	inline public function getSizeTotal():Int
	{
		var total:Int = 0;
		
		for( j in 0...this.formats.length )
			total += this.formats[j].sizeTotal;
			
		return total;
	}
}