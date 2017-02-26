package at.dotpoint.spatial.geometry.complex.builder;
import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertexData;
import haxe.ds.Vector;

/**
 * @author RK
 */
interface IMeshFactory<TVertex:EnumValue> 
{
	public function getTypes():Vector<TVertex>;
	public function getTypesSize():Int;
	
	public function createVertexData():IVertexData<TVertex>;
	public function createVertex():IVertex<TVertex>;
	
	public function getByteFormat( type:TVertex ):ByteFormat;
}