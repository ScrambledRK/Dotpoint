package haxe.at.dotpoint.display.renderable.mesh.data.complex;

import haxe.at.dotpoint.display.renderable.mesh.data.IMeshData;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshSignature;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexRegister;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexTriangle;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexVertex;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;

/**
 * 21.03.15
 * @author RK
 */
class ComplexMeshData
{

	/**
	 *
	 */
	public var mesh:IMeshData;

	/**
	 *
	 */
	public var lookup:MeshIndexLookup;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

    public function new( mesh:IMeshData, ?lookup:MeshIndexLookup )
    {
       this.mesh = mesh;
	   this.lookup = lookup;
    }

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	indices
	 */
	public function addTriangleByVertexIndices( indices:Array<MeshIndexVertex> ):MeshIndexTriangle
	{
		var signature:MeshSignature = this.mesh.signature;

		var size:Int 	= signature.numRegisters;
		var length:Int 	= indices.length;

		// ----------- //

		var face:Array<Int> = new Array<Int>();

		for( v in 0...3 )
		{
			var start:Int = v * size;
			var vertex:Array<Int> = indices.slice( start, start + size );

			face[v] = this.mesh.addVertexIndex( vertex );
		}

		return this.mesh.addTriangleIndex( face );
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //
	// TriangleList:

	/**
	 * adds a set of triangles composed of vertices and its data and returns for each
	 * given triangle its unique index. duplicating triangles share the same index.
	 */
	public function addMeshTriangleList( triangles:Array<MeshTriangle> ):Array<MeshIndexTriangle>
	{
		var list:Array<Int> = new Array<Int>();

		for( f in 0...triangles.length )
		{
			list[f] = this.addMeshTriangle( triangles[f] );
		}

		return list;
	}

	/**
	 * sets a set of triangles composed of vertices and its data and returns for each
	 * given triangle its unique index. duplicating triangles share the same index.
	 */
	public function setMeshTriangleList( triangles:Array<MeshTriangle> ):Array<MeshIndexTriangle>
	{
		var list:Array<Int> = new Array<Int>();

		for( f in 0...triangles.length )
		{
			list[f] = this.setMeshTriangle( triangles[f] );
		}

		return list;
	}

	/**
	 * returns a list of all triangles composed of vertices and its data. each vertex is its own
	 * vertex object, regardless of duplicates but you can use their vertex index to determine
	 * their uniquenes.
	 */
	public function getMeshTriangleList():Array<MeshTriangle>
	{
		var list:Array<MeshTriangle> = new Array<MeshTriangle>();
		var signature:MeshSignature = this.mesh.signature;

		for( f in 0...signature.numTriangles )
		{
			list[f] = this.getMeshTriangle( f );
		}

		return list;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //
	// Triangle

	/**
	 * adds a single triangle composed of vertices and its data and returns its unique
	 * triangle index. duplicating triangles are not added and return the already set index.
	 */
	public function addMeshTriangle( triangle:MeshTriangle ):MeshIndexTriangle
	{
		var face:Array<MeshIndexVertex> = new Array<MeshIndexVertex>();
			face[0] = this.addMeshVertex( triangle.v1 );
			face[1] = this.addMeshVertex( triangle.v2 );
			face[2] = this.addMeshVertex( triangle.v3 );

		return this.mesh.addTriangleIndex( face );
	}

	/**
	 * sets a single triangle composed of vertices and its data and returns its unique
	 * triangle index. duplicating triangles are not added and return the already set index.
	 */
	public function setMeshTriangle( triangle:MeshTriangle ):MeshIndexTriangle
	{
		if( triangle.index <= -1 )
			throw "unset triangle index";

		var face:Array<MeshIndexVertex> = new Array<MeshIndexVertex>();
			face[0] = this.setMeshVertex( triangle.v1 );
			face[1] = this.setMeshVertex( triangle.v2 );
			face[2] = this.setMeshVertex( triangle.v3 );

		return this.mesh.setTriangleIndex( face, triangle.index );
	}

	/**
	 * searches for the given triangle and returns a triangle composed of vertices and
	 * its data or null if none is found.
	 */
	public function getMeshTriangle( triangleIndex:MeshIndexTriangle ):MeshTriangle
	{
		var face:Array<MeshIndexVertex> = this.mesh.getIndicesByTriangle( triangleIndex );

		if( face == null )
			throw "index " + triangleIndex + " is not a valid faceIndex";

		var triangle:MeshTriangle = new MeshTriangle();
			triangle.v1 = this.getMeshVertex( face[0] );
			triangle.v2 = this.getMeshVertex( face[1] );
			triangle.v3 = this.getMeshVertex( face[2] );
			triangle.index = triangleIndex;

		return triangle;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //
	// VertexList

	/**
	 * adds a set of vertices and its register data and returns for each vertex its
	 * unique index. duplicating vertices share the same index (and are not set)
	 */
	public function addMeshVertexList( vertices:Array<MeshVertex> ):Array<MeshIndexVertex>
	{
		var list:Array<Int> = new Array<Int>();

		for( v in 0...vertices.length )
		{
			list[v] = this.addMeshVertex( vertices[v] );
		}

		return list;
	}

	/**
	 * sets a set of vertices and its register data and returns for each vertex its
	 * unique index. duplicating vertices share the same index (and are not set)
	 */
	public function setMeshVertexList( vertices:Array<MeshVertex> ):Array<MeshIndexVertex>
	{
		var list:Array<Int> = new Array<Int>();

		for( v in 0...vertices.length )
		{
			list[v] = this.setMeshVertex( vertices[v] );
		}

		return list;
	}

	/**
	 * returns a list of all vertices composed of its register data. each vertex is
	 * unique regardless of beeing used in multiple triangles.
	 */
	public function getMeshVertexList():Array<MeshVertex>
	{
		var list:Array<MeshVertex> = new Array<MeshVertex>();
		var signature:MeshSignature = this.mesh.signature;

		for( j in 0...signature.numVertices )
		{
			list[j] = this.getMeshVertex( j );
		}

		return list;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //
	// Vertex:

	/**
	 * adds a single vertex composed of its register data and returns its unique
	 * vertex index. duplicated vertices are not added and return the already set index.
	 */
	public function addMeshVertex( vertex:MeshVertex ):MeshIndexVertex
	{
		var signature:MeshSignature = this.mesh.signature;

		if( vertex.registers.length != signature.numRegisters && signature.numRegisters > 0 )
			throw "vertex registerData does not match current registers";

		// ------------- //

		var rIndices:Array<MeshIndexRegister> = new Array<MeshIndexRegister>();

		for( j in 0...vertex.registers.length )
		{
			rIndices[j] = this.addMeshRegisterData( vertex.registers[j] );
		}

		return this.mesh.addVertexIndex( rIndices );
	}

	/**
	 * sets a single vertex composed of its register data and returns its unique
	 * vertex index. duplicated vertices are not added and return the already set index.
	 */
	public function setMeshVertex( vertex:MeshVertex ):MeshIndexVertex
	{
		var signature:MeshSignature = this.mesh.signature;

		if( vertex.registers.length != signature.numRegisters && signature.numRegisters > 0 )
			throw "vertex registerData does not match current registers";

		if( vertex.index <= -1 )
			throw "unset vertex index";

		// ------------- //

		var rIndices:Array<MeshIndexRegister> = new Array<MeshIndexRegister>();

		for( j in 0...vertex.registers.length )
		{
			rIndices[j] = this.setMeshRegisterData( vertex.registers[j] );
		}

		return this.mesh.setVertexIndex( rIndices, vertex.index );
	}

	/**
	 * searches for the given vertex and returns a vertex composed of register data
	 * or null if none is found.
	 */
	public function getMeshVertex( vertexIndex:MeshIndexVertex ):MeshVertex
	{
		var rIndices:Array<MeshIndexRegister> = this.mesh.getIndicesByVertex( vertexIndex );

		if( rIndices == null )
			throw "index " + vertexIndex + " is not a valid registerIndex";

		// ------------- //

		var signature:MeshSignature = this.mesh.signature;

		if( signature.numRegisters != rIndices.length )
			throw "vertex registers do not match this.mesh registers";

		// ------------- //

		var vertex:MeshVertex = new MeshVertex();
			vertex.index = vertexIndex;

		for( j in 0...signature.numRegisters )
		{
			var rType:RegisterType 			= signature.getRegisterTypeByIndex( j );
			var rIndex:MeshIndexRegister    = rIndices[j];

			vertex.registers[j] = this.getMeshRegisterData( rIndex, rType );
		}

		// ------------- //

		return vertex;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //
	// Register:

	/**
	 * adds a single register composed of its float data and returns its unique
	 * register index (within the register type) duplicated data is not added and return the already set index.
	 */
	public function addMeshRegisterData( register:MeshRegisterData ):MeshIndexRegister
	{
		return this.mesh.addRegisterData( register.data, register.type );
	}

	/**
	 * adds a single register composed of its float data and returns its unique
	 * register index (within the register type) duplicated data is not added and return the already set index.
	 */
	public function setMeshRegisterData( register:MeshRegisterData ):MeshIndexRegister
	{
		if( register.index <= -1 )
			throw "unset register data index";

		return this.mesh.setRegisterData( register.data, register.type, register.index );
	}

	/**
	 * searches for the given register and returns a register composed of register data, its index and type
	 * or null if none is found.
	 */
	public function getMeshRegisterData( registerIndex:MeshIndexRegister, type:RegisterType ):MeshRegisterData
	{
		var signature:MeshSignature = this.mesh.signature;

		var register:MeshRegisterData = new MeshRegisterData();
			register.index = registerIndex;
			register.type  = type;
			register.data  = this.mesh.getRegisterData( register.index, register.type );

		if( register.data == null )
			return null;

		return register;
	}

}
