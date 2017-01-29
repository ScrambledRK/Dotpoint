package at.dotpoint.math.tensor.quaternion;

import at.dotpoint.math.tensor.MathMatrix44;
import at.dotpoint.math.tensor.MathQuaternion;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;

/**
 * 2016-12-05
 * @author RK
 */
class AQuaternionTest<TQuaternion:IQuaternion> extends haxe.unit.TestCase
{

	public function new( )
	{
		super();
	}

	// ************************************************************************ //
	// Factory
	// ************************************************************************ //	
	
	private function createQuaternion():TQuaternion
	{
		throw "must override method";
	}
	
		//
	private function createQuaternionA():TQuaternion
	{
		var a:TQuaternion = this.createQuaternion();
			a.x = 0.5;
			a.y = -10;
			a.z = 1;
			
		return a;
	}
	
	//
	private function createQuaternionB():TQuaternion
	{
		var b:TQuaternion = this.createQuaternion();
			b.x = 0.5;
			b.y = 10;
			b.z = 1;
			
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
		var a:IQuaternion = this.createQuaternionA();
		var b:IQuaternion = this.createQuaternionB();
			
		var expected:IQuaternion = this.createQuaternion();
			expected.x = 1;
			expected.y = 0;
			expected.z = 2;
			expected.w = 2;

		//
		this.operate( MathQuaternion.add, a, b, expected );		
	}

	/**
	 *
	 */
	private function testSubstraction():Void
	{
		var a:IQuaternion = this.createQuaternionA();
		var b:IQuaternion = this.createQuaternionB();
			
		var expected:IQuaternion = this.createQuaternion();
			expected.x = 0;
			expected.y = -20;
			expected.z = 0;
			expected.w = 0;

		//
		this.operate( MathQuaternion.subtract, a, b, expected );	
	}
	
	// ************************************************************************ //
	// Axis Angle
	// ************************************************************************ //

	
	/**
	 *
	 */
	private function testAxisAngle0():Void
	{
		var axis:Vector3 = new Vector3(1, 0, 0);
		var radian:Float = 0.0 * MathBasic.DEG_RAD;

		var expected:IQuaternion = new Quaternion( 0, 0, 0, 1 );

		//
		this.performAxisAngle( expected, axis, radian );
	}

	/**
	 *
	 */
	private function testAxisAngle1():Void
	{
		var axis:Vector3 = new Vector3(1, 0, 0);
		var radian:Float = 45.0 * MathBasic.DEG_RAD;

		var expected:IQuaternion = new Quaternion( 0.3826834323650898, 0, 0, 0.9238795325112867 );

		//
		this.performAxisAngle( expected, axis, radian );
	}

	/**
	 *
	 */
	private function testAxisAngle2():Void
	{
		var axis:Vector3 = new Vector3(1, 1, 0);
		var radian:Float = -13.0 * MathBasic.DEG_RAD;

		var expected:IQuaternion = new Quaternion( -0.08004676010739717, -0.08004676010739717, 0, 0.9935718556765875 );

		//
		this.performAxisAngle( expected, axis, radian );
	}

	/**
	 *
	 */
	private function testAxisAngle3():Void
	{
		var axis:Vector3 = new Vector3(-0.5774, -0.5774, -0.5774);
		var radian:Float = 120.0 * MathBasic.DEG_RAD;

		var expected:IQuaternion = new Quaternion(-0.5, -0.5, -0.5, 0.5 );

		//
		this.performAxisAngle( expected, axis, radian );
	}

	//
	private function performAxisAngle( expected:IQuaternion, axis:IVector3, radian:Float )
	{
		var result:IQuaternion = MathQuaternion.setAxisAngle( axis, radian, new Quaternion() );

		assertTrue( result != null );
		assertTrue( MathQuaternion.isEqual( expected, result ) );
	}

	// ************************************************************************ //
	// Matrix to Quaternion
	// ************************************************************************ //

	/**
	 * 
	 */
	public function testMatrixTransformation0():Void
	{
		var inputM:Array<Float> = [ 1, 0, 0, 0,
									0, 1, 0, 0,
									0, 0, 1, 0,
									0, 0, 0, 1 ];

		var matrix:IMatrix44 = MathMatrix44.setArray( new Matrix44(), inputM );
		var quaternion:IQuaternion = new Quaternion( 0, 0, 0, 1 );

		//
		this.performMatrixToQuaternion( quaternion, matrix );
		this.performQuaternionToMatrix( quaternion, matrix );
	}

	/**
	 *
	 */
	public function testMatrixTransformation1():Void
	{
		var inputM:Array<Float> = [ 0, 0, 1, 0,
									0, 1, 0, 0,
								   -1, 0, 0, 0,
									0, 0, 0, 1 ];

		var matrix:IMatrix44 = MathMatrix44.setArray( new Matrix44(), inputM );
		var quaternion:IQuaternion = new Quaternion( 0, 0.7071067811865475, 0, 0.7071067811865476 );

		//
		this.performMatrixToQuaternion( quaternion, matrix );
		this.performQuaternionToMatrix( quaternion, matrix );
	}

