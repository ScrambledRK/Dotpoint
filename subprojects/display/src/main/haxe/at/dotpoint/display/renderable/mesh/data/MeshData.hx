package haxe.at.dotpoint.display.renderable.mesh.data;

import haxe.at.dotpoint.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.display.renderable.ARenderableData;
import haxe.at.dotpoint.display.renderable.mesh.data.IMeshData;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexRegister;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexTriangle;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexVertex;
import haxe.at.dotpoint.display.renderable.register.RegisterHelper;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.ds.StringMap;

//
// TODO: change to continous array instead of nested Array<Array<Int/Float>>
//

/**
 * 15.03.15
 * @author RK
 *
 * Storing MeshData like Vertex-Data (position, color, uv, etc) as well as a list of triangles
 * each composed of 3 vertices. To minimize the memory footprint data is stored in an wavefront
 * *.obj like way, checking for duplicated data and indexing vertex data itself, as well as the
 * vertex as a whole (used by the triangles)
 */
class MeshData extends ARenderableData<MeshSignature> implements IMeshData
{

	/**
	 * Triangle: 3 unique vertex indices
	 */
	private var triangleIndices:Array<Array<MeshIndexVertex>>;

	/**
	 * Vertex: multiple unique register data indices
	 */
	private var vertexIndices:Array<Array<MeshIndexRegister>>;

	/**
	 * RegisterData: float data used by vertices for each register type
	 */
	private var registerData:StringMap<Array<Array<Float>>>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

    public function new( ?name:String )
    {
		super( name );

	    this.triangleIndices	= new Array<Array<Int>>();
        this.vertexIndices      = new Array<Array<Int>>();
	    this.registerData       = new StringMap<Array<Array<Float>>>();
    }

    // ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * returns a current list of RegisterTypes used, number of (unique) vertices and triangles
	 */
	override private function calculateSignature():MeshSignature
	{
		var registers:Array<RegisterType> = new Array<RegisterType>();

		for( type in this.registerData.keys() )
		{
			var register:RegisterType = RegisterHelper.getTypeByID( type );

			if( register == null )
				throw "unknown register " + type;

			registers.push( register );
		}

		// -------------- //

		var numV:Int = this.vertexIndices.length;
		var numT:Int = this.triangleIndices.length;
		var numR:Int = registers.length;

		var signature:MeshSignature = new MeshSignature( numR, numV, numT );

		for( type in registers )
			signature.addRegisterType( type );

		// -------------- //

		return signature;
	}

	// ************************************************************************ //
	// Triangle
	// ************************************************************************ //

	/**
	 * adds and defines a triangle/face composed of 3 indices pointing to unique vertices.
	 * vertex indices are obtained when adding a vertex via addVertexIndex();
	 */
	public function addTriangleIndex( vertexIndices:Array<MeshIndexVertex> ):MeshIndexTriangle
	{
		return this.setTriangleIndex( vertexIndices, this.triangleIndices.length );
	}

	/**
	 * sets the given vertex composed of register indices into the vertexIndices on the
	 * given index. does not perform a unique index check, as its already assumed to be unique.
	 */
	public function setTriangleIndex( data:Array<MeshIndexVertex>, index:MeshIndexTriangle ):MeshIndexTriangle
	{
		if( this.isValidTriangle( data ) != null )
			throw "invalid vertex indices: " + this.isValidTriangle( data );

		this.triangleIndices[index] = data;
		this.lazyStatus = LazyStatus.INVALID;

		return index;
	}

	// ----------------------------------------- //
	// ----------------------------------------- //

	/**
	 * checks if the given register indices point to valid data
	 */
	private function isValidTriangle( data:Array<MeshIndexRegister> ):String
	{
		if( data.length != 3 )
			return "must provide 3 vertex indices";

		for( j in 0...3 )
		{
			if( this.vertexIndices[ data[j] ] == null )
				return "vertex index " + j + ": " + data[j] + " is invalid (null); vertex index is unknown";
		}

		return null;
	}

	// ************************************************************************ //
	// Vertex
	// ************************************************************************ //

