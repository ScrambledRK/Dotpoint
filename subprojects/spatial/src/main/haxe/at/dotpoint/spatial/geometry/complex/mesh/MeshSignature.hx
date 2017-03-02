package at.dotpoint.spatial.geometry.complex.mesh;

import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteSignature;
import at.dotpoint.spatial.geometry.complex.mesh.face.FaceLayoutType;
import at.dotpoint.spatial.geometry.complex.mesh.face.FaceSignature;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexSignature;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class MeshSignature<TVertex:EnumValue> implements IMeshStatistic
{	
	//
	public var vertex(default,null):VertexSignature<TVertex>;
	public var face(default,null):FaceSignature;
	
	//
	public var numVertices(get,null):Int;
	public var numTriangles(get,null):Int;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new( types:Vector<TVertex>, numVertices:Int, numTriangles:Int, ?vertexLayout:ByteLayoutType, ?faceLayout:FaceLayoutType ) 
	{
		//
		this.numVertices  = numVertices;
	    this.numTriangles = numTriangles;
		
		//
		this.vertex = new VertexSignature<TVertex>( types, numVertices, vertexLayout );
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
