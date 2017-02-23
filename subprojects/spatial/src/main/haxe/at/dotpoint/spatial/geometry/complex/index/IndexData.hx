package at.dotpoint.spatial.geometry.complex.index;

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

