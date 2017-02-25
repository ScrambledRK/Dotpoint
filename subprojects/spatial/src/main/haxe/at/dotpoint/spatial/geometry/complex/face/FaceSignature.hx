package at.dotpoint.spatial.geometry.complex.face;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;

/**
 * ...
 * @author RK
 */
class FaceSignature implements IByteSignature<FaceType> 
{
	//
	public var size(default, null):Int;
	
	//
	private var format:ByteFormat;								// only triangles allowed
	private var overhead:Int;									// strip may need additional degenerated tris
	
	//
	public var layout(default, null):FaceLayoutType;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( signature:MeshSignature, ?layout:FaceLayoutType )
	{
		if( layout == null )
			layout = FaceLayoutType.TRIANGLE;
			
		this.layout = layout;
		this.overhead = 0;
		this.size = 1;
		
		if( layout != FaceLayoutType.TRIANGLE )
			throw "layouts other than triangle not supported";
			
		this.format = new ByteFormat( ByteType.INT, 3 );		// could be smaller than int
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function getFormat( type:FaceType ):ByteFormat
	{
		return this.format;
	}
	
	//
	public function getSizeTotal( numEntries:Int ):Int
	{
		return this.overhead + this.format.sizeTotal * numEntries;
	}
	
	//
	public function getEntryIndex( index:Int, type:FaceType ):Int
	{
		return index * this.format.sizeTotal;
	}
}