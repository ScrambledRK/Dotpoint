package at.dotpoint.spatial.geometry.complex.basic;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.geometry.complex.basic.VertexType;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexData;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexCollection;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexRepository;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexSignature;
import haxe.ds.Vector;
import haxe.io.Bytes;

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
	private var indices:Vector<MeshIndexData>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( index:Int = -1 )
	{
		var size:Int = VertexType.getTypeSize();

		this.data = new Vector<ITensor>( size );
		this.indices = new Vector<MeshIndexData>( size );

		//
		this.clear( index );
	}

	//
	public function clear( index:Int = -1 ):Void
	{
		this.index = index;

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
	 * be horrible careful, you can easily destroy the whole repository!
	 * 
	 * @param	repository target to store the internal data into
	 */
	public function writeBytes( repository:VertexCollection ):Void
	{		
		var signature:VertexSignature = repository.signature;
		
		if( this.checkVertex( signature ) != null )
			throw this.checkVertex( signature );
		
		//
		for ( j in 0...signature.size )
		{
			if ( signature.entries[j] > 0 )
			{
				var vindex:Int = this.getDataIndex( j );
				
				repository.setIndex( this.index, j, vindex );
				repository.setDataTensor( vindex, j, this.getData( j ) );
			}
		}	
	}

	/**
	 * use the given bytes repository data to store its values into this byte collection internal data representation  
	 * be horrible careful, you can easily destroy the whole repository!
	 * 
	 * @param	repository source to read the internal data from
	 */
	public function readBytes( repository:VertexCollection ):Void
	{		
		var signature:VertexSignature = repository.signature;

		if( this.checkVertex( signature, true ) != null )
			throw this.checkVertex( signature, true );
			
		//
		this.clear( this.index );
		
		for ( j in 0...signature.size )
		{
			if ( signature.entries[j] > 0 )
			{
				var output:ITensor = VertexType.createTensor( j );
				var vindex:Int = repository.getIndex( this.index, j );								
				
				repository.getDataTensor( vindex, j, output );
				
				this.setTensor( j, output );	
				this.setDataIndex( j, vindex );
			}
		}
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function checkVertex( signature:VertexSignature, isReadOnly:Bool = false ):String
	{
		//
		if( this.index < 0 || this.index > signature.numVertices )
			return "given vertex index out of bounds: " + this.index + " of " + signature.numVertices;

		if( isReadOnly )
			return null;
			
		//
		for( j in 0...signature.size )
		{
			var numEntries:Int = signature.entries[j];
			var maxEntries:Int = signature.layout == ByteLayoutType.BLOCKED ? numEntries : signature.numVertices;

			if( numEntries > 0 )
			{
				//
				if( !this.hasData( j ) )
					return "vertex data missing for " + j;

				//
				var dindex:Int = this.getDataIndex( j );

				if( dindex < 0 || dindex > maxEntries )
					return "vertex data index out of bounds: " + dindex + " of " + maxEntries;
			}
		}
		
		//
		return null;
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getDataIndex( type:Int ):MeshIndexData
	{
		return this.indices[ type ];
	}

	//
	public function setDataIndex( type:Int, value:MeshIndexData ):MeshIndexData
	{
		return this.indices[ type ] = value;
	}

	//
	public function hasData( type:Int ):Bool
	{
		return this.getTensor( type ) != null;
	}

	//
	public function getData( type:Int ):Dynamic
	{
		return this.getTensor( type );
	}
	
	//
	public function setData( type:Int, data:Dynamic ):Void
	{
		this.setTensor( type, cast( data, ITensor ) );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getTensor<T:ITensor>( type:Int ):Null<T>
	{
		return cast this.data[ type ];
	}

	//
	public function setTensor<T:ITensor>( type:Int, value:T ):Null<T>
	{
		return cast this.data[ type ] = value;
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