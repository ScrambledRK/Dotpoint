package at.dotpoint.spatial.geometry.complex.mesh.face;

import at.dotpoint.spatial.geometry.complex.mesh.IMeshStatistic;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexTriangle;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class FaceCollection
{
	//
	private var indices:FaceRepository;

	//
	public function new( signature:FaceSignature )
	{
		this.indices = new FaceRepository( signature );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function setFace( face:IFace ):Void
	{
		this.checkFace( face );

		//
		face.writeBytes( this.indices, face.type, -1 );
	}

	//
	public function getFace( index:Int, ?output:IFace ):IFace
	{
		if ( output == null )
			output = new Face();

		//
		output.clear();
		output.index = index;

		//
		output.readBytes( this.indices, output.type, index );

		//
		return output;
	}

	//
	private function checkFace( face:IFace ):Void
	{
		if ( face == null )
			throw "given face is null";

		var signature:FaceSignature = this.getSignature();

		//
		if ( face.index < 0 || face.index > signature.numTriangles )
			throw "given face index out of bounds: " + face.index + " of " + signature.numTriangles;

		//
		for ( j in 0...face.size )
		{
			//
			var index:Int = face.getVertexIndex( j );

			if ( index < 0 || index > signature.numVertices )
				throw "vertex index out of bounds: " + index + " of " + signature.numVertices;
		}
	}

	// ************************************************************************ //
	// get/set Data/Index
	// ************************************************************************ //

	//
	private function getSignature():FaceSignature
	{
		return this.indices.signature;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function setIndices( index:MeshIndexTriangle, type:FaceType, value:Vector<MeshIndexVertex> ):Void
	{
		this.indices.writeInteger( index, type, value );
	}

	//
	public function getIndices( index:MeshIndexVertex, type:FaceType, output:Vector<MeshIndexVertex> ):Void
	{
		this.indices.readInteger( index, type, output );
	}
}

