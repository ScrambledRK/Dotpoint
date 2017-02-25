package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.spatial.geometry.complex.face.FaceData;
import at.dotpoint.spatial.geometry.complex.face.IFace;
import at.dotpoint.spatial.geometry.complex.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexData;

/**
 * ...
 * @author RK
 */
class MeshData
{

	//
	public var signature(default,null):MeshSignature;

	private var vertex:VertexData;
	private var face:FaceData;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( signature:MeshSignature )
	{
		this.signature = signature;

		this.vertex = new VertexData( signature );
		this.face = new FaceData( signature );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function setFace( face:IFace ):Void
	{
		return this.face.setFace( face );
	}

	//
	public function getFace( index:Int, ?output:IFace ):IFace
	{
		return this.face.getFace( index, output );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function setVertex( vertex:IVertex ):Void
	{
		return this.vertex.setVertex( vertex );
	}

	//
	public function getVertex( index:Int, ?output:IVertex ):IVertex
	{
		return this.vertex.getVertex( index, output );
	}
}