package at.dotpoint.spatial.geometry.complex;
import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.spatial.geometry.complex.index.IndexData;
import at.dotpoint.spatial.geometry.complex.index.IndexLookup;
import at.dotpoint.spatial.geometry.complex.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexData;

/**
 * ...
 * @author RK
 */
class MeshData 
{

	//
	public var signature(default,null):MeshSignature;
	
	private var vertex:VertexData;
	private var index:IndexData;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( signature:MeshSignature ) 
	{
		this.signature = signature;
		
		this.vertex = new VertexData( signature );
		this.index = new IndexData( signature );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function addVertex( vertex:IVertex, ?lookup:IndexLookup ):Void
	{
		if( this.signature.layout == ByteLayoutType.BLOCKED && lookup == null )
			throw "must provide index lookup instance for BLOCKED mesh data";
		
		if( lookup != null )
			this.lookup.setVertex( vertex );
			
		return this.setVertex( vertex );
	}
	
	//
	public function setVertex( vertex:IVertex ):Void
	{
		return this.vertex.setVertex( vertex );
	}
	
	//
	public function getVertex( index:Int, ?output:IVertex ):IVertex
	{
		return this.vertex.getVertex( index, output );
	}
}