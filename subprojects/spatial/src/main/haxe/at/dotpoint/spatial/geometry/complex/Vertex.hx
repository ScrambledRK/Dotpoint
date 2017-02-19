package at.dotpoint.spatial.geometry.complex;
import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.math.tensor.matrix.Matrix33;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector2;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class Vertex 
{

	//
	public var index:MeshIndexVertex;
	private var data:Vector<ITensor>;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new() 
	{
		this.data = new Vector<ITensor>( VertexType.createAll().length );
		this.index = -1;
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function getData<T:ITensor>( type:VertexType ):T
	{
		return cast this.data[ type.getIndex() ];
	}
	
	//
	public function setData<T:ITensor>( type:VertexType, value:T ):T
	{
		return cast this.data[ type.getIndex() ] = value;
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //	
	
	// TODO: generate typed accessors via macro
	
	
	public var position(get,set):IVector3;
	public var normal(get,set):IVector3;
	public var color(get,set):IVector3;
	public var uv(get, set):IVector2;
	
	/**
	 * VERTEX_POSITION
	 */
	private function get_position():IVector3
	{
		return this.getData( VertexType.POSITION );
	}

	private function set_position( value:IVector3 ):IVector3
	{
		return this.setData( VertexType.POSITION, value );
	}

	/**
	 * VERTEX_NORMAL
	 */
	private function get_normal():IVector3
	{
		return this.getData( VertexType.NORMAL );
	}

	private function set_normal( value:IVector3 ):IVector3
	{
		return this.setData( VertexType.NORMAL, value );
	}

	/**
	 * VERTEX_COLOR
	 */
	private function get_color():IVector3
	{
		return this.getData( VertexType.COLOR );
	}

	private function set_color( value:IVector3 ):IVector3
	{
		return this.setData( VertexType.COLOR, value );
	}

	/**
	 * VERTEX_UV
	 */
	private function get_uv():IVector2
	{
		return this.getData( VertexType.UV );
	}

	private function set_uv( value:IVector2 ):IVector2
	{
		return this.setData( VertexType.UV, value );
	}
}