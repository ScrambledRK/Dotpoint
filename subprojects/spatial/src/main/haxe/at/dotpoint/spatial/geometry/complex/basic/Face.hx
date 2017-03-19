package at.dotpoint.spatial.geometry.complex.basic;

import at.dotpoint.spatial.geometry.complex.basic.FaceType;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexTriangle;
import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexVertex;
import at.dotpoint.spatial.geometry.complex.mesh.face.FaceCollection;
import at.dotpoint.spatial.geometry.complex.mesh.face.FaceSignature;
import at.dotpoint.spatial.geometry.complex.mesh.face.IFace;
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
	public function new( index:Int = -1, ?type:Int )
	{
		if( type == null )
			type = FaceType.TRIANGLE;

		this.data = new Vector<MeshIndexVertex>( FaceType.getNumVertices( type ) );	
		this.type = type;
		
		//
		this.clear( index );
	}

	//
	public function clear( index:Int = -1 ):Void
	{
		this.index = index;

		for ( j in 0...this.data.length )
			this.data[j] = -1;		
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
	public function writeBytes( repository:FaceCollection ):Void
	{
		var signature:FaceSignature = repository.signature;
		
		if( this.checkFace( signature ) != null )
			throw this.checkFace( signature );
			
		//
		repository.setIndices( this.index, this.type, this.data );
	}

	/**
	 * use the given bytes repository data to store its values into this byte collection internal data representation  
	 * be horrible careful, you can easily destroy the whole repository!
	 * 
	 * @param	repository source to read the internal data from
	 */
	public function readBytes( repository:FaceCollection ):Void
	{
		var signature:FaceSignature = repository.signature;
		
		if( this.checkFace( signature, true ) != null )
			throw this.checkFace( signature, true );
			
		//
		this.clear();
			
		//
		repository.getIndices( this.index, this.type, this.data );
	}	
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	private function checkFace( signature:FaceSignature, isReadOnly:Bool = false ):String
	{
		//
		if( this.index < 0 || this.index > signature.numTriangles )
			return "given face index out of bounds: " + this.index + " of " + signature.numTriangles;

		if( isReadOnly )
			return null;
			
		//
		for( j in 0...this.size )
		{
			var vindex:Int = this.getVertexIndex( j );

			if( vindex < 0 || vindex > signature.numVertices )
				return "vertex index out of bounds: " + vindex + " of " + signature.numVertices;
		}
		
		return null;
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function get_size():Int
	{
		return FaceType.getNumVertices( this.type );
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