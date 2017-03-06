package at.dotpoint.spatial.geometry.complex.mesh.face;

import at.dotpoint.datastructure.bytes.IByteRepresentation;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexTriangle;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;

/**
 * @author RK
 */
interface IFace extends IByteRepresentation<FaceCollection>
{
	//
	public var index:MeshIndexTriangle;
	public var type:Int;
	
	//
	public var size(get, null):Int;
	
	//
	public function getVertexIndex( index:Int ):MeshIndexVertex;
	public function setVertexIndex( index:Int, value:MeshIndexVertex ):MeshIndexVertex;
}