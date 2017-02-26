package at.dotpoint.spatial.geometry.complex.vertex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.vertex.Vertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexRepository;
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

		for ( j in 0...signature.size )
		{
			if ( signature.entries[j] > 0 )
			{
				var type:VertexType = signature.types[j];

				this.indices.setIndex( vertex.index, type, vertex.getDataIndex( type ) );
				vertex.writeBytes( this.repository, type );
			}
		}
	}

	//
	public function getVertex( index:Int, ?output:IVertex ):IVertex
	{
		if ( output == null )
			output = new Vertex();

		//
		output.clear();
		output.index = index;

		//
		var signature:MeshSignature = this.getSignature();

		for ( j in 0...signature.size )
		{
			if ( signature.entries[j] > 0 )
			{
				var type:VertexType = signature.types[j];
				output.readBytes( this.repository, type, this.indices.getIndex( index, type ) );
			}
		}

		return output;
	}

	//
	private function checkVertex( vertex:IVertex ):Void
	{
		if ( vertex == null )
			throw "given vertex is null";

		var signature:MeshSignature = this.getSignature();

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
				var type:VertexType = signature.types[j];

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
	private function getSignature():MeshSignature
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