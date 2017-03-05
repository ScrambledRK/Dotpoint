package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.bytes.IByteCollection;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexRepository;

/**
 * @author RK
 */
interface IVertex extends IByteCollection<VertexRepository>
{
	//
	public var index:MeshIndexVertex;

	//
	public function clear():Void;

	//
	public function getData( type:Int ):Dynamic;
	public function setData( type:Int, data:Dynamic ):Void;

	//
	public function getDataIndex( type:Int ):Int;
	public function setDataIndex( type:Int, value:Int ):Int;

}