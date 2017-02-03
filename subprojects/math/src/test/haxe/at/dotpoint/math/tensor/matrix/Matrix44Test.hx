package at.dotpoint.math.tensor.matrix;

import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class Matrix44Test extends TestCase 
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
		var subject:Matrix44 = new Matrix44();
		
		assertTrue( subject.m11 == 1 );
		assertTrue( subject.m12 == 0 );
		assertTrue( subject.m13 == 0 );
		assertTrue( subject.m14 == 0 );
		assertTrue( subject.m21 == 0 );
		assertTrue( subject.m22 == 1 );
		assertTrue( subject.m23 == 0 );
		assertTrue( subject.m24 == 0 );
		assertTrue( subject.m31 == 0 );
		assertTrue( subject.m32 == 0 );
		assertTrue( subject.m33 == 1 );
		assertTrue( subject.m34 == 0 );
		assertTrue( subject.m41 == 0 );
		assertTrue( subject.m42 == 0 );
		assertTrue( subject.m43 == 0 );
		assertTrue( subject.m44 == 1 );
	}
	
	/**
	 *
	 */
	private function testSetGet():Void
	{	
		for( c in 0...3 )
		{
			for( r in 0...3 )
			{
				var subject:Matrix44 = new Matrix44();	
					subject.set( c, r, -2 );
				
				assertTrue( subject.get( c, r ) == -2 );
			}
		}		
	}	
	
}