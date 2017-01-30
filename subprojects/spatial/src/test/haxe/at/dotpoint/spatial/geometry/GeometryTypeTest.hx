package at.dotpoint.spatial.geometry;

import at.dotpoint.spatial.geometry.GeometryType.PrimitiveType;
import at.dotpoint.spatial.geometry.GeometryType.ComplexType;

/**
 * ...
 * @author RK
 */
class GeometryTypeTest extends haxe.unit.TestCase
{

	/**
	 *
	 */
	private function testPrimitiveSphere():Void
	{
		var type:GeometryType = GeometryType.PRIMITIVE( PrimitiveType.SPHERE );
	
		assertTrue( type != null );
		assertEquals( PrimitiveType.SPHERE, type.getParameters()[0] );
	}
	
	/**
	 *
	 */
	private function testPrimitiveCube():Void
	{
		var type:GeometryType = GeometryType.PRIMITIVE( PrimitiveType.CUBE );
		
		assertTrue( type != null );
		assertEquals( PrimitiveType.CUBE, type.getParameters()[0] );
	}
	
	/**
	 *
	 */
	private function testComplexConvex():Void
	{
		var type:GeometryType = GeometryType.COMPLEX( ComplexType.CONVEX );
		
		assertTrue( type != null );
		assertEquals( ComplexType.CONVEX, type.getParameters()[0] );
	}
	
	/**
	 *
	 */
	private function testComplexeConcave():Void
	{
		var type:GeometryType = GeometryType.COMPLEX( ComplexType.CONCAVE );
		
		assertTrue( type != null );
		assertEquals( ComplexType.CONCAVE, type.getParameters()[0] );
	}
	
}