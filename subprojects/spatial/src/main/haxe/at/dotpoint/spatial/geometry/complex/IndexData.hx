package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexTriangle;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class IndexData
{
	//
	private var indices:IndexRepository;
	
	//
	public function new( signature:MeshSignature ) 
	{
		this.indices = new IndexRepository( signature );
	}
	
	//
	public function setIndices( index:MeshIndexTriangle, value:Vector<MeshIndexVertex> ):Void
	{
		this.indices.writeInteger( index, IndexType.TRIANGLE, value );
	}
	
	//
	public function getIndices( index:MeshIndexVertex, output:Vector<MeshIndexVertex> ):Void
	{
		this.indices.readInteger( index, IndexType.TRIANGLE, output );
	}
}

/**
 * ...
 * @author RK
 */
class IndexSignature implements IByteSignature<IndexType> 
{
	//
	private var format:ByteFormat;								// only triangles allowed
	private var overhead:Int;									// strip may need additional degenerated tris
	
	public var layout(default, null):IndexLayoutType;
	
	//
	public function new( signature:MeshSignature, ?layout:IndexLayoutType )
	{
		if( layout == null )
			layout = IndexLayoutType.TRIANGLE;
			
		this.layout = layout;
		this.overhead = 0;
		
		if( layout != IndexLayoutType.TRIANGLE )
			throw "layouts other than triangle not supported";
			
		this.format = new ByteFormat( ByteType.INT, 3 );		// could be smaller than int
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function getFormat( type:IndexType ):ByteFormat
	{
		return this.format;
	}
	
	//
	public function getSizeTotal( numEntries:Int ):Int
	{
		return this.overhead + this.format.sizeTotal * numEntries;
	}
	
	//
	public function getEntryIndex( index:Int, type:IndexType ):Int
	{
		return index * this.format.sizeTotal;
	}
}

/**
 * ...
 * @author RK
 */
class IndexRepository extends ByteRepository<IndexType,IndexSignature>
{

	public function new( signature:MeshSignature ) 
	{
		super( new IndexSignature( signature ), signature.numTriangles );
	}
	
}

/**
 * @author RK
 */
enum IndexType 
{
	TRIANGLE;
}