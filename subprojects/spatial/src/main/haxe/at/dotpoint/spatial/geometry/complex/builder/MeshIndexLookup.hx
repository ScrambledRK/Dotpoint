package at.dotpoint.spatial.geometry.complex.builder;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.spatial.geometry.complex.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.vertex.VertexType;
import haxe.ds.StringMap;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class MeshIndexLookup 
{
	private static var TRIANGLE(default,never):Int = 0;
	private static var VERTEX(default,never):Int = 1;
	private static var OFFSET(default, never):Int = 2;
	
	//
	private var types:Vector<VertexType>;
	
	//
	private var table:Vector<StringMap<Int>>;	
	private var indices:Vector<Int>;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new() 
	{
		this.types = Vector.fromArrayCopy( VertexType.createAll() );
		
		this.table = new Vector<StringMap<Int>>( this.types.length + OFFSET );
		this.indices = new Vector<Int>( this.types.length + OFFSET );
		
		//
		this.table[ TRIANGLE ] = new StringMap<Int>();
		this.table[ VERTEX ] = new StringMap<Int>();
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
	
	//
	public function setVertex( vertex:IVertex ):Void
	{
		for( j in 0...this.types.length )
		{
			var type:VertexType = this.types[j];
			
			if( vertex.hasData( type ) )
				vertex.setDataIndex( type, this.getDataIndex( vertex, type ) );			
		}
		
		vertex.index = this.getVertexIndex( vertex );
	}
	
	//
	private function getVertexIndex( vertex:IVertex ):Int
	{
		var table:StringMap<Int> = this.table[ VERTEX ];
		var signature:String = "";
		
		//		
		for( j in 0...this.types.length )
		{
			var type:VertexType = this.types[j];
			
			if( vertex.hasData( type ) )
				signature += Std.string( vertex.getDataIndex( type ) );		
		}
		
		//
		var index:Int = -1;
		
		if( !table.exists( signature ) )
		{
			index = this.indices[ VERTEX ]++;					
			table.set( signature, index );
		}
		else
		{
			index = table.get( signature ); 
		}
		
		return index;
	}
	
	//
	private function getDataIndex( vertex:IVertex, type:VertexType ):Int
	{
		var table:StringMap<Int> = this.getLookupTable( type );
		var signature:String = this.getLookupSignature( vertex.getData( type ) );
		
		//
		var index:Int = -1;
		
		if( !table.exists( signature ) )
		{
			index = this.indices[ type.getIndex() ]++;					
			table.set( signature, index );
		}
		else
		{
			index = table.get( signature ); 
		}
		
		return index;
	}
	
	// --------------------------------- //
	// --------------------------------- //

	/**
	 * returns the indexLookup-table from the given ID or creates on if necessary
	 */
	private function getLookupTable( type:VertexType ):StringMap<Int>
	{
		var index:Int = OFFSET + type.getIndex();
		
		if( this.table.get( index ) == null )
			this.table.set( index, new StringMap<Int>() );

		return this.table.get( index );
	}

	/**
	 * creates a signature-key for the indexLookup-table from the given data
	 */
	private function getLookupSignature( data:Dynamic ):String
	{
		if( Std.is( data, ITensor ) )
		{
			var tensor:ITensor = cast data;
			var signature:String = "";
			
			for( j in 0...tensor.getNumComponents() )
				signature += Std.string( tensor.getByIndex( j ) );
				
			return signature;
		}
		
		return Std.string( data );
	}
}