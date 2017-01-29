package at.dotpoint.math.tensor.matrix;
import at.dotpoint.math.tensor.MathMatrix33;
import at.dotpoint.math.tensor.matrix.IMatrix33;
import at.dotpoint.math.tensor.matrix.Matrix33;

/**
 * 2016-12-05
 * @author RK
 */
class AMatrix33Test<TMatrix33:IMatrix33> extends haxe.unit.TestCase
{

	public function new( )
	{
		super();
	}
	
	// ************************************************************************ //
	// Factory
	// ************************************************************************ //	

	private function createMatrix():TMatrix33
	{
		throw "must override method";
	}
	
	private function createMatrixA():TMatrix33
	{
		var a:TMatrix33 = this.createMatrix();		
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
	
	private function createMatrixB():TMatrix33
	{
		var b:TMatrix33 = this.createMatrix();		
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
			expected.m12 = 0;
			expected.m13 = -2;			
			expected.m21 = -2;
			expected.m22 = -3;
			expected.m23 = -1;				
			expected.m31 = -4;
			expected.m32 = -1;
			expected.m33 = -1;

		//
		this.operate( MathMatrix33.add, a, b, expected );		
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
			expected.m12 = -2;
			expected.m13 = 4;	
			expected.m21 = 0;
			expected.m22 = -3;
			expected.m23 = 3;	
			expected.m31 = 0;
			expected.m32 = -3;
			expected.m33 = 1;

		//
		this.operate( MathMatrix33.subtract, a, b, expected );	
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
			expected.m12 = 13;
			expected.m13 = -35;	
			expected.m21 = -2;
			expected.m22 = 0;
			expected.m23 = 12;	
			expected.m31 = -4;
			expected.m32 = -2;
			expected.m33 = 16;

		//
		this.operate( MathMatrix33.multiply, a, b, expected );	
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
			expected.m12 = -2;
			expected.m13 = 2;				
			expected.m21 = -2;
			expected.m22 = -6;
			expected.m23 = 2;				
			expected.m31 = -4;
			expected.m32 = -4;
			expected.m33 = 0;
			
		// ----------------- //	

		var output:IMatrix33 = this.createMatrix();				
		var ao:IMatrix33 = MathMatrix33.clone( a );
		
		// ----------------- //
		
		var result1:IMatrix33 = MathMatrix33.scale( a, b, null );
		var result2:IMatrix33 = MathMatrix33.scale( a, b, output );
		
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
		this.compare( result, expected );
		assertTrue( result == a );
	}
	
	/**
	 *
	 */
	private function testDeterminant():Void
	{
		var a:IMatrix33 = this.createMatrixA();		
		var ao:IMatrix33 = MathMatrix33.clone( a );
		
		var expected:Float = 22;
		
		var result:Float = MathMatrix33.determinant( a );
		assertTrue( result == expected );
		
		this.compare( a, ao );				// a did not change
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
	
	//
	private function operate( operation:IMatrix33->IMatrix33->IMatrix33->IMatrix33, a:IMatrix33, b:IMatrix33, expected:IMatrix33 ):Void
	{
		var ao:IMatrix33 = MathMatrix33.clone( a );			
		var bo:IMatrix33 = MathMatrix33.clone( b );	
			
		var output:IMatrix33 = this.createMatrix();	
			
		// ----------------- //
		
		var result1:IMatrix33 = operation( a, b, null );
		var result2:IMatrix33 = operation( a, b, output );
		
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
	private function compare( result:IMatrix33, expected:IMatrix33 ):Void
	{
		MathMatrix33.isEqual( result, expected );
	}
	

}
