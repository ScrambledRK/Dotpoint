package at.dotpoint.math.tensor.vector;

import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class Vector3Test extends TestCase 
{

	public function new() 
	{
		super();		
	}
	
	// ************************************************************************ //
	// Tests
	// ************************************************************************ //

	/**
	 *
	 */
	private function testEmptyConstruction():Void
	{	
		var subject:Vector3 = new Vector3();
		
		assertTrue( subject.x == 0 );
		assertTrue( subject.y == 0 );
		assertTrue( subject.z == 0 );
		assertTrue( subject.w == 1 );
	}
	
	/**
	 *
	 */
	private function testSetConstruction():Void
	{	
		var subject:Vector3 = new Vector3( 1, 2, 3, 4 );
		
		assertTrue( subject.x == 1 );
		assertTrue( subject.y == 2 );
		assertTrue( subject.z == 3 );
		assertTrue( subject.w == 4 );
	}
	
	/**
	 *
	 */
	private function testSetGetX():Void
	{	
		var subject:Vector3 = new Vector3();
			subject.x = 1;
			
		assertTrue( subject.x == 1 );
	}
	
	/**
	 *
	 */
	private function testSetGetY():Void
	{	
		var subject:Vector3 = new Vector3();
			subject.y = 1;
			
		assertTrue( subject.y == 1 );
	}
	
	/**
	 *
	 */
	private function testSetGetZ():Void
	{	
		var subject:Vector3 = new Vector3();
			subject.z = 1;
			
		assertTrue( subject.z == 1 );
	}
	
	/**
	 *
	 */
	private function testSetGetW():Void
	{	
		var subject:Vector3 = new Vector3();
			subject.w = 1;
			
		assertTrue( subject.w == 1 );
	}
}