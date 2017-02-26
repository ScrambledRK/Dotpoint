package at.dotpoint.spatial.geometry.complex.builder;

import at.dotpoint.datastructure.bytes.ByteLayoutType;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector2;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.complex.DefaultMeshFactory;
import at.dotpoint.spatial.geometry.complex.mesh.MeshData;
import at.dotpoint.spatial.geometry.complex.mesh.MeshSignature;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.Vertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexType;
import haxe.unit.TestCase;

using at.dotpoint.unit.TestCaseHelper;

/**
 * ...
 * @author RK
 */
class MeshBuilderTest extends TestCase 
{
	//
	private function getVec2( x:Float, y:Float ):IVector2
	{		
		return new Vector2( x, y );
	}
	
	//
	private function getVec3( x:Float, y:Float, z:Float ):IVector3
	{		
		return new Vector3( x, y, z );
	}
	
	//
	private function v( p:Array<IVector3>, u:Array<IVector2>, n:Array<IVector3>, pi:Int, ui:Int, ni:Int ):Vertex
	{
		var vertex:Vertex = new Vertex();
			vertex.position = p[pi];
			vertex.uv = u[ui];
			vertex.normal = n[ni];
			
		return vertex;
	}
	
	//
	private function createMeshBuilder():MeshBuilder<VertexType>
	{
		return new MeshBuilder<VertexType>( new DefaultMeshFactory() );
	}
	
	//
	private function createCube():MeshBuilder<VertexType>
	{
		var w:Float = Math.random() * 2;
		var h:Float = Math.random() * 2;
		var l:Float = Math.random() * 2;
		
		// ------------------ //
		// POSITION:
		
		var p:Array<IVector3> = new Array<IVector3>();
		
		p[0] = this.getVec3(-w, -h, -l );
		p[1] = this.getVec3(-w,  h, -l );
		p[2] = this.getVec3( w,  h, -l );
		p[3] = this.getVec3( w, -h, -l );
		
		p[4] = this.getVec3(-w, -h,  l );
		p[5] = this.getVec3( w, -h,  l );
		p[6] = this.getVec3( w,  h,  l );
		p[7] = this.getVec3(-w,  h,  l );
		
		// ------------------ //
		// UV:
		
		var u:Array<IVector2> = new Array<IVector2>();
		
		u[0] = this.getVec2( 1., 0. );
		u[1] = this.getVec2( 1., 1. );
		u[2] = this.getVec2( 0., 1. );
		u[3] = this.getVec2( 0., 0. );
		
		// ------------------ //
		// NORMAL:
		
		var n:Array<IVector3> = new Array<IVector3>();
		
		n[0] = this.getVec3( 0.,  0., -1. );
		n[1] = this.getVec3( 0.,  0.,  1. );
		n[2] = this.getVec3( 0., -1.,  0. );
		
		n[3] = this.getVec3( 1.,  0.,  0. );
		n[4] = this.getVec3( 0.,  1.,  0. );
		n[5] = this.getVec3(-1.,  0.,  0. );
		
		// ------------------ //
		// ------------------ //
		
		var builder:MeshBuilder<VertexType> = this.createMeshBuilder();
		
		builder.addVertices( [ v( p, u, n, 0,0,0 ), v( p, u, n, 1,1,0 ), v( p, u, n, 2,2,0 ) ] );
		builder.addVertices( [ v( p, u, n, 2,2,0 ), v( p, u, n, 3,3,0 ), v( p, u, n, 0,0,0 ) ] );
		
		builder.addVertices( [ v( p, u, n, 4,3,1 ), v( p, u, n, 5,0,1 ), v( p, u, n, 6,1,1 ) ] );
		builder.addVertices( [ v( p, u, n, 6,1,1 ), v( p, u, n, 7,2,1 ), v( p, u, n, 4,3,1 ) ] );
		
		builder.addVertices( [ v( p, u, n, 0,3,2 ), v( p, u, n, 3,0,2 ), v( p, u, n, 5,1,2 ) ] );
		builder.addVertices( [ v( p, u, n, 5,1,2 ), v( p, u, n, 4,2,2 ), v( p, u, n, 0,3,2 ) ] );
		
		builder.addVertices( [ v( p, u, n, 3,3,3 ), v( p, u, n, 2,0,3 ), v( p, u, n, 6,1,3 ) ] );
		builder.addVertices( [ v( p, u, n, 6,1,3 ), v( p, u, n, 5,2,3 ), v( p, u, n, 3,3,3 ) ] );
		
		builder.addVertices( [ v( p, u, n, 2,3,4 ), v( p, u, n, 1,0,4 ), v( p, u, n, 7,1,4 ) ] );
		builder.addVertices( [ v( p, u, n, 7,1,4 ), v( p, u, n, 6,2,4 ), v( p, u, n, 2,3,4 ) ] );
		
		builder.addVertices( [ v( p, u, n, 1,3,5 ), v( p, u, n, 0,0,5 ), v( p, u, n, 4,1,5 ) ] );
		builder.addVertices( [ v( p, u, n, 4,1,5 ), v( p, u, n, 7,2,5 ), v( p, u, n, 1,3,5 ) ] );
	
		return builder;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function testCubeBlocked()
	{
		var builder:MeshBuilder<VertexType> = this.createCube();
		
		// ------------------- //
		
		var mesh:MeshData<VertexType> = builder.buildMesh( ByteLayoutType.BLOCKED );
		var signature:MeshSignature<VertexType> = mesh.signature;
		
		// ------------------- //
		
		aEquals( 24, signature.numVertices, "num vertices" );
		aEquals( 12, signature.numTriangles, "num triangles" );
		
		aEquals( 8, signature.entries[ VertexType.POSITION.getIndex() ], "num positions" );
		aEquals( 4, signature.entries[ VertexType.UV.getIndex() ], 		 "num uvs" );
		aEquals( 6, signature.entries[ VertexType.NORMAL.getIndex() ], 	 "num normals" );
	}
	
	//
	public function testCubeInterleaved()
	{
		var builder:MeshBuilder<VertexType> = this.createCube();
		
		// ------------------- //
		
		var mesh:MeshData<VertexType> = builder.buildMesh( ByteLayoutType.INTERLEAVED );
		var signature:MeshSignature<VertexType> = mesh.signature;
		
		// ------------------- //
		
		aEquals( 24, signature.numVertices, "num vertices" );
		aEquals( 12, signature.numTriangles, "num triangles" );
		
		aEquals( 1, signature.entries[ VertexType.POSITION.getIndex() ], "num positions" );
		aEquals( 1, signature.entries[ VertexType.UV.getIndex() ], 		 "num uvs" );
		aEquals( 1, signature.entries[ VertexType.NORMAL.getIndex() ], 	 "num normals" );
	}
	
}