package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.bytes.ByteRepository;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.mesh.MeshSignature;
import haxe.ds.Vector;

/**
 * TODO: optimize read/write performance
 * @author RK
 */
class VertexTable extends ByteRepository<VertexTableSignature>
{
	
	//
	public function new( signature:VertexSignature )
	{
		super( new VertexTableSignature( signature ), signature.numVertices );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function setIndex( index:MeshIndexVertex, type:Int, value:MeshIndexData ):Void
	{
		var container:Vector<MeshIndexData> = this.getIndexContainer( index );
			container[ type ] = value;
			
		this.writeInteger( index, type, container, type );
	}
	
	//
	public function getIndex( index:MeshIndexVertex, type:Int ):MeshIndexData
	{
		var container:Vector<MeshIndexData> = this.getIndexContainer( index );			
		this.readInteger( index, type, container, type );
		
		return container[ type ];
	}
	
	//
	public function setIndices( index:MeshIndexVertex, values:Vector<MeshIndexData> ):Vector<MeshIndexData>
	{
		for( j in 0...this.signature.size )
		{
			if( this.signature.entries[j] > 0 )
				this.writeInteger( index, j, values, j  );
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
				this.readInteger( index, j, container, j  );
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