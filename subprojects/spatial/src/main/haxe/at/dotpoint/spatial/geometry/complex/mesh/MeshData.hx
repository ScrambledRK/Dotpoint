package at.dotpoint.spatial.geometry.complex.mesh;

import at.dotpoint.spatial.geometry.complex.mesh.face.FaceCollection;
import at.dotpoint.spatial.geometry.complex.mesh.face.IFace;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexCollection;

/**
 * ...
 * @author RK
 */
class MeshData<TVertex:EnumValue>
{

	//
	public var signature(default,null):MeshSignature<TVertex>;

	private var vertex:VertexCollection<TVertex>;
	private var face:FaceCollection;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( signature:MeshSignature<TVertex> )
	{
		this.signature = signature;

		this.vertex = new VertexCollection<TVertex>( signature.vertex );
		this.face = new FaceCollection( signature.face );
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
	public function setVertex( vertex:IVertex<TVertex> ):Void
	{
		return this.vertex.setVertex( vertex );
	}

	//
	public function getVertex( index:Int, output:IVertex<TVertex> ):Void
	{
		this.vertex.getVertex( index, output );
	}
}