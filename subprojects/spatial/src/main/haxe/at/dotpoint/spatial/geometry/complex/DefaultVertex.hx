package at.dotpoint.spatial.geometry.complex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.geometry.complex.DefaultVertexType;
import at.dotpoint.spatial.geometry.complex.DefaultVertexType.VertexTypeHelper;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexRepository;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class DefaultVertex implements IVertex<DefaultVertexType>
{

	//
	public var index:MeshIndexVertex;

	//
	private var data:Vector<ITensor>;
	private var indices:Vector<MeshIndexData>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new()
	{
		var size:Int = DefaultVertexType.createAll().length;

		this.data = new Vector<ITensor>( size );
		this.indices = new Vector<MeshIndexData>( size );

		//
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
	public function writeBytes( repository:VertexRepository<DefaultVertexType>, type:DefaultVertexType, index:Int = -1 ):Void
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
	public function readBytes( repository:VertexRepository<DefaultVertexType>, type:DefaultVertexType, index:Int = -1 ):Void
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
	public function getDataIndex( type:DefaultVertexType ):MeshIndexData
	{
		return this.indices[ type.getIndex() ];
	}

	//
	public function setDataIndex( type:DefaultVertexType, value:MeshIndexData ):MeshIndexData
	{
		return this.indices[ type.getIndex() ] = value;
	}

	//
	public function hasData( type:DefaultVertexType ):Bool
	{
		return this.getTensor( type ) != null;
	}

	//
	public function getData( type:DefaultVertexType ):Dynamic
	{
		return this.getTensor( type );
	}
	
	//
	public function setData( type:DefaultVertexType, data:Dynamic ):Void
	{
		this.setTensor( type, cast( data, ITensor ) );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getTensor<T:ITensor>( type:DefaultVertexType ):Null<T>
	{
		return cast this.data[ type.getIndex() ];
	}

	//
	public function setTensor<T:ITensor>( type:DefaultVertexType, value:T ):Null<T>
	{
		return cast this.data[ type.getIndex() ] = value;
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //

	public var position(get,set):Null<IVector3>;
	public var normal(get,set):Null<IVector3>;
	public var color(get,set):Null<IVector3>;
	public var uv(get, set):Null<IVector2>;

	/**
	 * VERTEX_POSITION
	 */
	private function get_position():Null<IVector3>
	{
		return this.getTensor( DefaultVertexType.POSITION );
	}

	private function set_position( value:Null<IVector3> ):Null<IVector3>
	{
		return this.setTensor( DefaultVertexType.POSITION, value );
	}

	/**
	 * VERTEX_NORMAL
	 */
	private function get_normal():Null<IVector3>
	{
		return this.getTensor( DefaultVertexType.NORMAL );
	}

	private function set_normal( value:Null<IVector3> ):Null<IVector3>
	{
		return this.setTensor( DefaultVertexType.NORMAL, value );
	}

	/**
	 * VERTEX_COLOR
	 */
	private function get_color():Null<IVector3>
	{
		return this.getTensor( DefaultVertexType.COLOR );
	}

	private function set_color( value:Null<IVector3> ):Null<IVector3>
	{
		return this.setTensor( DefaultVertexType.COLOR, value );
	}

	/**
	 * VERTEX_UV
	 */
	private function get_uv():Null<IVector2>
	{
		return this.getTensor( DefaultVertexType.UV );
	}

	private function set_uv( value:Null<IVector2> ):Null<IVector2>
	{
		return this.setTensor( DefaultVertexType.UV, value );
	}
}