package at.dotpoint.math.tensor;

import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.Vector3;
import haxe.unit.TestCase;

/**
 * ...
 * @author RK
 */
class MathQuaternionTest extends TestCase 
{

	public function new() 
	{
		super();
		
	}
	
	// ************************************************************************ //
	// Factory
	// ************************************************************************ //	
	
	private function createQuaternion():IQuaternion
	{
		throw return new Quaternion();
	}
	
		//
	private function createQuaternionA():IQuaternion
	{
		var a:IQuaternion = this.createQuaternion();
			a.x = 0.5;
			a.y = -10;
			a.z = 1;
			
		return a;
	}
	
	//
	private function createQuaternionB():IQuaternion
	{
		var b:IQuaternion = this.createQuaternion();
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

		// ----------------- //
		
		var result:IQuaternion = MathQuaternion.add( a, b );	
			
		//
		assertTrue( MathQuaternion.isEqual( result, expected ) );		
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
			
		// ----------------- //
		
		var result:IQuaternion = MathQuaternion.subtract( a, b );	
			
		//
		assertTrue( MathQuaternion.isEqual( result, expected ) );	
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

		// ----------------- //
		
		var result:IQuaternion = MathQuaternion.setAxisAngle( axis, radian );

		//
		assertTrue( MathQuaternion.isEqual( expected, result ) );
	}

	/**
	 *
	 */
	private function testAxisAngle1():Void
	{
		var axis:Vector3 = new Vector3(1, 0, 0);
		var radian:Float = 45.0 * MathBasic.DEG_RAD;

		var expected:IQuaternion = new Quaternion( 0.3826834323650898, 0, 0, 0.9238795325112867 );

		// ----------------- //
		
		var result:IQuaternion = MathQuaternion.setAxisAngle( axis, radian );

		//
		assertTrue( MathQuaternion.isEqual( expected, result ) );
	}

	/**
	 *
	 */
	private function testAxisAngle2():Void
	{
		var axis:Vector3 = new Vector3(1, 1, 0);
		var radian:Float = -13.0 * MathBasic.DEG_RAD;

		var expected:IQuaternion = new Quaternion( -0.08004676010739717, -0.08004676010739717, 0, 0.9935718556765875 );

		// ----------------- //
		
		var result:IQuaternion = MathQuaternion.setAxisAngle( axis, radian );

		//
		assertTrue( MathQuaternion.isEqual( expected, result ) );
	}

	/**
	 *
	 */
	private function testAxisAngle3():Void
	{
		var axis:Vector3 = new Vector3(-0.5774, -0.5774, -0.5774);
		var radian:Float = 120.0 * MathBasic.DEG_RAD;

		var expected:IQuaternion = new Quaternion(-0.5, -0.5, -0.5, 0.5 );

		// ----------------- //
		
		var result:IQuaternion = MathQuaternion.setAxisAngle( axis, radian );

		//
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
}