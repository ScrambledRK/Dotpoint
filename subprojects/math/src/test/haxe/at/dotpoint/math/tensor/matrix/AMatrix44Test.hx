package at.dotpoint.math.tensor.matrix;
import at.dotpoint.math.tensor.MathMatrix44;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;

/**
 * 2016-12-05
 * @author RK
 */
class AMatrix44Test<TMatrix44:IMatrix44> extends haxe.unit.TestCase
{

	public function new( )
	{
		super();
	}
	
	// ************************************************************************ //
	// Factory
	// ************************************************************************ //	

	private function createMatrix():TMatrix44
	{
		throw "must override method";
	}
	
	private function createMatrixA():TMatrix44
	{
		var a:TMatrix44 = this.createMatrix();		
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
	
	private function createMatrixB():TMatrix44
	{
		var b:TMatrix44 = this.createMatrix();		
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
			expected.m12 = 0;
			expected.m13 = -2;	
			expected.m14 = 0;			
			expected.m21 = -2;
			expected.m22 = -3;
			expected.m23 = -1;	
			expected.m24 = 2;			
			expected.m31 = -4;
			expected.m32 = -1;
			expected.m33 = -1;
			expected.m34 = 3;			
			expected.m41 = 2;
			expected.m42 = 1;
			expected.m43 = 0;
			expected.m44 = 2;

		//
		this.operate( MathMatrix44.add, a, b, expected );		
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
			expected.m12 = -2;
			expected.m13 = 4;	
			expected.m14 = 0;			
			expected.m21 = 0;
			expected.m22 = -3;
			expected.m23 = 3;	
			expected.m24 = 2;			
			expected.m31 = 0;
			expected.m32 = -3;
			expected.m33 = 1;
			expected.m34 = 3;			
			expected.m41 = 2;
			expected.m42 = 1;
			expected.m43 = -4;
			expected.m44 = 0;

		//
		this.operate( MathMatrix44.subtract, a, b, expected );	
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
			expected.m12 = 13;
			expected.m13 = -35;	
			expected.m14 = 0;			
			expected.m21 = -2;
			expected.m22 = 0;
			expected.m23 = 12;	
			expected.m24 = 2;			
			expected.m31 = -4;
			expected.m32 = -2;
			expected.m33 = 16;
			expected.m34 = 3;			
			expected.m41 = 9;
			expected.m42 = 0;
			expected.m43 = -4;
			expected.m44 = 1;

		//
		this.operate( MathMatrix44.multiply, a, b, expected );	
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
			expected.m12 = -2;
			expected.m13 = 2;	
			expected.m14 = 0;			
			expected.m21 = -2;
			expected.m22 = -6;
			expected.m23 = 2;	
			expected.m24 = 4;			
			expected.m31 = -4;
			expected.m32 = -4;
			expected.m33 = 0;
			expected.m34 = 6;			
			expected.m41 = 4;
			expected.m42 = 2;
			expected.m43 = -4;
			expected.m44 = 2;
			
		// ----------------- //	

		var output:IMatrix44 = this.createMatrix();				
		var ao:IMatrix44 = MathMatrix44.clone( a );
		
		// ----------------- //
		
		var result1:IMatrix44 = MathMatrix44.scale( a, b, null );
		var result2:IMatrix44 = MathMatrix44.scale( a, b, output );
		
		//
		this.compare( result1, result2 );	// both results equal
		this.compare( result1, expected );	// result equal expected
		
		// ----------------- //
		
		this.compare( a, ao );				// a did not change
		
		assertTrue( result1 != a );			// both results not input instance
		assertTrue( result2 != a );
		
		assertTrue( result2 == output );	// given output instance still the same
	}
	
	/**
	 *
	 */
	private function testInverse():Void
	{
		var a:IMatrix44 = this.createMatrixA();
			
		var expected:IMatrix44 = this.createMatrix();
			expected.m11 = 1/13;
			expected.m12 = -1/65;
			expected.m13 = 0;	
			expected.m14 = 2/65;			
			expected.m21 = 2/13;
			expected.m22 = -16/13;
			expected.m23 = 1;	
			expected.m24 = -7/13;			
			expected.m31 = 3/13;
			expected.m32 = -68/65;
			expected.m33 = 1;
			expected.m34 = -59/65;			
			expected.m41 = 2/13;
			expected.m42 = -54/65;
			expected.m43 = 1;
			expected.m44 = -22/65;
		
		// ----------------- //
		
		var result:IMatrix44 = MathMatrix44.inverse( a );
		
		//
		this.compare( result, expected );
		assertTrue( result == a );
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
		this.compare( result, expected );
		assertTrue( result == a );
	}
	
	/**
	 *
	 */
	private function testDeterminant():Void
	{
		var a:IMatrix44 = this.createMatrixA();		
		var ao:IMatrix44 = MathMatrix44.clone( a );
		
		var expected:Float = -65;
		
		var result:Float = MathMatrix44.determinant( a );
		assertTrue( result == expected );
		
		this.compare( a, ao );				// a did not change
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
	
	//
	private function operate( operation:IMatrix44->IMatrix44->IMatrix44->IMatrix44, a:IMatrix44, b:IMatrix44, expected:IMatrix44 ):Void
	{
		var ao:IMatrix44 = MathMatrix44.clone( a );			
		var bo:IMatrix44 = MathMatrix44.clone( b );	
			
		var output:IMatrix44 = this.createMatrix();	
			
		// ----------------- //
		
		var result1:IMatrix44 = operation( a, b, null );
		var result2:IMatrix44 = operation( a, b, output );
		
		//
		this.compare( result1, result2 );	// both results equal
		this.compare( result1, expected );	// result equal expected
		
		// ----------------- //
		
		//
		this.compare( a, ao );				// a did not change
		this.compare( b, bo );				// b did not change		

		//
		assertTrue( result1 != a );			// both results not input instance
		assertTrue( result1 != b );
		assertTrue( result2 != a );
		assertTrue( result2 != b );		
		
		assertTrue( result2 == output );	// given output instance still the same
	}
	
	//
	private function compare( result:IMatrix44, expected:IMatrix44 ):Void
	{
		MathMatrix44.isEqual( result, expected );
	}
	

}
