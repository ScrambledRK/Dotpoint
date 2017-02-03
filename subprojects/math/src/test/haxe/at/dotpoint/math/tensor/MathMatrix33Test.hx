package at.dotpoint.math.tensor;

import at.dotpoint.math.tensor.matrix.IMatrix33;
import at.dotpoint.math.tensor.matrix.Matrix33;
import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class MathMatrix33Test extends TestCase 
{

	public function new() 
	{
		super();
		
	}
	
	// ************************************************************************ //
	// Factory
	// ************************************************************************ //	

	//
	private function createMatrix():IMatrix33
	{
		return new Matrix33();
	}
	
	//
	private function createMatrixA():IMatrix33
	{
		var a:IMatrix33 = this.createMatrix();		
			a.m11 = 12;
			a.m12 = -1;
			a.m13 = -2;	
			a.m21 = -1;
			a.m22 = -3;
			a.m23 = -2;	
			a.m31 = 1;
			a.m32 = 1;
			a.m33 = 0;
		
		return a;
	}
	
	//
	private function createMatrixB():IMatrix33
	{
		var b:IMatrix33 = this.createMatrix();		
			b.m11 = 3;
			b.m12 = -1;
			b.m13 = -2;	
			b.m21 = 1;
			b.m22 = 0;
			b.m23 = 1;		
			b.m31 = -3;
			b.m32 = -2;
			b.m33 = -1;
		
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
		var a:IMatrix33 = this.createMatrixA();
		var b:IMatrix33 = this.createMatrixB();
			
		var expected:IMatrix33 = this.createMatrix();
			expected.m11 = 15;
			expected.m21 = 0;
			expected.m31 = -2;
			expected.m12= -2;
			expected.m22 = -3;
			expected.m32 = -1;			
			expected.m13 = -4;
			expected.m23 = -1;
			expected.m33 = -1;

		// ----------------- //
		
		var result:IMatrix33 = MathMatrix33.add( a, b );	
			
		//
		assertTrue( MathMatrix33.isEqual( result, expected ) );	
	}

	/**
	 *
	 */
	private function testSubstraction():Void
	{
		var a:IMatrix33 = this.createMatrixA();
		var b:IMatrix33 = this.createMatrixB();
			
		var expected:IMatrix33 = this.createMatrix();
			expected.m11 = 9;
			expected.m21 = -2;
			expected.m31 = 4;		
			expected.m12 = 0;
			expected.m22 = -3;
			expected.m32 = 3;			
			expected.m13 = 0;
			expected.m23 = -3;
			expected.m33 = 1;

		// ----------------- //
		
		var result:IMatrix33 = MathMatrix33.subtract( a, b );	
			
		//
		assertTrue( MathMatrix33.isEqual( result, expected ) );	
	}
	
	/**
	 *
	 */
	private function testMultiplication():Void
	{
		var a:IMatrix33 = this.createMatrixA();
		var b:IMatrix33 = this.createMatrixB();
			
		var expected:IMatrix33 = this.createMatrix();
			expected.m11 = 35;
			expected.m21 = 13;
			expected.m31 = -35;			
			expected.m12 = -2;
			expected.m22 = 0;
			expected.m32 = 8;		
			expected.m13 = -4;
			expected.m23 = -2;
			expected.m33 = 10;			

		// ----------------- //
			
		var result:IMatrix33 = MathMatrix33.multiply( b, a );	
			
		//
		assertTrue( MathMatrix33.isEqual( result, expected ) );
	}
	
	/**
	 *
	 */
	private function testScaling():Void
	{
		var a:IMatrix33 = this.createMatrixA();
		var b:Float = 2;
			
		var expected:IMatrix33 = this.createMatrix();
			expected.m11 = 24;
			expected.m21 = -2;
			expected.m31 = 2;			
			expected.m12 = -2;
			expected.m22 = -6;
			expected.m32 = 2;			
			expected.m13 = -4;
			expected.m23 = -4;
			expected.m33 = 0;
		
		// ----------------- //
		
		var result:IMatrix33 = MathMatrix33.scale( a, b );
		
		//
		assertTrue( MathMatrix33.isEqual( result, expected ) );
	}
	
	/**
	 *
	 */
	private function testTranspose():Void
	{
		var a:IMatrix33 = this.createMatrixA();
			
		var expected:IMatrix33 = this.createMatrix();
			expected.m11 = 12;
			expected.m12 = -1;
			expected.m13 = 1;	
			expected.m21 = -1;
			expected.m22 = -3;
			expected.m23 = 1;	
			expected.m31 = -2;
			expected.m32 = -2;
			expected.m33 = 0;
		
		// ----------------- //		
		
		var result:IMatrix33 = MathMatrix33.transpose( a );
		
		//
		assertTrue( MathMatrix33.isEqual( result, expected ) );
	}
	
	/**
	 *
	 */
	private function testDeterminant():Void
	{
		var a:IMatrix33 = this.createMatrixA();			
		
		var result:Float = MathMatrix33.determinant( a );
		
		assertTrue( result == 22 );
	}	
}