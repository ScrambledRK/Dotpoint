package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.bytes.IByteCollection;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.VertexData.VertexRepository;

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
	public function getDataIndex( type:VertexType ):Int;
	public function setDataIndex( type:VertexType, value:Int ):Int;
	
}