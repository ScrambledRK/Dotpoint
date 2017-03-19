package at.dotpoint.spatial.geometry.complex.mesh;

import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.spatial.geometry.complex.mesh.face.FaceLayoutType;
import at.dotpoint.spatial.geometry.complex.mesh.face.FaceSignature;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexSignature;

/**
 * ...
 * @author RK
 */
class MeshSignature implements IMeshStatistic
{	
	//
	public var vertex(default,null):VertexSignature;
	public var face(default,null):FaceSignature;
	
	//
	public var numVertices(get,null):Int;
	public var numTriangles(get,null):Int;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new( numTypes:Int, numVertices:Int, numTriangles:Int, ?vertexLayout:ByteLayoutType, ?faceLayout:FaceLayoutType ) 
	{
		//
		this.numVertices  = numVertices;
	    this.numTriangles = numTriangles;
		
		//
		this.vertex = new VertexSignature( numTypes, numVertices, vertexLayout );
		this.face = new FaceSignature( numVertices, numTriangles, faceLayout );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	private function get_numVertices():Int
	{
		return this.face.numVertices;
	}
	
	//
	private function get_numTriangles():Int
	{
		return this.face.numTriangles;
	}
}
