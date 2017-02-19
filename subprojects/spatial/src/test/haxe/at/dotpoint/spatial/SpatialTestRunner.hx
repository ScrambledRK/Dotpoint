package at.dotpoint.spatial;

import at.dotpoint.spatial.geometry.complex.VertexDataTest;
import at.dotpoint.spatial.geometry.complex.VertexTest;
import at.dotpoint.spatial.geometry.primitive.cube.CubeTest;
import at.dotpoint.spatial.transformation.TransformationTest;
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
		this.add( new TransformationTest() );
		this.add( new VertexDataTest() );
		this.add( new VertexTest() );
		this.run();
	}

}