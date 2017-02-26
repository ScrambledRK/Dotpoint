package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.spatial.geometry.complex.DefaultVertex;
import at.dotpoint.spatial.geometry.complex.DefaultVertexData;
import at.dotpoint.spatial.geometry.complex.DefaultVertexType;
import at.dotpoint.spatial.geometry.complex.builder.IMeshFactory;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class DefaultMeshFactory implements IMeshFactory<DefaultVertexType>
{

	//
	public function new() 
	{
		
	}
	
	// ************************************************************************ //
	// IMeshFactory
	// ************************************************************************ //	
	
	//
	public function getTypes():Vector<DefaultVertexType> 
	{
		return Vector.fromArrayCopy( DefaultVertexType.createAll() );
	}
	
	//
	public function getTypesSize():Int 
	{
		return this.getTypes().length;
	}
	
	//
	public function createVertexData():DefaultVertexData
	{
		return new DefaultVertexData();
	}
	
	//
	public function createVertex():DefaultVertex
	{
		return new DefaultVertex();
	}
	
	public function getByteFormat( type:DefaultVertexType ):ByteFormat
	{
		return VertexTypeHelper.getByteFormat( type );
	}
}