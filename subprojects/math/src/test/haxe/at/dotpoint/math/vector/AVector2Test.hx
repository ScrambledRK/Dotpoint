package at.dotpoint.math.vector;

/**
 * 2016-12-05
 * @author RK
 */
class AVector2Test<TVector2:IVector2> extends haxe.unit.TestCase
{

	public function new( )
	{
		super();
	}

	private function createVector():TVector2
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
		var a:IVector2 = this.createVector();
			a.x = 0.5;
			a.y = -10;

		var b:IVector2 = this.createVector();
			b.x = 0.5;
			b.y = 10;
			
		var expected:IVector2 = this.createVector();
			expected.x = 1;
			expected.y = 0;

		//
		this.operate( MathVector2.add, a, b, expected );		
	}

	/**
	 *
	 */
	private function testSubstraction()
	{
		var a:IVector2 = this.createVector();
			a.x = 0.5;
			a.y = -10;

		var b:IVector2 = this.createVector();
			b.x = 0.5;
			b.y = 10;
			
		var expected:IVector2 = this.createVector();
			expected.x = 0;
			expected.y = -20;

		//
		this.operate( MathVector2.subtract, a, b, expected );	
	}
	
	/**
	 *
	 */
	private function testScaling()
	{
		var a:IVector2 = this.createVector();
			a.x = 0.5;
			a.y = -10;

		var b:Float = 2;
			
		var expected:IVector2 = this.createVector();
			expected.x = 1;
			expected.y = -20;
			
		// ----------------- //	

		var output:IVector2 = this.createVector();				
		var ao:IVector2 = this.clone( a );
		
		// ----------------- //
		
		var result1:IVector2 = MathVector2.scale( a, b, null );
		var result2:IVector2 = MathVector2.scale( a, b, output );
		
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
		var a:IVector2 = this.createVector();
			a.x = 0;
			a.y = 0;
			
		var expected1:IVector2 = this.createVector();
			expected1.x = 0;
			expected1.y = 0;	
			
		var result1:IVector2 = MathVector2.normalize( a );
		
		this.compare( result1, expected1 );
		assertTrue( result1 == a );
		
		// ----------------  //
		
		var b:IVector2 = this.createVector();
			b.x = 0.5;
			b.y = -10;
			
		var expected2:IVector2 = this.createVector();
			expected2.x = 0.04993761694389223;
			expected2.y = -0.9987523388778446;	
			
		var result2:IVector2 = MathVector2.normalize( b );

		this.compare( result2, expected2 );
		assertTrue( result2 == b );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
	
	//
	private function operate( operation:IVector2->IVector2->IVector2->IVector2, a:IVector2, b:IVector2, expected:IVector2 ):Void
	{
		var ao:IVector2 = this.clone( a );			
		var bo:IVector2 = this.clone( b );
			
		var output:IVector2 = this.createVector();	
			
		// ----------------- //
		
		var result1:IVector2 = operation( a, b, null );
		var result2:IVector2 = operation( a, b, output );
		
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
	private function compare( result:IVector2, expected:IVector2 ):Void
	{
		assertTrue( result.x == expected.x );
		assertTrue( result.y == expected.y );
	}
	
	//
	private function clone( a:IVector2 ):IVector2
	{
		var clone:IVector2 = this.createVector();
			clone.x = a.x;
			clone.y = a.y;			
			
		return clone;
	}
}
