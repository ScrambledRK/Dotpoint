package at.dotpoint.spatial.geometry.complex.vertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexCollection;
import at.dotpoint.spatial.geometry.complex.vertex.VertexType;

import at.dotpoint.datastructure.bytes.IByteCollection;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexCollection.VertexRepository;

/**
 * @author RK
 */
interface IVertex<TVertex:EnumValue> extends IByteCollection<TVertex,VertexRepository<TVertex>>
{
	//
	public var index:MeshIndexVertex;

	//
	public function clear():Void;
	
	//
	public function getData( type:TVertex ):Dynamic;
	public function setData( type:TVertex, data:Dynamic ):Void;
	
	//
	public function getDataIndex( type:TVertex ):Int;
	public function setDataIndex( type:TVertex, value:Int ):Int;
	
}