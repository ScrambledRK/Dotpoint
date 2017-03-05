package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteSignature;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class VertexSignature extends ByteSignature
{
	
	//
	public var numVertices(default,null):Int;
	
	//
	public function new( numTypes:Int, numVertices:Int, ?layout:ByteLayoutType ) 
	{
		super( numTypes, layout );	
		this.numVertices = numVertices;
	}
	
}