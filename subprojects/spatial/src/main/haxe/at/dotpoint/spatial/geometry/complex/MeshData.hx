package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.spatial.geometry.complex.face.FaceCollection;
import at.dotpoint.spatial.geometry.complex.face.IFace;
import at.dotpoint.spatial.geometry.complex.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexCollection;

/**
 * ...
 * @author RK
 */
class MeshData
{

	//
	public var signature(default,null):MeshSignature;

	private var vertex:VertexCollection;
	private var face:FaceCollection;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( signature:MeshSignature )
	{
		this.signature = signature;

		this.vertex = new VertexCollection( signature );
		this.face = new FaceCollection( signature );
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