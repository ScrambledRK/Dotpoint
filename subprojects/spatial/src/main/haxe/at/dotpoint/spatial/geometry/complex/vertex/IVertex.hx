package at.dotpoint.spatial.geometry.complex.vertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexCollection;
import at.dotpoint.spatial.geometry.complex.vertex.VertexType;

import at.dotpoint.datastructure.bytes.IByteCollection;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexCollection.VertexRepository;

/**
 * @author RK
 */
interface IVertex extends IByteCollection<VertexType,VertexRepository>
{
	//
	public var index:MeshIndexVertex;

	//
	public function clear():Void;
	
	//
	public function getData( type:VertexType ):Dynamic;
	public function setData( type:VertexType, data:Dynamic ):Void;
	
	//
	public function getDataIndex( type:VertexType ):Int;
	public function setDataIndex( type:VertexType, value:Int ):Int;
	
}