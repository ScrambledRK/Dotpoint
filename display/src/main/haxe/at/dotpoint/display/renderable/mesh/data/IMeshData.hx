package haxe.at.dotpoint.display.renderable.mesh.data;

import haxe.at.dotpoint.display.renderable.IRenderable.IRenderableData;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexRegister;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexTriangle;
import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexVertex;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;

/**
 * 14.03.15
 * @author RK
 */

interface IMeshData extends IRenderableData<MeshSignature>
{

	/**
	 * adds and defines a triangle/face composed of 3 indices pointing to unique vertices.
	 * vertex indices are obtained when adding a vertex via addVertexIndex();
	 */
	public function addTriangleIndex( vertexIndices:Array<MeshIndexVertex> ):MeshIndexTriangle;

	//
	public function setTriangleIndex( data:Array<MeshIndexVertex>, index:MeshIndexTriangle ):MeshIndexTriangle;

	/**
	 * adds and defines a single vertex using the given register data indices. register data
     * indices are obtained when adding register data via addRegisterData(); you can later
     * use all the set vertices to compose a triangle using addTriangleIndex();
	 */
	public function addVertexIndex( registerIndices:Array<MeshIndexRegister> ):MeshIndexVertex;

	//
	public function setVertexIndex( data:Array<MeshIndexRegister>, index:MeshIndexVertex ):MeshIndexVertex;

	/**
	 * adds a single register data of the given type. you can later use all the set register data
	 * to compose a vertex out of register data indices using addVertexIndex();
	 */
	public function addRegisterData( data:Array<Float>, type:RegisterType ):MeshIndexRegister;

	//
	public function setRegisterData( data:Array<Float>, type:RegisterType, index:MeshIndexRegister ):MeshIndexRegister;

	// ************************************************************************ //
	// getIndex / getData
	// ************************************************************************ //

	/**
	 * returns the 3 vertex indices the given triangle is composed of (null if not found)
	 */
	public function getIndicesByTriangle( triangleIndex:MeshIndexTriangle ):Array<MeshIndexVertex>;

	/**
	 * returns the register indices the given vertex is composed of (null if not found)
	 */
	public function getIndicesByVertex( vertexIndex:MeshIndexVertex ):Array<MeshIndexRegister>;

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 * returns the set register data of the given index and type (null if not found)
	 */
	public function getRegisterData( registerIndex:MeshIndexRegister, type:RegisterType ):Array<Float>;

}

