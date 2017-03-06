package at.dotpoint.spatial.geometry.complex.mesh;

import at.dotpoint.spatial.geometry.complex.mesh.face.FaceCollection;
import at.dotpoint.spatial.geometry.complex.mesh.face.IFace;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexCollection;

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

		this.vertex = new VertexCollection( signature.vertex );
		this.face = new FaceCollection( signature.face );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function setFace( face:IFace ):Void
	{
		face.writeBytes( this.face );
	}

	//
	public function getFace( index:Int, output:IFace ):Void
	{
		output.index = index;
		output.readBytes( this.face );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function setVertex( vertex:IVertex ):Void
	{
		vertex.writeBytes( this.vertex );
	}

	//
	public function getVertex( index:Int, output:IVertex ):Void
	{
		output.index = index;
		output.readBytes( this.vertex );
	}
}