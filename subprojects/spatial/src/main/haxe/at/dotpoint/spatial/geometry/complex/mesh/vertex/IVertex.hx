package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.bytes.IByteRepresentation;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;

/**
 * @author RK
 */
interface IVertex extends IByteRepresentation<VertexCollection>
{
	//
	public var index:MeshIndexVertex;

	//
	public function getData( type:Int ):Dynamic;
	public function setData( type:Int, data:Dynamic ):Void;

	//
	public function getDataIndex( type:Int ):Int;
	public function setDataIndex( type:Int, value:Int ):Int;

}