package at.dotpoint.spatial.geometry.complex.mesh.face;

import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexTriangle;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.mesh.face.FaceType.FaceTypeHelper;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class Face implements IFace
{
	//
	public var size(get, null):Int;
	
	//
	public var index:MeshIndexTriangle;
	public var type:Int;
	
	//
	private var data:Vector<MeshIndexVertex>;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?type:Int )
	{
		if( type == null )
			type = FaceType.TRIANGLE;

		this.data = new Vector<MeshIndexVertex>( FaceTypeHelper.getNumVertices( type ) );	
		this.type = type;
		
		//
		this.clear();
	}

	//
	public function clear():Void
	{
		this.index = -1;

		for ( j in 0...this.data.length )
			this.data[j] = -1;		
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
	public function writeBytes( repository:FaceRepository, type:Int, index:Int = -1 ):Void
	{
		var index:Int = index < 0 ? this.index: index;

		if( index < 0 || !this.hasData( type ) )
			return;

		//
		repository.writeInteger( index, type, this.data, 0 );
	}

	/**
	 * use the given bytes repository data to store its values into this byte collection internal data representation
	 *
	 * @param	repository source to read the internal data of the given type from
	 * @param	type kind of data to store
	 * @param 	index position to write the data to, may need to use internal information and not provided one
	 */
	public function readBytes( repository:FaceRepository, type:Int, index:Int = -1 ):Void
	{
		var index:Int = index < 0 ? this.index : index;

		if( index < 0 || this.type != type )
			return;

		//
		repository.readInteger( index, type, this.data, 0 );
	}	
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function get_size():Int
	{
		return FaceTypeHelper.getNumVertices( this.type );
	}
	
	//
	public function getVertexIndex( index:Int ):MeshIndexVertex
	{
		return this.data[ index ];
	}

	//
	public function setVertexIndex( index:Int, value:MeshIndexVertex ):MeshIndexVertex
	{
		return this.data[ index ] = value;
	}

	//
	public function hasData( type:Int ):Bool
	{
		if( type == this.type )
		{
			for( j in 0...this.data.length )
			{
				if( this.data[j] < 0 )
					return false;
			}
			
			return true;
		}
		
		//
		return false;
	}	

}