package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.datastructure.bytes.ByteSignature;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class VertexSignature<TVertex:EnumValue> extends ByteSignature<TVertex> 
{
	
	//
	public var numVertices(default,null):Int;
	
	//
	public function new( types:Vector<TVertex>, numVertices:Int, ?layout:ByteLayoutType ) 
	{
		super( types, layout );	
		this.numVertices = numVertices;
	}
	
}