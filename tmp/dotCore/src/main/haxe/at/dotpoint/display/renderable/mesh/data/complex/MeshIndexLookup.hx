package haxe.at.dotpoint.display.renderable.mesh.data.complex;

import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexRegister;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexTriangle;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexVertex;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.ds.StringMap;

/**
 * 22.03.15
 * @author RK
 */
class MeshIndexLookup
{
	/**
	 * fake RegisterType.ID used in the indexLookup for triangleIndices
	 */
	private static var TYPE_TRIANGLE(default,null):String   = "MDC_TYPE_TRIANGLE_INDEX";
	/**
	 * fake RegisterType.ID used in the indexLookup for VertexIndices
	 */
	private static var TYPE_VERTEX(default,null):String     = "MDC_TYPE_VERTEX_INDEX";

	// -------------- //

	/**
	 * Index-Lookup: indices for each register type, vertex and triangle signature
	 */
	public var indexLookup:StringMap<StringMap<Int>>;

	/**
	 * Register-Types always added, regardless of already existing
	 */
	public var ignoreLookup:Array<RegisterType>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

    public function new()
    {
        this.indexLookup = new StringMap<StringMap<Int>>();
		this.ignoreLookup = new Array<RegisterType>();
    }

    // ************************************************************************ //
	// Triangle
	// ************************************************************************ //

	/**
	 *
	 */
	public function getTriangleIndex( vertexIndices:Array<MeshIndexVertex> ):MeshIndexTriangle
	{
		return this.getIndex( TYPE_TRIANGLE, vertexIndices );
	}

	/**
	 *
	 */
	public function setTriangleIndex( vertexIndices:Array<MeshIndexVertex>, index:MeshIndexTriangle ):MeshIndexTriangle
	{
		return this.setIndex( TYPE_TRIANGLE, vertexIndices, index );
	}

    // ************************************************************************ //
	// Vertex
	// ************************************************************************ //

	/**
	 *
	 */
	public function getVertexIndex( registerIndices:Array<MeshIndexRegister> ):MeshIndexVertex
	{
		return this.getIndex( TYPE_VERTEX, registerIndices );
	}

	/**
	 *
	 */
	public function setVertexIndex( registerIndices:Array<MeshIndexRegister>, index:MeshIndexVertex ):MeshIndexVertex
	{
		return this.setIndex( TYPE_VERTEX, registerIndices, index );
	}

    // ************************************************************************ //
	// Register
	// ************************************************************************ //

	/**
	 * searches for a register index composed of the given data (-1 if not found)
	 */
	public function getRegisterIndex( data:Array<Float>, type:RegisterType ):MeshIndexRegister
	{
		if( !this.isIgnoreRegisterType( type ) )
			return this.getIndex( type.ID, data );

		return -1;
	}

	/**
	 * sets the given register data of the given register type in the correspondinge register list
	 * using the given index. if the index is -1, it will pushed to the end. the new length of the
	 * register list is returned. also adds the given data to the lookup table, does not perform a
	 * unique check, as its already assumed to be unique.
	 */
	public function setRegisterIndex( data:Array<Float>, type:RegisterType, index:MeshIndexRegister ):MeshIndexRegister
	{
		if( !this.isIgnoreRegisterType( type ) )
			return this.setIndex( type.ID, data, index );

		return index;
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function isIgnoreRegisterType( type:RegisterType ):Bool
	{
		for( ignore in this.ignoreLookup )
		{
			if( ignore.ID == type.ID )
				return true;
		}

		return false;
	}

	/**
	 *
	 */
	inline private function getIndex( ID:String, data:Array<Dynamic> ):Int
	{
		var lookup:StringMap<Int>   = this.getLookupTable( ID );
		var signature:String 		= this.getLookupSignature( data );

		if( lookup.exists( signature ) )	// data not unique, already stored
		{
			return lookup.get( signature );	// index to stored data
		}

		return -1;
	}

	inline private function setIndex( ID:String, data:Array<Dynamic>, index:Int ):Int
	{
		var lookup:StringMap<Int> = this.getLookupTable( ID );
			lookup.set( this.getLookupSignature( data ), index );

		return index;
	}

	// --------------------------------- //
	// --------------------------------- //

	/**
	 * returns the indexLookup-table from the given ID or creates on if necessary
	 */
	inline private function getLookupTable( ID:String ):StringMap<Int>
	{
		if( !this.indexLookup.exists( ID ) )
			 this.indexLookup.set( ID, new StringMap<Int>() );

		return this.indexLookup.get( ID );
	}

	/**
	 * creates a signature-key for the indexLookup-table from the given data
	 */
	inline private function getLookupSignature( data:Array<Dynamic> ):String
	{
		return data.join("_");
	}

}
