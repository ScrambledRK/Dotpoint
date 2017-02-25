package at.dotpoint.spatial.geometry.complex.face;

import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexTriangle;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.face.FaceType.FaceTypeHelper;
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

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function setFace( face:IFace ):Void
	{
		this.checkFace( vertex );

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
		var size:Int = FaceTypeHelper.getNumVertices( face.type );

		for ( j in 0...size )
		{
			//
			var index:Int = face.geVertexIndex( j );

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