	/**
	 *
	 */
	public function testMatrixTransformation2():Void
	{
		var inputM:Array<Float> = [ 0, 1, 0, 0,
								   -1, 0, 0, 0,
									0, 0, 1, 0,
									0, 0, 0, 1 ];

		var matrix:IMatrix44 = MathMatrix44.setArray( new Matrix44(), inputM );
		var quaternion:IQuaternion = new Quaternion( 0, 0, -0.7071067811865475, 0.7071067811865476 );

		//
		this.performMatrixToQuaternion( quaternion, matrix );
		this.performQuaternionToMatrix( quaternion, matrix );
	}

	/**
	 *
	 */
	public function testMatrixTransformation3():Void
	{
		var inputM:Array<Float> = [ 0, 0,-1, 0,
									1, 0, 0, 0,
									0,-1, 0, 0,
									0, 0, 0, 1 ];

		var matrix:IMatrix44 = MathMatrix44.setArray( new Matrix44(), inputM );
		var quaternion:IQuaternion = new Quaternion( -0.5, -0.5, 0.5, 0.5 );

		//
		this.performMatrixToQuaternion( quaternion, matrix );
		this.performQuaternionToMatrix( quaternion, matrix );
	}

	/**
	 *
	 */
	public function testMatrixTransformation4():Void
	{
		var inputM:Array<Float> = [ 0, 1, 0, 0,
									1, 0, 0, 0,
									0, 0,-1, 0,
									0, 0, 0, 1 ];

		var matrix:IMatrix44 = MathMatrix44.setArray( new Matrix44(), inputM );
		var quaternion:IQuaternion = new Quaternion( 0.7071067811865476, 0.7071067811865475, 0, 0 );

		//
		this.performMatrixToQuaternion( quaternion, matrix );
		this.performQuaternionToMatrix( quaternion, matrix );
	}

	/**
	 *
	 */
	public function testMatrixTransformation5():Void
	{
		var inputM:Array<Float> = [-1, 0, 0, 0,
									0, 0, 1, 0,
									0, 1, 0, 0,
									0, 0, 0, 1 ];

		var matrix:IMatrix44 = MathMatrix44.setArray( new Matrix44(), inputM );
		var quaternion:IQuaternion = new Quaternion( 0, 0.7071067811865476, 0.7071067811865475, 0 );

		//
		this.performMatrixToQuaternion( quaternion, matrix );
		this.performQuaternionToMatrix( quaternion, matrix );
	}

	/**
	 *
	 */
	public function testMatrixTransformation6():Void
	{
		var inputM:Array<Float> = [ 1, 0, 0, 0,
									0,-1, 0, 0,
									0, 0,-1, 0,
									0, 0, 0, 1 ];

		var matrix:IMatrix44 = MathMatrix44.setArray( new Matrix44(), inputM );
		var quaternion:IQuaternion = new Quaternion( 1, 0, 0, 0 );

		//
		this.performMatrixToQuaternion( quaternion, matrix );
		this.performQuaternionToMatrix( quaternion, matrix );
	}
	
	//
	private function performMatrixToQuaternion( quaternion:IQuaternion, matrix:IMatrix44 )
	{
		var result:IQuaternion = MathQuaternion.setMatrix( matrix, new Quaternion() );

		assertTrue( result != null );
		assertTrue( MathQuaternion.isEqual( quaternion, result ) );
	}

	//
	private function performQuaternionToMatrix( quaternion:IQuaternion, matrix:IMatrix44 )
	{
		var result:IMatrix44 = new Matrix44();
		MathQuaternion.toMatrix( quaternion, result );

		assertTrue( result != null );
		assertTrue( MathMatrix44.isEqual( matrix, result ) );		
	}
	
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	private function operate( operation:IQuaternion->IQuaternion->IQuaternion->IQuaternion, a:IQuaternion, b:IQuaternion, expected:IQuaternion ):Void
	{
		var ao:IQuaternion = this.clone( a );			
		var bo:IQuaternion = this.clone( b );	
			
		var output:IQuaternion = this.createQuaternion();	
			
		// ----------------- //
		
		var result1:IQuaternion = operation( a, b, null );
		var result2:IQuaternion = operation( a, b, output );
		
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
	private function compare( result:IQuaternion, expected:IQuaternion ):Void
	{
		assertTrue( result.x == expected.x );
		assertTrue( result.y == expected.y );
		assertTrue( result.z == expected.z );
		assertTrue( result.w == expected.w );
	}
	
	//
	private function clone( a:IQuaternion ):IQuaternion
	{
		var clone:IQuaternion = this.createQuaternion();
			clone.x = a.x;
			clone.y = a.y;			
			clone.z = a.z;		
			clone.w = a.w;		
			
		return clone;
	}
	

}
