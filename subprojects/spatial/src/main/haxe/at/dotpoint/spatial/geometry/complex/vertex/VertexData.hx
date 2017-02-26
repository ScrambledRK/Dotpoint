package at.dotpoint.spatial.geometry.complex.vertex;
import at.dotpoint.datastructure.ITensor;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexData;

/**
 * ...
 * @author RK
 */
class VertexData implements IVertexData
{
	//
	public var index:MeshIndexData;
	public var type:VertexType;
	
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