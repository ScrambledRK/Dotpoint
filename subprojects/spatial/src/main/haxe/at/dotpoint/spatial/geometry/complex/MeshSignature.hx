package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteSignature;
import at.dotpoint.spatial.geometry.complex.face.FaceLayoutType;
import at.dotpoint.spatial.geometry.complex.vertex.VertexType;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class MeshSignature extends ByteSignature<VertexType>
{	
	public var faceLayout(default, null):FaceLayoutType;
	
	public var numVertices(default,null):Int;
	public var numTriangles(default,null):Int;
	
	//
	public function new( numVertices:Int, numTriangles:Int, ?layout:ByteLayoutType, ?faceLayout:FaceLayoutType ) 
	{
		if( layout == null )
			layout = ByteLayoutType.BLOCKED;
		
		super( new Vector<VertexType>( VertexType.createAll().length ), layout );	
		
		//
		this.numVertices  = numVertices;
	    this.numTriangles = numTriangles;
		
		//
		if( faceLayout == null )
			faceLayout = FaceLayoutType.TRIANGLE;
			
		this.faceLayout = faceLayout;
	}
	
}
