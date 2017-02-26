package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.mesh.MeshSignature;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.Vertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexRepository;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class VertexCollection<TVertex:EnumValue>
{

	//
	private var repository:VertexRepository<TVertex>;
	private var indices:VertexTable<TVertex>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( signature:MeshSignature<TVertex> )
	{
		this.repository = new VertexRepository( signature );
		this.indices = new VertexTable( signature );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function setVertex( vertex:IVertex<TVertex> ):Void
	{
		this.checkVertex( vertex );

		//
		var signature:MeshSignature<TVertex> = this.getSignature();

		for ( j in 0...signature.size )
		{
			if ( signature.entries[j] > 0 )
			{
				var type:TVertex = signature.types[j];

				this.indices.setIndex( vertex.index, type, vertex.getDataIndex( type ) );
				vertex.writeBytes( this.repository, type );
			}
		}
	}

	//
	public function getVertex( index:Int, output:IVertex<TVertex> ):Void
	{
		output.clear();
		output.index = index;

		//
		var signature:MeshSignature<TVertex> = this.getSignature();

		for ( j in 0...signature.size )
		{
			if ( signature.entries[j] > 0 )
			{
				var type:TVertex = signature.types[j];
				var vindex:Int = this.indices.getIndex( index, type );
				
				output.readBytes( this.repository, type, vindex );
			}
		}
	}

	//
	private function checkVertex( vertex:IVertex<TVertex> ):Void
	{
		if ( vertex == null )
			throw "given vertex is null";

		var signature:MeshSignature<TVertex> = this.getSignature();

		//
		if ( vertex.index < 0 || vertex.index > signature.numVertices )
			throw "given vertex index out of bounds: " + vertex.index + " of " + signature.numVertices;

		//
		for ( j in 0...signature.size )
		{
			var numEntries:Int = signature.entries[j];
			var maxEntries:Int = signature.layout == ByteLayoutType.BLOCKED ? numEntries : signature.numVertices;

			if ( numEntries > 0 )
			{
				var type:TVertex = signature.types[j];

				//
				if ( !vertex.hasData( type ) )
					throw "vertex data missing for " + type;

				//
				var index:Int = vertex.getDataIndex( type );

				if ( index < 0 || index > maxEntries )
					throw "vertex data index out of bounds: " + index + " of " + maxEntries;
			}
		}
	}

	// ************************************************************************ //
	// get/set Data/Index
	// ************************************************************************ //

	//
	private function getSignature():MeshSignature<TVertex>
	{
		return this.repository.signature;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function setDataTensor( index:MeshIndexData, type:TVertex, value:ITensor ):Void
	{
		this.repository.writeTensor( index, type, value );
	}

	//
	public function getDataTensor( index:MeshIndexData, type:TVertex, output:ITensor ):Void
	{
		this.repository.readTensor( index, type, output );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
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

	//
	public function setIndex( index:MeshIndexVertex, type:TVertex, value:MeshIndexData ):Void
	{
		this.indices.setIndex( index, type, value );
	}

	//
	public function getIndex( index:MeshIndexVertex, type:TVertex ):MeshIndexData
	{
		return this.indices.getIndex( index, type );
	}

}