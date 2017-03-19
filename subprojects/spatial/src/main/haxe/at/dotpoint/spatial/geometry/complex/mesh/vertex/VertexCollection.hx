package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.IByteRepository;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexRepository;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class VertexCollection implements IByteRepository<VertexSignature>
{
	//
	public var signature(default, null):VertexSignature;
	
	//
	private var repository:VertexRepository;
	private var indices:VertexTable;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( signature:VertexSignature )
	{
		this.signature = signature;
		
		this.repository = new VertexRepository( signature );
		this.indices = new VertexTable( signature );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

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