package at.dotpoint.spatial.geometry.complex.basic;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.spatial.geometry.complex.basic.Vertex;
import at.dotpoint.spatial.geometry.complex.basic.VertexData;
import at.dotpoint.spatial.geometry.complex.basic.VertexType;
import at.dotpoint.spatial.geometry.complex.builder.IMeshFactory;
import at.dotpoint.spatial.geometry.complex.basic.Face;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class MeshFactory implements IMeshFactory
{

	//
	public function new() 
	{
		
	}
	
	// ************************************************************************ //
	// IMeshFactory
	// ************************************************************************ //	
	
	//
	public function getTypesSize():Int 
	{
		return VertexType.getTypeSize();
	}
	
	//
	public function createFace():Face
	{
		return new Face();
	}
	
	//
	public function createVertexData():VertexData
	{
		return new VertexData();
	}
	
	//
	public function createVertex():Vertex
	{
		return new Vertex();
	}
	
	//
	public function getByteFormat( type:Int ):ByteFormat
	{
		return VertexType.getByteFormat( type );
	}
}