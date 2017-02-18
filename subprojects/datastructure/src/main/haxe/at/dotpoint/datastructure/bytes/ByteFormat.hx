package at.dotpoint.datastructure.bytes;
import haxe.io.Bytes;

/**
 * describes how some byte data is formatted as in: what type of value does the data represent (Int, Float, etc);
 * how many values does it hold (e.g. 3 float values), how many bits does a single entry require.
 * 
 * @author RK
 */
class ByteFormat 
{	
	/** type Int, Float, etc. */
	public var type(default, null):ByteType;
	
	/** length number of entries (e.g. for 3 floats: 3) */
	public var numEntries(default, null):Int;	
	
	/** automatically calculated according to the ByteType, in numbers of bit */
	public var sizeEntry(default, null):Int;
	
	/** total number of bits the format takes up */
	public var sizeTotal(get, null):Int;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	/**
	 * @param	type Int, Float, etc.
	 * @param	length number of entries (e.g. for 3 floats: 3)
	 */
	public function new( type:ByteType, length:Int )
	{
		this.type = type;
		this.numEntries = length;
		this.sizeEntry = this.getSize();
	}	
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	inline private function getSize():Int
	{
		switch( this.type )
		{
			case ByteType.INT:		return 4;
			case ByteType.FLOAT:	return 8;
		}
	}
	
	//
	inline private function get_sizeTotal():Int
	{
		return this.numEntries * this.sizeEntry;
	}
}