	/**
	 * adds and defines a single vertex using the given register data indices. register data
     * indices are obtained when adding register data via addRegisterData(); you can later
     * use all the set vertices to compose a triangle using addTriangleIndex();
	 */
	public function addVertexIndex( registerIndices:Array<MeshIndexRegister> ):MeshIndexVertex
	{
		return this.setVertexIndex( registerIndices, this.vertexIndices.length );
	}

	/**
	 * sets the given vertex composed of register indices into the vertexIndices on the
	 * given index. does not perform a unique index check, as its already assumed to be unique.
	 */
	public function setVertexIndex( data:Array<MeshIndexRegister>, index:MeshIndexVertex ):MeshIndexVertex
	{
		if( this.isValidVertex( data ) != null )
			throw "invalid register indices: " + this.isValidVertex( data );

		this.vertexIndices[index] = data;
		this.lazyStatus = LazyStatus.INVALID;

		return index;
	}

	// ----------------------------------------- //
	// ----------------------------------------- //

	/**
	 * checks if the given register indices point to valid data
	 */
	private function isValidVertex( data:Array<MeshIndexRegister> ):String
	{
		var registers:Array<RegisterType> = this.calculateSignature().toArray();

		if( registers.length != data.length )
			return "must set register indices for all existing RegisterTypes (position, uv, etc)";

		// ------------ //

		for( j in 0...registers.length )
		{
			var type:String = registers[j].ID;
			var list:Array<Array<Float>> = this.registerData.get( type );

			if( list == null || list[ data[j] ] == null  )
				return "register index " + data[j] + " for given vertex is invalid; type: " + type + " is unknown";
		}

		return null;
	}

	// ************************************************************************ //
	// RegisterData
	// ************************************************************************ //

	/**
	 * adds a single register data of the given type. you can later use all the set register data
	 * to compose a vertex out of register data indices using addVertexIndex();
	 */
	public function addRegisterData( data:Array<Float>, type:RegisterType ):MeshIndexRegister
	{
		return this.setRegisterData( data, type, this.getRegisterList( type.ID ).length );
	}

	/**
	 * sets the given register data of the given register type in the correspondinge register list
	 * using the given index. does not perform a unique index check, as its already assumed to be unique.
	 */
	public function setRegisterData( data:Array<Float>, type:RegisterType, index:MeshIndexRegister ):MeshIndexRegister
	{
		if( this.isValidRegister( data, type ) != null )
			throw "invalid register data: " + this.isValidRegister( data, type );

		this.getRegisterList( type.ID )[index] = data;
		this.lazyStatus = LazyStatus.INVALID;

		return index;
	}

	// ----------------------------------------- //
	// ----------------------------------------- //

	/**
	 * checks if the given register indices point to valid data
	 */
	private function isValidRegister( data:Array<Float>, type:RegisterType ):String
	{
		if( data.length != type.size )
			return "must provide corret amount of data for RegisterType: " + type;

		return null;
	}

	/**
	 * returns the registerData-list from the given ID or creates on if necessary
	 */
	private function getRegisterList( ID:String ):Array<Array<Float>>
	{
		if( !this.registerData.exists( ID ) )
			 this.registerData.set( ID, new Array<Array<Float>>() );

		return this.registerData.get( ID );
	}

	// ************************************************************************ //
	// getIndex / getData
	// ************************************************************************ //

	/**
	 * returns the 3 vertex indices the given triangle is composed of (null if not found)
	 */
	public function getIndicesByTriangle( triangleIndex:MeshIndexTriangle ):Array<MeshIndexVertex>
	{
		return this.triangleIndices[ triangleIndex ];
	}

	/**
	 * returns the register indices the given vertex is composed of (null if not found)
	 */
	public function getIndicesByVertex( vertexIndex:MeshIndexVertex ):Array<MeshIndexRegister>
	{
		return this.vertexIndices[ vertexIndex ];
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 * returns the set register data of the given index and type (null if not found)
	 */
	public function getRegisterData( registerIndex:MeshIndexRegister, type:RegisterType ):Array<Float>
	{
		var list:Array<Array<Float>> = this.registerData.get( type.ID );

		if( list == null )
			return null;

		return list[ registerIndex ];
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 *
	 */
	public function toString():String
	{
		return "[MeshData: " + this.signature + "]";
	}

}
