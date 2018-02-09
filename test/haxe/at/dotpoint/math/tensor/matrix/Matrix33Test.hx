package at.dotpoint.math.tensor.matrix;

import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class Matrix33Test extends TestCase 
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
		var subject:Matrix33 = new Matrix33();
		
		assertTrue( subject.m11 == 1 );
		assertTrue( subject.m12 == 0 );
		assertTrue( subject.m13 == 0 );
		assertTrue( subject.m21 == 0 );
		assertTrue( subject.m22 == 1 );
		assertTrue( subject.m23 == 0 );
		assertTrue( subject.m31 == 0 );
		assertTrue( subject.m32 == 0 );
		assertTrue( subject.m33 == 1 );
	}
	
	/**
	 *
	 */
	private function testSetGet():Void
	{	
		for( c in 0...2 )
		{
			for( r in 0...2 )
			{
				var subject:Matrix33 = new Matrix33();	
					subject.set( c, r, -2 );
				
				assertTrue( subject.get( c, r ) == -2 );
			}
		}		
	}	
	
}