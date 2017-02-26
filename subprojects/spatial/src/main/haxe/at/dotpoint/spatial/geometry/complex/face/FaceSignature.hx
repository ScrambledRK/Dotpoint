package at.dotpoint.spatial.geometry.complex.face;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.spatial.geometry.complex.IMeshStatistic;

/**
 * ...
 * @author RK
 */
class FaceSignature implements IByteSignature<FaceType>
{
	//
	public var numVertices(default,null):Int;
	public var numTriangles(default,null):Int;
	
	//
	private var format:ByteFormat;								// only triangles allowed
	private var overhead:Int;									// strip may need additional degenerated tris
	
	//
	public var layout(default, null):FaceLayoutType;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( statistic:IMeshStatistic, ?layout:FaceLayoutType )
	{
		if( layout == null )
			layout = FaceLayoutType.TRIANGLE;
			
		if( layout != FaceLayoutType.TRIANGLE )
			throw "layouts other than triangle not supported";
		
		//
		this.layout = layout;
		this.overhead = 0;
		
		this.numVertices = statistic.numVertices;
		this.numTriangles = statistic.numTriangles + this.overhead;
		
		this.format = new ByteFormat( ByteType.INT, 3 );		// could be smaller than int
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return 	number of components the byte format consists of
	 */
	public function getNumValues( type:FaceType ):Int
	{
		return this.format.numValues;
	}
	
	/**
	 * @param	type identifier associated with the requested ByteFormat
	 * @return	size in bytes of a single component of the byte format
	 */	
	public function getSizeValue( type:FaceType ):Int
	{
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
		return this.overhead + this.format.sizeTotal * numEntries;
	}
	
	/**
	 * calculates the byte position of the given entry index and requested "value-unit" type.
	 * this calculation depends a lot on the internal byte layout and byte formats set.
	 * 
	 * @param	index entry index requested (not type of "value-unit" (byte format))
	 * @param	type byte format / value-unit requested. e.g. POSITION
	 * @return	byte position the requested entry + type must be located
	 */
	public function getEntryIndex( index:Int, type:FaceType ):Int
	{
		return index * this.format.sizeTotal;
	}
}