package at.dotpoint.spatial.geometry.complex;
import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.IByteCollection;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;

/**
 * @author RK
 */
interface IVertex extends IByteCollection<VertexType>
{
	//
	public var index:MeshIndexVertex;
	
	//
	public function clear():Void;
	
	//
	public function getDataIndex( type:VertexType ):Int;
	public function setDataIndex( type:VertexType, value:Int ):Int;
	
	//
	public function hasData( type:VertexType ):Bool;
	
	//
	public function getTensor<T:ITensor>( type:VertexType ):Null<T>;
	public function setTensor<T:ITensor>( type:VertexType, value:T ):Null<T>;
}