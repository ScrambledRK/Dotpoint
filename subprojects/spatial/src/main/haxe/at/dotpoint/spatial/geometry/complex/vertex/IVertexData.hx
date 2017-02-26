package at.dotpoint.spatial.geometry.complex.vertex;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexData;

/**
 * @author RK
 */
interface IVertexData<TVertex:EnumValue>
{
	public var index:MeshIndexData;
	public var type:TVertex;
	
	public function getData():Dynamic;
	public function setData( value:Dynamic ):Void;
}