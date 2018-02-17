package at.dotpoint.math.tensor.vector;

import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class Vector2Test extends TestCase 
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
		var subject:Vector2 = new Vector2();
		
		assertTrue( subject.x == 0 );
		assertTrue( subject.y == 0 );
	}
	
	/**
	 *
	 */
	private function testSetConstruction():Void
	{	
		var subject:Vector2 = new Vector2( 1, 2 );
		
		assertTrue( subject.x == 1 );
		assertTrue( subject.y == 2 );
	}
	
	/**
	 *
	 */
	private function testSetGetX():Void
	{	
		var subject:Vector2 = new Vector2();
			subject.x = 1;
			
		assertTrue( subject.x == 1 );
	}
	
	/**
	 *
	 */
	private function testSetGetY():Void
	{	
		var subject:Vector2 = new Vector2();
			subject.y = 1;
			
		assertTrue( subject.y == 1 );
	}
}