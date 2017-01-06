package at.dotpoint.math.vector;

/**
 * 2016-12-05
 * @author RK
 */
class AVector3Test<TVector3:IVector3> extends haxe.unit.TestCase
{

	public function new( )
	{
		super();
	}

	private function createVector():TVector3
	{
		throw "must override method";
	}

	// ************************************************************************ //
	// Tests
	// ************************************************************************ //

	/**
	 *
	 */
	private function testAddition()
	{
		var a:IVector3 = this.createVector();
			a.x = 0.5;
			a.y = -10;
			a.z = 1;

		var b:IVector3 = this.createVector();
			b.x = 0.5;
			b.y = 10;
			b.z = 1;
			
		var expected:IVector3 = this.createVector();
			expected.x = 1;
			expected.y = 0;
			expected.z = 2;

		//
		this.operate( MathVector3.add, a, b, expected );		
	}

	/**
	 *
	 */
	private function testSubstraction()
	{
		var a:IVector3 = this.createVector();
			a.x = 0.5;
			a.y = -10;
			a.z = 1;

		var b:IVector3 = this.createVector();
			b.x = 0.5;
			b.y = 10;
			b.z = 1;
			
		var expected:IVector3 = this.createVector();
			expected.x = 0;
			expected.y = -20;
			expected.z = 0;

		//
		this.operate( MathVector3.subtract, a, b, expected );	
	}
	
	/**
	 *
	 */
	private function testScaling()
	{
		var a:IVector3 = this.createVector();
			a.x = 0.5;
			a.y = -10;
			a.z = 0;

		var b:Float = 2;
			
		var expected:IVector3 = this.createVector();
			expected.x = 1;
			expected.y = -20;
			expected.z = 0;
			
		// ----------------- //	

		var output:IVector3 = this.createVector();				
		var ao:IVector3 = this.clone( a );
		
		// ----------------- //
		
		var result1:IVector3 = MathVector3.scale( a, b, null );
		var result2:IVector3 = MathVector3.scale( a, b, output );
		
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
	private function testNormalize()
	{
		var a:IVector3 = this.createVector();
			a.x = 0;
			a.y = 0;
			a.z = 0;
			
		var expected1:IVector3 = this.createVector();
			expected1.x = 0;
			expected1.y = 0;	
			expected1.z = 0;	
			
		var result1:IVector3 = MathVector3.normalize( a );
		
		this.compare( result1, expected1 );
		assertTrue( result1 == a );
		
		// ----------------  //
		
		var b:IVector3 = this.createVector();
			b.x = 0.5;
			b.y = -10;
			b.z = 1;
			
		var expected2:IVector3 = this.createVector();
			expected2.x = 0.049690399499995326;
			expected2.y = -0.9938079899999065;	
			expected2.z = 0.09938079899999065;	
			
		var result2:IVector3 = MathVector3.normalize( b );
		
		this.compare( result2, expected2 );
		assertTrue( result2 == b );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
	
	//
	private function operate( operation:IVector3->IVector3->IVector3->IVector3, a:IVector3, b:IVector3, expected:IVector3 ):Void
	{
		var ao:IVector3 = this.clone( a );			
		var bo:IVector3 = this.clone( b );	
			
		var output:IVector3 = this.createVector();	
			
		// ----------------- //
		
		var result1:IVector3 = operation( a, b, null );
		var result2:IVector3 = operation( a, b, output );
		
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
	private function compare( result:IVector3, expected:IVector3 ):Void
	{
		assertTrue( result.x == expected.x );
		assertTrue( result.y == expected.y );
		assertTrue( result.z == expected.z );
		assertTrue( result.w == expected.w );
	}
	
	//
	private function clone( a:IVector3 ):IVector3
	{
		var clone:IVector3 = this.createVector();
			clone.x = a.x;
			clone.y = a.y;			
			clone.z = a.z;		
			clone.w = a.w;		
			
		return clone;
	}
}
