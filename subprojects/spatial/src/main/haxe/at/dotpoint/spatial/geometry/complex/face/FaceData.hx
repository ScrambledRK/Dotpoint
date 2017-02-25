package at.dotpoint.spatial.geometry.complex.face;

import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexTriangle;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class FaceData
{
	//
	private var indices:FaceRepository;

	//
	public function new( signature:MeshSignature )
	{
		this.indices = new FaceRepository( signature );
	}

	//
	public function setIndices( index:MeshIndexTriangle, value:Vector<MeshIndexVertex> ):Void
	{
		this.indices.writeInteger( index, FaceType.TRIANGLE, value );
	}

	//
	public function getIndices( index:MeshIndexVertex, output:Vector<MeshIndexVertex> ):Void
	{
		this.indices.readInteger( index, FaceType.TRIANGLE, output );
	}
}

