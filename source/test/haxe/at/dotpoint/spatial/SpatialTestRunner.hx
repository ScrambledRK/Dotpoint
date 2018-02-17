package at.dotpoint.spatial;

import at.dotpoint.spatial.geometry.complex.basic.VertexTest;
import at.dotpoint.spatial.geometry.complex.builder.MeshBuilderTest;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.VertexCollectionTest;
import at.dotpoint.spatial.geometry.primitive.cube.CubeTest;
import at.dotpoint.spatial.transformation.local.TransformationCollectionTest;
import haxe.unit.TestRunner;

/**
 * ...
 * @author RK
 */
class SpatialTestRunner extends TestRunner
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	static public function main()
	{
		new SpatialTestRunner();
	}

	//
	public function new( )
	{
		super();

		this.add( new CubeTest() );
		this.add( new TransformationCollectionTest() );
		this.add( new VertexCollectionTest() );
		this.add( new VertexTest() );
		this.add( new MeshBuilderTest() );
		this.run();
	}

}