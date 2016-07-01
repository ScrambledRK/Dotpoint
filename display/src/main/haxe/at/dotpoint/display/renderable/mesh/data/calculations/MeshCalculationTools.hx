package haxe.at.dotpoint.display.renderable.mesh.calculations;

import haxe.at.dotpoint.display.renderable.mesh.IMeshData;
import haxe.at.dotpoint.display.renderable.mesh.complex.MeshEditingTools;
import haxe.at.dotpoint.display.renderable.mesh.complex.MeshTriangle;
import haxe.at.dotpoint.display.renderable.mesh.complex.MeshVertex;
import haxe.at.dotpoint.display.renderable.mesh.SharedVertexPolicy;
import haxe.at.dotpoint.math.geom.Cube;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * 21.03.15
 * @author RK
 */
class MeshCalculationTools
{

	/**
	 *
	 * @param	mesh
	 * @param	policy
	 */
	public static function recalculateNormals( mesh:IMeshData, policy:SharedVertexPolicy ):Void
	{
		MeshEditingTools.setMeshTriangleList( mesh, MeshCalculationTools.calculateNormals( mesh, policy ) );
	}

	/**
	 * calculates the normal for each vertex using the triangles it is part of (via MeshEditingTools.getMeshTriangleList)
	 * it either combines and normalizes vertices with multiple normals so they share the same normal, or sets a normal
	 * for each vertex individually. the returned triangle list does not remove duplicated vertices in case
	 * policy is set to combine (this is done when setting the triangle list)
	 */
	public static function calculateNormals( mesh:IMeshData, policy:SharedVertexPolicy ):Array<MeshTriangle>
	{
		var triangles:Array<MeshTriangle> = MeshEditingTools.getMeshTriangleList( mesh );

		// ------------- //

		for( tri in triangles )
		{
			var normal:Vector3 = tri.calculatetNormal();

			for( v in 0...3 )
			{
				tri.getVertex( v ).normal = normal;
			}
		}

		// ------------- //

		if( policy == SharedVertexPolicy.COMBINE )
		{
			var normals:Array<Vector3> = new Array<Vector3>();

			for( tri in triangles )
			{
				for( v in 0...3 )
				{
					var vertex:MeshVertex = tri.getVertex( v );

					if( normals[vertex.index] == null ) normals[vertex.index] = vertex.normal;
					else					            normals[vertex.index] = Vector3.add( vertex.normal, normals[vertex.index], normals[vertex.index] );
				}
			}

			for( tri in triangles )
			{
				for( v in 0...3 )
				{
					var vertex:MeshVertex = tri.getVertex( v );

					normals[vertex.index].normalize();
					vertex.normal = normals[vertex.index];
				}
			}
		}

		// ------------- //

		return triangles;
	}

	/**
	 * iterates over each vertex and inserts its position into a cube, expanding its boundings in the process
	 */
	public static function calculateAABB( mesh:IMeshData ):Cube
	{
		var vertices:Array<MeshVertex> = MeshEditingTools.getMeshVertexList( mesh );
		var bounding:Cube = new Cube();

		for( vertex in vertices )
		{
			Cube.insertVector3( bounding, vertex.position );
		}

		return bounding;
	}

}
