package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.spatial.geometry.complex.builder.IMeshFactory;
import at.dotpoint.spatial.geometry.complex.vertex.Vertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexData;
import at.dotpoint.spatial.geometry.complex.vertex.VertexType;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class DefaultMeshFactory implements IMeshFactory<VertexType>
{

	//
	public function new() 
	{
		
	}
	
	// ************************************************************************ //
	// IMeshFactory
	// ************************************************************************ //	
	
	//
	public function getTypes():Vector<VertexType> 
	{
		return Vector.fromArrayCopy( VertexType.createAll() );
	}
	
	//
	public function getTypesSize():Int 
	{
		return this.getTypes().length;
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
	
	public function getByteFormat( type:VertexType ):ByteFormat
	{
		return VertexTypeHelper.getByteFormat( type );
	}
}