package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.datastructure.bytes.ByteSignature;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.spatial.geometry.complex.MeshData.MeshDataRepository;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class MeshData
{

	//
	private var repository:MeshDataRepository;
	private var vertex:VertexTable;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( signature:MeshSignature ) 
	{
		this.repository = new MeshDataRepository( signature );
		this.vertex = new VertexTable( signature );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
}

/**
 * ...
 * @author RK
 */
class VertexTableSignature extends ByteSignature<VertexType>
{	
	//
	public function new( signature:MeshSignature )
	{
		super( signature.size, this.getLayoutType( signature ) );
		
		//
		var format:ByteFormat = new ByteFormat( ByteType.INT, 1 );
		
		for( j in 0...signature.size )
			this.setFormat( VertexType.createByIndex(j), format, 0 );	// in case of interleave, set to 1 by itself!
	}
	
	//
	inline private function getLayoutType( signature:MeshSignature ):ByteLayoutType
	{
		var layout:ByteLayoutType = ByteLayoutType.BLOCKED;
		
		if( signature.layout == ByteLayoutType.BLOCKED )
			layout = ByteLayoutType.INTERLEAVED;
			
		return layout;
	}
}

/**
 * ...
 * @author RK
 */
class VertexTable extends ByteRepository<VertexType,VertexTableSignature>
{
	//
	private var container:Vector<Int>;
	
	//
	public function new( signature:MeshSignature )
	{
		super( new VertexTableSignature( signature ), signature.numVertices );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function setVertexDataIndex( index:Int, type:VertexType, value:Int ):Void
	{
		var container:Vector<Int> = this.getIndexContainer( index );
			container[ type.getIndex() ] = value;
			
		this.writeInteger( index, type, container, type.getIndex() );
	}
	
	//
	public function getVertexDataIndex( index:Int, type:VertexType ):Int
	{
		var container:Vector<Int> = this.getIndexContainer( index );			
		this.readInteger( index, type, container, type.getIndex() );
		
		return container[ type.getIndex() ];
	}
	
	//
	public function setVertexDataIndices( index:Int, values:Vector<Int> ):Vector<Int>
	{
		for( j in 0...this.signature.size )
		{
			if( this.signature.entries[j] > 0 )
				this.writeInteger( index, this.signature.types[j], values, j  );
		}
		
		return values;
	}	
	
	//
	public function getVertexDataIndices( index:Int, ?output:Vector<Int> ):Vector<Int>
	{
		var container:Vector<Int> = this.getIndexContainer( index, output );
		
		for( j in 0...this.signature.size )
		{
			if( this.signature.entries[j] > 0 )
				this.readInteger( index, this.signature.types[j], container, j  );
		}
		
		return container;
	}
	
	//
	private function getIndexContainer( index:Int, ?container:Vector<Int> ):Vector<Int>
	{
		if( container == null )
		{
			if( this.container == null )
				this.container = new Vector<Int>( this.signature.size );
				
			container = this.container;
		}
		
		//
		for( j in 0...this.container.length )
			container[j] = index;
		
		//	
		return container;
	}
}

/**
 * ...
 * @author RK
 */
class MeshDataRepository extends ByteRepository<VertexType,MeshSignature>
{

	//
	public function new( signature:MeshSignature ) 
	{
		super( signature, 1 );
	}
	
}