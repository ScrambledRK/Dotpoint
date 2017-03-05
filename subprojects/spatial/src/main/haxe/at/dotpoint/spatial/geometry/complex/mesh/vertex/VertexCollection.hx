package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.mesh.MeshSignature;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexRepository;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class VertexCollection
{

	//
	private var repository:VertexRepository;
	private var indices:VertexTable;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( signature:VertexSignature )
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
		var signature:VertexSignature = this.getSignature();

		for ( j in 0...signature.size )
		{
			if ( signature.entries[j] > 0 )
			{
				this.indices.setIndex( vertex.index, j, vertex.getDataIndex( j ) );
				vertex.writeBytes( this.repository, j );
			}
		}
	}

	//
	public function getVertex( index:Int, output:IVertex ):Void
	{
		output.clear();
		output.index = index;

		//
		var signature:VertexSignature = this.getSignature();

		for ( j in 0...signature.size )
		{
			if ( signature.entries[j] > 0 )
			{
				var vindex:Int = this.indices.getIndex( index, j );				
				output.readBytes( this.repository, j, vindex );
			}
		}
	}

	//
	private function checkVertex( vertex:IVertex ):Void
	{
		if ( vertex == null )
			throw "given vertex is null";

		var signature:VertexSignature = this.getSignature();

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
				//
				if ( !vertex.hasData( j ) )
					throw "vertex data missing for " + j;

				//
				var index:Int = vertex.getDataIndex( j );

				if ( index < 0 || index > maxEntries )
					throw "vertex data index out of bounds: " + index + " of " + maxEntries;
			}
		}
	}

	// ************************************************************************ //
	// get/set Data/Index
	// ************************************************************************ //

	//
	private function getSignature():VertexSignature
	{
		return this.repository.signature;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function setDataTensor( index:MeshIndexData, type:Int, value:ITensor ):Void
	{
		this.repository.writeTensor( index, type, value );
	}

	//
	public function getDataTensor( index:MeshIndexData, type:Int, output:ITensor ):Void
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
	public function setIndex( index:MeshIndexVertex, type:Int, value:MeshIndexData ):Void
	{
		this.indices.setIndex( index, type, value );
	}

	//
	public function getIndex( index:MeshIndexVertex, type:Int ):MeshIndexData
	{
		return this.indices.getIndex( index, type );
	}

}