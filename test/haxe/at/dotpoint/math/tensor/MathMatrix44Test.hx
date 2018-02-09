package at.dotpoint.math.tensor;

import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class MathMatrix44Test extends TestCase 
{

	public function new() 
	{
		super();
		
	}
	
	// ************************************************************************ //
	// Factory
	// ************************************************************************ //	

	//
	private function createMatrix():IMatrix44
	{
		return new Matrix44();
	}
	
	//
	private function createMatrixA():IMatrix44
	{
		var a:IMatrix44 = this.createMatrix();		
			a.m11 = 12;
			a.m12 = -1;
			a.m13 = -2;	
			a.m14 = 2;			
			a.m21 = -1;
			a.m22 = -3;
			a.m23 = -2;	
			a.m24 = 1;			
			a.m31 = 1;
			a.m32 = 1;
			a.m33 = 0;
			a.m34 = -2;			
			a.m41 = 0;
			a.m42 = 2;
			a.m43 = 3;
			a.m44 = 1;
		
		return a;
	}
	
	//
	private function createMatrixB():IMatrix44
	{
		var b:IMatrix44 = this.createMatrix();		
			b.m11 = 3;
			b.m12 = -1;
			b.m13 = -2;	
			b.m14 = 0;			
			b.m21 = 1;
			b.m22 = 0;
			b.m23 = 1;		
			b.m24 = 0;			
			b.m31 = -3;
			b.m32 = -2;
			b.m33 = -1;
			b.m34 = 2;			
			b.m41 = 0;
			b.m42 = 0;
			b.m43 = 0;
			b.m44 = 1;
		
		return b;
	}

	// ************************************************************************ //
	// Tests
	// ************************************************************************ //
	
	/**
	 *
	 */
	private function testAddition():Void
	{
		var a:IMatrix44 = this.createMatrixA();
		var b:IMatrix44 = this.createMatrixB();
			
		var expected:IMatrix44 = this.createMatrix();
			expected.m11 = 15;
			expected.m21 = 0;
			expected.m31 = -2;	
			expected.m41 = 0;			
			expected.m12= -2;
			expected.m22 = -3;
			expected.m32 = -1;	
			expected.m42 = 2;			
			expected.m13 = -4;
			expected.m23 = -1;
			expected.m33 = -1;
			expected.m43 = 3;			
			expected.m14 = 2;
			expected.m24 = 1;
			expected.m34 = 0;
			expected.m44 = 2;

		// ----------------- //
		
		var result:IMatrix44 = MathMatrix44.add( a, b );	
			
		//
		assertTrue( MathMatrix44.isEqual( result, expected ) );	
	}

	/**
	 *
	 */
	private function testSubstraction():Void
	{
		var a:IMatrix44 = this.createMatrixA();
		var b:IMatrix44 = this.createMatrixB();
			
		var expected:IMatrix44 = this.createMatrix();
			expected.m11 = 9;
			expected.m21 = -2;
			expected.m31 = 4;	
			expected.m41 = 0;			
			expected.m12 = 0;
			expected.m22 = -3;
			expected.m32 = 3;	
			expected.m42 = 2;			
			expected.m13 = 0;
			expected.m23 = -3;
			expected.m33 = 1;
			expected.m43 = 3;			
			expected.m14 = 2;
			expected.m24 = 1;
			expected.m34 = -4;
			expected.m44 = 0;

		// ----------------- //
		
		var result:IMatrix44 = MathMatrix44.subtract( a, b );	
			
		//
		assertTrue( MathMatrix44.isEqual( result, expected ) );	
	}
	
	/**
	 *
	 */
	private function testMultiplication():Void
	{
		var a:IMatrix44 = this.createMatrixA();
		var b:IMatrix44 = this.createMatrixB();
			
		var expected:IMatrix44 = this.createMatrix();
			expected.m11 = 35;
			expected.m21 = 13;
			expected.m31 = -35;	
			expected.m41 = 0;			
			expected.m12 = -2;
			expected.m22 = 0;
			expected.m32 = 12;	
			expected.m42 = 2;			
			expected.m13 = -4;
			expected.m23 = -2;
			expected.m33 = 16;
			expected.m43 = 3;			
			expected.m14 = 9;
			expected.m24 = 0;
			expected.m34 = -4;
			expected.m44 = 1;

		// ----------------- //
			
		var result:IMatrix44 = MathMatrix44.multiply( b, a );	
			
		//
		assertTrue( MathMatrix44.isEqual( result, expected ) );
	}
	
	/**
	 *
	 */
	private function testScaling():Void
	{
		var a:IMatrix44 = this.createMatrixA();
		var b:Float = 2;
			
		var expected:IMatrix44 = this.createMatrix();
			expected.m11 = 24;
			expected.m21 = -2;
			expected.m31 = 2;	
			expected.m41 = 0;			
			expected.m12 = -2;
			expected.m22 = -6;
			expected.m32 = 2;	
			expected.m42 = 4;			
			expected.m13 = -4;
			expected.m23 = -4;
			expected.m33 = 0;
			expected.m43 = 6;			
			expected.m14 = 4;
			expected.m24 = 2;
			expected.m34 = -4;
			expected.m44 = 2;
		
		// ----------------- //
		
		var result:IMatrix44 = MathMatrix44.scale( a, b );
		
		//
		assertTrue( MathMatrix44.isEqual( result, expected ) );
	}
	
	/**
	 *
	 */
	private function testInverse():Void
	{
		var a:IMatrix44 = this.createMatrixA();
			
		var expected:IMatrix44 = this.createMatrix();
			expected.m11 = 1/13;
			expected.m21 = -1/65;
			expected.m31 = 0;	
			expected.m41 = 2/65;			
			expected.m12 = 2/13;
			expected.m22 = -16/13;
			expected.m32 = 1;	
			expected.m42 = -7/13;			
			expected.m13 = 3/13;
			expected.m23 = -68/65;
			expected.m33 = 1;
			expected.m43 = -59/65;			
			expected.m14 = 2/13;
			expected.m24 = -54/65;
			expected.m34 = 1;
			expected.m44 = -22/65;
		
		// ----------------- //
		
		var result:IMatrix44 = MathMatrix44.inverse( a );
		
		//
		assertTrue( MathMatrix44.isEqual( result, expected ) );
	}
	
	/**
	 *
	 */
	private function testTranspose():Void
	{
		var a:IMatrix44 = this.createMatrixA();
			
		var expected:IMatrix44 = this.createMatrix();
			expected.m11 = 12;
			expected.m12 = -1;
			expected.m13 = 1;
			expected.m14 = 0;		
			expected.m21 = -1;
			expected.m22 = -3;
			expected.m23 = 1;
			expected.m24 = 2;		
			expected.m31 = -2;
			expected.m32 = -2;
			expected.m33 = 0;
			expected.m34 = 3;		
			expected.m41 = 2;
			expected.m42 = 1;
			expected.m43 = -2;
			expected.m44 = 1;
		
		// ----------------- //		
		
		var result:IMatrix44 = MathMatrix44.transpose( a );
		
		//
		assertTrue( MathMatrix44.isEqual( result, expected ) );
	}
	
	/**
	 *
	 */
	private function testDeterminant():Void
	{
		var a:IMatrix44 = this.createMatrixA();			
		
		var result:Float = MathMatrix44.determinant( a );
		
		assertTrue( result == -65 );
	}	
}