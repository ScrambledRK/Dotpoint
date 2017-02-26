package at.dotpoint.spatial.geometry.complex.vertex;

import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.MeshSignature;
import haxe.ds.Vector;

/**
 * TODO: optimize read/write performance
 * @author RK
 */
class VertexTable<TVertex:EnumValue> extends ByteRepository<TVertex,VertexTableSignature<TVertex>>
{
	
	//
	public function new( signature:MeshSignature<TVertex> )
	{
		super( new VertexTableSignature<TVertex>( signature ), signature.numVertices );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function setIndex( index:MeshIndexVertex, type:TVertex, value:MeshIndexData ):Void
	{
		var container:Vector<MeshIndexData> = this.getIndexContainer( index );
			container[ type.getIndex() ] = value;
			
		this.writeInteger( index, type, container, type.getIndex() );
	}
	
	//
	public function getIndex( index:MeshIndexVertex, type:TVertex ):MeshIndexData
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
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
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