package haxe.at.dotpoint.display.renderable.mesh.data.complex;

import haxe.at.dotpoint.display.renderable.mesh.data.MeshIndices.MeshIndexTriangle;
import haxe.at.dotpoint.math.Trigonometry;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * 14.03.15
 * @author RK
 */
class MeshTriangle
{

	/**
	 *
	 */
	public var index:MeshIndexTriangle;

	/**
	 *
	 */
	public var v1:MeshVertex;

	/**
	 *
	 */
	public var v2:MeshVertex;

	/**
	 *
	 */
	public var v3:MeshVertex;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?v1:MeshVertex, ?v2:MeshVertex, ?v3:MeshVertex )
	{
		this.v1 = v1;
		this.v2 = v2;
		this.v3 = v3;

		this.index = -1;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	public function getVertex( index:Int ):MeshVertex
	{
		switch( index )
		{
			case 0: return this.v1;
			case 1: return this.v2;
			case 2: return this.v3;

			default:
				throw "index " + index + " must be between 0 and 2";
		}

		return null;
	}

	/**
	 *
	 */
	public function calculatetNormal():Vector3
	{
		return Trigonometry.calculatetNormal( v1.position, v2.position, v3.position );
	}

}
