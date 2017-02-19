package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteSignature;

/**
 * ...
 * @author RK
 */
class MeshSignature extends ByteSignature<VertexType>
{	
	public var numVertices(default,null):Int;
	public var numTriangles(default,null):Int;
	
	//
	public function new( numVertices:Int, numTriangles:Int, ?layout:ByteLayoutType ) 
	{
		if( layout == null )
			layout = ByteLayoutType.BLOCKED;
		
		super( VertexType.createAll().length, layout );	
		
		this.numVertices  = numVertices;
	    this.numTriangles = numTriangles;
	}
	
}