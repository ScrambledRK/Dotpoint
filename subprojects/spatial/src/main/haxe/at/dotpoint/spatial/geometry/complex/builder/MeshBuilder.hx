package at.dotpoint.spatial.geometry.complex.builder;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.spatial.geometry.complex.mesh.MeshData;
import at.dotpoint.spatial.geometry.complex.mesh.MeshSignature;
import at.dotpoint.spatial.geometry.complex.mesh.face.Face;
import at.dotpoint.spatial.geometry.complex.mesh.face.FaceType;
import at.dotpoint.spatial.geometry.complex.mesh.face.IFace;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertexData;
import haxe.ds.Vector;

// TODO: vertex data will be set multiple times in case it is not unique (vertices and faces not, but vertex data)

/**
 * ...
 * @author RK
 */
class MeshBuilder
{

	//
	private var lookup:MeshIndexLookup;
	private var factory:IMeshFactory;
	
	//
	private var vertex:Array<IVertex>;
	private var face:Array<IFace>;
	
	//
	private var entriesData:Vector<Int>;
	private var entriesVertex:Int;
	private var entriesFace:Int;
	
	//
	private var queueV:Array<IVertex>;	
	private var queueD:Array<IVertexData>;	
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	public function new( factory:IMeshFactory ) 
	{
		this.lookup = new MeshIndexLookup( factory.getTypesSize() );
		this.factory = factory;
		
		this.vertex = new Array<IVertex>();
		this.face = new Array<IFace>();
		
		this.entriesData = new Vector<Int>( factory.getTypesSize() );
		
		for( j in 0...this.entriesData.length )
			this.entriesData[j] = -1;
		
		this.entriesVertex = -1;
		this.entriesFace = -1;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function buildMesh( ?layout:ByteLayoutType ):MeshData
	{
		var signature:MeshSignature = this.createSignature( layout );
		var mesh:MeshData = new MeshData( signature );
		
		for( v in 0...this.vertex.length )
		{
			if( this.vertex[v] != null )
				mesh.setVertex( this.vertex[v] );
		}
			
		for( f in 0...this.face.length )
		{
			if( this.face[f] != null )	
				mesh.setFace( this.face[f] );
		}
			
		return mesh;
	}
	
	//
	private function createSignature( ?layout:ByteLayoutType ):MeshSignature
	{
		if( layout == null )
			layout = ByteLayoutType.BLOCKED;
		
		//	
		var numVertices:Int = this.entriesVertex + 1;	
		var numFaces:Int = this.entriesFace + 1;	
		
		//	
		var signature:MeshSignature = new MeshSignature( this.factory.getTypesSize(), numVertices, numFaces, layout );
		
		for( j in 0...this.entriesData.length )
		{
			var numEntries:Int = this.entriesData[j] + 1;
			
			if( numEntries > 0 )
			{
				var format:ByteFormat = this.factory.getByteFormat( j );				
				signature.vertex.setFormat( j, format, numEntries );
			}				
		}
		
		return signature;
	}
	
	// ************************************************************************ //
	// VERTEX
	// ************************************************************************ //			
	
	/**
	 * stores the given data for a single vertex so you can later build a vertex with it.
	 * @param	vertex
	 */
	public function queueVerticesData( data:Iterable<IVertexData> ):Void
	{
		for( v in data )
			this.queueVertexData( v.type, v.getData() );
	}
	
	/**
	 * stores the given data for a single vertex so you can later build a vertex with it.
	 * @param	vertex
	 */
	public function queueVertexData( type:Int, data:Dynamic ):Void
	{
		if( this.queueD == null )
			this.queueD = new Array<IVertexData>();
		
		var vdata:IVertexData = this.factory.createVertexData();
			vdata.setData( data );
			vdata.type = type;
			
		this.queueD.push( vdata );
	}
	
	/**
	 * builds a vertex consuming all previously queued data
	 * @return true - vertex was unique, false already existing vertex
	 */
	public function buildVertex():Bool
	{
		if( this.queueD == null )
			throw "cannot build a vertex without any queued data";
			
		//	
		var vertex:IVertex = this.factory.createVertex();			
		
		for( v in this.queueD )		
			vertex.setData( v.type, v.getData() );
		
		this.queueD = null;
			
		//	
		return this.addVertex( vertex );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	/**
	 * adds given vertices and its data and builds a face immediatly 
	 * 
	 * @param	vertices
	 * @return true - face was unique, false already existing face
	 */
	public function addVertices( vertices:Iterable<IVertex> ):Bool
	{
		for( v in vertices )
			this.queueVertex( v );
			
		return this.buildFace();
	}	
	
	/**
	 * adds a vertex and all its data (immediatly "building" it)
	 * 
	 * @param	vertex
	 * @return true - vertex was unique, false already existing vertex
	 */
	public function addVertex( vertex:IVertex ):Bool
	{
		this.lookup.setVertex( vertex );				
		
		//
		for( j in 0...this.entriesData.length )
		{
			if( vertex.hasData( j ) )
			{
				var index:Int = vertex.getDataIndex( j );
				
				if( index > this.entriesData[j] )
					this.entriesData[j] = index;
			}	
		}
		
		//
		if( this.vertex[ vertex.index ] == null )
		{
			this.vertex[ vertex.index ] = vertex;
			
			if( vertex.index > this.entriesVertex )
				this.entriesVertex = vertex.index;
			
			return true;
		}
		
		return false;
	}
	
	// ************************************************************************ //
	// FACE
	// ************************************************************************ //	
	
	/**
	 * stores given vertices so you can later build a face with it.	 * 
	 * @param	vertex
	 */
	public function queueVertices( vertices:Iterable<IVertex> ):Void
	{
		for( v in vertices )
			this.queueVertex( v );
	}
	
	/**
	 * stores a given vertex so you can later build a face with it.	 * 
	 * @param	vertex
	 */
	public function queueVertex( vertex:IVertex ):Void
	{
		if( this.queueV == null )
			this.queueV = new Array<IVertex>();
		
		this.queueV.push( vertex );
	}
	
	/**
	 * builds a face consuming all previously queued vertices
	 * @return true - face was unique, false already existing face
	 */
	public function buildFace():Bool
	{
		if( this.queueV == null )
			throw "cannot build a face without any queued vertices";
		
		for( j in 0...this.queueV.length )		
			this.addVertex( this.queueV[j] );
		
		//
		var type:Int = FaceTypeHelper.getType( this.queueV.length );
		
		if( type == -1 )
			throw "cannot add " + this.queueV.length + " vertices as no valid face type is available";
			
		//	
		var face:IFace = new Face( type );			
		
		for( j in 0...this.queueV.length )		
			face.setVertexIndex( j, this.queueV[j].index );
		
		this.queueV = null;
			
		//	
		return this.addFace( face );
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	/**
	 * adds a face and its vertex indices (immediatly "building" it)
	 * 
	 * @param	face
	 * @return true - face was unique, false already existing face
	 */
	public function addFace( face:IFace ):Bool
	{
		this.lookup.setFace( face );	
		
		if( this.face[ face.index ] == null )
		{
			this.face[ face.index ] = face;
			
			if( face.index > this.entriesFace )
				this.entriesFace = face.index;
			
			return true;
		}		
		
		return false;
	}
}