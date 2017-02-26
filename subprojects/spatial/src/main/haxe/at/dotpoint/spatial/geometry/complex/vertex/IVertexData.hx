package at.dotpoint.spatial.geometry.complex.vertex;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexData;

/**
 * @author RK
 */
interface IVertexData 
{
	public var index:MeshIndexData;
	public var type:VertexType;
	
	public function getData():Dynamic;
	public function setData( value:Dynamic ):Void;
}