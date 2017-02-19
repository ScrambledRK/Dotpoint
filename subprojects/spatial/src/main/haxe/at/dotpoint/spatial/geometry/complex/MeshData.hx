package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.datastructure.bytes.ByteSignature;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.spatial.geometry.complex.MeshData.MeshDataRepository;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
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
	
	//
	public function getSignature():MeshSignature
	{
		return this.repository.signature;
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function setVertexData( index:MeshIndexData, type:VertexType, value:ITensor ):Void
	{
		this.repository.writeTensor( index, type, value );
	}
	
	//
	public function getVertexData( index:MeshIndexData, type:VertexType, output:ITensor ):Void
	{
		this.repository.readTensor( index, type, output );
	}
	
	//
	public function setVertexDataIndices( index:MeshIndexVertex, value:Vector<MeshIndexData> ):Void
	{
		this.vertex.setVertexDataIndices( index, value );
	}
	
	//
	public function getVertexDataIndices( index:MeshIndexVertex, output:Vector<MeshIndexData> ):Void
	{
		this.vertex.getVertexDataIndices( index, output );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function setVertexDataIndex( index:MeshIndexVertex, type:VertexType, value:MeshIndexData ):Void
	{
		this.vertex.setVertexDataIndex( index, type, value );
	}
	
	//
	public function getVertexDataIndex( index:MeshIndexVertex, type:VertexType ):MeshIndexData
	{
		return this.vertex.getVertexDataIndex( index, type );
	}

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
		var layout:ByteLayoutType = this.getLayoutType( signature );
		
		//
		super( signature.size, layout );
		
		//
		switch( layout )
		{
			case ByteLayoutType.INTERLEAVED:
			{
				var format:ByteFormat = new ByteFormat( ByteType.INT, 1 );
		
				for( j in 0...signature.size )
					this.setFormat( VertexType.createByIndex(j), format, 1 );	
			}
			
			case ByteLayoutType.BLOCKED:
			{
				var format:ByteFormat = new ByteFormat( ByteType.INT, 0 );
		
				for( j in 0...signature.size )
					this.setFormat( VertexType.createByIndex(j), format, 0 );	
			}
		}		
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
 * TODO: optimize read/write performance
 * @author RK
 */
class VertexTable extends ByteRepository<VertexType,VertexTableSignature>
{
	
	//
	public function new( signature:MeshSignature )
	{
		super( new VertexTableSignature( signature ), signature.numVertices );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function setVertexDataIndex( index:MeshIndexVertex, type:VertexType, value:MeshIndexData ):Void
	{
		var container:Vector<MeshIndexData> = this.getIndexContainer( index );
			container[ type.getIndex() ] = value;
			
		this.writeInteger( index, type, container, type.getIndex() );
	}
	
	//
	public function getVertexDataIndex( index:MeshIndexVertex, type:VertexType ):MeshIndexData
	{
		var container:Vector<MeshIndexData> = this.getIndexContainer( index );			
		this.readInteger( index, type, container, type.getIndex() );
		
		return container[ type.getIndex() ];
	}
	
	//
	public function setVertexDataIndices( index:MeshIndexVertex, values:Vector<MeshIndexData> ):Vector<MeshIndexData>
	{
		for( j in 0...this.signature.size )
		{
			if( this.signature.entries[j] > 0 )
				this.writeInteger( index, this.signature.types[j], values, j  );
		}
		
		return values;
	}	
	
	//
	public function getVertexDataIndices( index:MeshIndexVertex, output:Vector<MeshIndexData> ):Vector<MeshIndexData>
	{
		var container:Vector<MeshIndexData> = this.getIndexContainer( index, output );
		
		for( j in 0...this.signature.size )
		{
			if( this.signature.entries[j] > 0 )
				this.readInteger( index, this.signature.types[j], container, j  );
		}
		
		return container;
	}
	
	//
	private function getIndexContainer( index:MeshIndexVertex, ?container:Vector<MeshIndexData> ):Vector<MeshIndexData>
	{
		if( container == null )
			container = new Vector<MeshIndexData>( this.signature.size );		
		
		//
		for( j in 0...container.length )
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
		super( signature, signature.numVertices );
	}
	
}