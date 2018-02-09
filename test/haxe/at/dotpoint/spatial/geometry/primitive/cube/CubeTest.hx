package at.dotpoint.spatial.geometry.primitive.cube;

import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class CubeTest extends TestCase 
{

	public function testInstance():Void
	{
		var instance:Cube = new Cube();
		
		assertTrue( instance.center != null );
		assertTrue( instance.extent != null );
	}
	
}