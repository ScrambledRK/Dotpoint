package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.datastructure.bytes.ByteSignature;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.datastructure.bytes.IByteSignature;
import at.dotpoint.spatial.geometry.complex.VertexData.VertexRepository;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class VertexData
{

	//
	private var repository:VertexRepository;
	private var indices:VertexTable;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( signature:MeshSignature ) 
	{
		this.repository = new VertexRepository( signature );
		this.indices = new VertexTable( signature );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function setVertex( vertex:IVertex ):Void
	{
		this.checkVertex( vertex );

		//
		var signature:MeshSignature = this.getSignature();		
		
		for( j in 0...signature.size )
		{
			if( signature.entries[j] > 0 )
			{
				var type:VertexType = signature.types[j];
				
				this.indices.setIndex( vertex.index, type, vertex.getDataIndex( type ) );
				vertex.writeBytes( this.repository.data, signature, type );
			}
		}
	}
	
	//
	public function getVertex( index:Int, ?output:IVertex ):IVertex
	{
		if( output == null )
			output = new Vertex();

		//
		output.clear();	
		output.index = index;	
		
		//
		var signature:MeshSignature = this.getSignature();		
		
		for( j in 0...signature.size )
		{
			if( signature.entries[j] > 0 )
			{
				var type:VertexType = signature.types[j];
				
				output.setDataIndex( type, this.indices.getIndex( index, type ) );
				output.readBytes( this.repository.data, signature, type );
			}
		}		
		
		return output;
	}
	
	//
	private function checkVertex( vertex:IVertex ):Void
	{
		var signature:MeshSignature = this.getSignature();
		
		//
		if( vertex.index < 0 || vertex.index > signature.numVertices )
			throw "given vertex index out of bounds: " + vertex.index + " of " + signature.numVertices;
		
		//
		for( j in 0...signature.size )
		{
			var numEntries:Int = signature.entries[j];
			var maxEntries:Int = signature.layout == ByteLayoutType.BLOCKED ? numEntries : signature.numVertices;
			
			if( numEntries > 0 )
			{
				var type:VertexType = signature.types[j];
				
				//
				if( !vertex.hasData( type ) )
					throw "vertex data missing for " + type;
					
				//	
				var index:Int = vertex.getDataIndex( type );
					
				if( index < 0 || index > maxEntries )	
					throw "vertex data index out of bounds: " + index + " of " + maxEntries;
			}
		}	
	}
	
	// ************************************************************************ //
	// get/set Data/Index
	// ************************************************************************ //	
	
	//
	public function getSignature():MeshSignature
	{
		return this.repository.signature;
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function setDataTensor( index:MeshIndexData, type:VertexType, value:ITensor ):Void
	{
		this.repository.writeTensor( index, type, value );
	}
	
	//
	public function getDataTensor( index:MeshIndexData, type:VertexType, output:ITensor ):Void
	{
		this.repository.readTensor( index, type, output );
	}
	
	//
	public function setIndices( index:MeshIndexVertex, value:Vector<MeshIndexData> ):Void
	{
		this.indices.setIndices( index, value );
	}
	
	//
	public function getIndices( index:MeshIndexVertex, output:Vector<MeshIndexData> ):Void
	{
		this.indices.getIndices( index, output );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function setIndex( index:MeshIndexVertex, type:VertexType, value:MeshIndexData ):Void
	{
		this.indices.setIndex( index, type, value );
	}
	
	//
	public function getIndex( index:MeshIndexVertex, type:VertexType ):MeshIndexData
	{
		return this.indices.getIndex( index, type );
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
		super( new Vector<VertexType>( signature.size ), layout );
		
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
	public function setIndex( index:MeshIndexVertex, type:VertexType, value:MeshIndexData ):Void
	{
		var container:Vector<MeshIndexData> = this.getIndexContainer( index );
			container[ type.getIndex() ] = value;
			
		this.writeInteger( index, type, container, type.getIndex() );
	}
	
	//
	public function getIndex( index:MeshIndexVertex, type:VertexType ):MeshIndexData
	{
		var container:Vector<MeshIndexData> = this.getIndexContainer( index );			
		this.readInteger( index, type, container, type.getIndex() );
		
		return container[ type.getIndex() ];
	}
	
	//
	public function setIndices( index:MeshIndexVertex, values:Vector<MeshIndexData> ):Vector<MeshIndexData>
	{
		for( j in 0...this.signature.size )
		{
			if( this.signature.entries[j] > 0 )
				this.writeInteger( index, this.signature.types[j], values, j  );
		}
		
		return values;
	}	
	
	//
	public function getIndices( index:MeshIndexVertex, output:Vector<MeshIndexData> ):Vector<MeshIndexData>
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
class VertexRepository extends ByteRepository<VertexType,MeshSignature>
{

	//
	public function new( signature:MeshSignature ) 
	{
		super( signature, signature.numVertices );
	}
	
}