package at.dotpoint.spatial.geometry.complex.mesh.face;

import at.dotpoint.datastructure.bytes.IByteRepository;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexTriangle;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class FaceCollection implements IByteRepository<FaceSignature>
{
	//
	public var signature(default, null):FaceSignature;
	
	//
	private var indices:FaceRepository;

	//
	public function new( signature:FaceSignature )
	{
		this.signature = signature;
		this.indices = new FaceRepository( signature );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function setIndices( index:MeshIndexTriangle, type:Int, value:Vector<MeshIndexVertex> ):Void
	{
		this.indices.writeInteger( index, type, value );
	}

	//
	public function getIndices( index:MeshIndexVertex, type:Int, output:Vector<MeshIndexVertex> ):Void
	{
		this.indices.readInteger( index, type, output );
	}
}

