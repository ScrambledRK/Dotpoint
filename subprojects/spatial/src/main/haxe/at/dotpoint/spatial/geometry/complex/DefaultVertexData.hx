package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.spatial.geometry.complex.DefaultVertexType;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertexData;

/**
 * ...
 * @author RK
 */
class DefaultVertexData implements IVertexData<DefaultVertexType>
{
	//
	public var index:MeshIndexData;
	public var type:DefaultVertexType;
	
	private var data:ITensor;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new() 
	{
		this.index = -1;
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
	
	//
	public function getData():Dynamic
	{
		return this.data;
	}
	
	public function setData( value:Dynamic ):Void
	{
		this.data = cast value;
	}
}