package at.dotpoint.spatial.geometry.complex.face;
import at.dotpoint.datastructure.bytes.IByteCollection;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexTriangle;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;

/**
 * @author RK
 */
interface IFace extends IByteCollection<FaceType,FaceRepository>
{
	//
	public var index:MeshIndexTriangle;
	public var type:FaceType;
	
	//
	public var size(get, null):Int;
	
	//
	public function clear():Void;
	
	//
	public function getVertexIndex( index:Int ):MeshIndexVertex;
	public function setVertexIndex( index:Int, value:MeshIndexVertex ):MeshIndexVertex;
}