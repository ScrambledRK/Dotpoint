package at.dotpoint.spatial.geometry.complex.vertex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.geometry.complex.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexRepository;
import at.dotpoint.spatial.geometry.complex.vertex.VertexType.VertexTypeHelper;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class Vertex implements IVertex
{

	//
	public var index:MeshIndexVertex;

	//
	private var data:Vector<ITensor>;
	private var indices:Vector<MeshIndexVertex>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new()
	{
		var size:Int = VertexType.createAll().length;

		this.data = new Vector<ITensor>( size );
		this.indices = new Vector<MeshIndexVertex>( size );

		this.clear();
	}

	//
	public function clear():Void
	{
		this.index = -1;

		for ( j in 0...this.indices.length )
		{
			this.indices[j] = -1;
			this.data[j] = null;
		}
	}

	// ************************************************************************ //
	// IByteCollection
	// ************************************************************************ //

	/**
	 * store this byte collection with its internal data representation into the given byte repository
	 *
	 * @param	repository target to store the internal data of the given type into
	 * @param	type kind of data to store
	 * @param 	index position to write the data to, may need to use internal information and not provided one
	 */
	public function writeBytes( repository:VertexRepository, type:VertexType, index:Int = -1 ):Void
	{
		var index:Int = index < 0 ? this.getDataIndex( type ) : index;
		var input:ITensor = this.getTensor( type );

		if ( input == null || index < 0 )
			return;

		//
		repository.writeTensor( index, type, input );
	}

	/**
	 * use the given bytes repository data to store its values into this byte collection internal data representation
	 *
	 * @param	repository source to read the internal data of the given type from
	 * @param	type kind of data to store
	 * @param 	index position to write the data to, may need to use internal information and not provided one
	 */
	public function readBytes( repository:VertexRepository, type:VertexType, index:Int = -1 ):Void
	{
		var index:Int = this.setDataIndex( type, index < 0 ? this.getDataIndex( type ) : index );

		if ( index < 0 )
			return;

		//
		var output:ITensor = this.getTensor( type );

		if ( output == null )
		{
			output = VertexTypeHelper.createTensor( type );
			this.setTensor( type, output );
		}

		//
		repository.readTensor( index, type, output );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getDataIndex( type:VertexType ):Int
	{
		return this.indices[ type.getIndex() ];
	}

	//
	public function setDataIndex( type:VertexType, value:Int ):Int
	{
		return this.indices[ type.getIndex() ] = value;
	}

	//
	public function hasData( type:VertexType ):Bool
	{
		return this.getTensor( type ) != null;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getTensor<T:ITensor>( type:VertexType ):Null<T>
	{
		return cast this.data[ type.getIndex() ];
	}

	//
	public function setTensor<T:ITensor>( type:VertexType, value:T ):Null<T>
	{
		return cast this.data[ type.getIndex() ] = value;
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //

	// TODO: generate typed accessors via macro

	public var position(get,set):Null<IVector3>;
	public var normal(get,set):Null<IVector3>;
	public var color(get,set):Null<IVector3>;
	public var uv(get, set):Null<IVector2>;

	/**
	 * VERTEX_POSITION
	 */
	private function get_position():Null<IVector3>
	{
		return this.getTensor( VertexType.POSITION );
	}

	private function set_position( value:Null<IVector3> ):Null<IVector3>
	{
		return this.setTensor( VertexType.POSITION, value );
	}

	/**
	 * VERTEX_NORMAL
	 */
	private function get_normal():Null<IVector3>
	{
		return this.getTensor( VertexType.NORMAL );
	}

	private function set_normal( value:Null<IVector3> ):Null<IVector3>
	{
		return this.setTensor( VertexType.NORMAL, value );
	}

	/**
	 * VERTEX_COLOR
	 */
	private function get_color():Null<IVector3>
	{
		return this.getTensor( VertexType.COLOR );
	}

	private function set_color( value:Null<IVector3> ):Null<IVector3>
	{
		return this.setTensor( VertexType.COLOR, value );
	}

	/**
	 * VERTEX_UV
	 */
	private function get_uv():Null<IVector2>
	{
		return this.getTensor( VertexType.UV );
	}

	private function set_uv( value:Null<IVector2> ):Null<IVector2>
	{
		return this.setTensor( VertexType.UV, value );
	}
}