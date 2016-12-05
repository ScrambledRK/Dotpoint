package at.dotpoint.math.vector;

import at.dotpoint.math.MathUtil;
import at.dotpoint.math.vector.Matrix44;
import at.dotpoint.math.vector.Quaternion;
import at.dotpoint.math.vector.Vector3;

using at.dotpoint.unit.TestCaseHelper;

/**
 * ...
 * @author RK
 */
class QuaternionTest extends haxe.unit.TestCase
{


	// ************************************************************************ //
	// Setup
	// ************************************************************************ //

	//
	public function new( )
	{
		super( );
	}

	// ************************************************************************ //
	// AxisAngle
	// ************************************************************************ //

	/**
	 *
	 */
	private function testAxisAngle0():Void
	{
		var axis:Vector3 = new Vector3(1, 0, 0);
		var radian:Float = 0.0 * MathUtil.DEG_RAD;

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
		var radian:Float = 45.0 * MathUtil.DEG_RAD;

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
		var radian:Float = -13.0 * MathUtil.DEG_RAD;

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
		var radian:Float = 120.0 * MathUtil.DEG_RAD;

		var expected:IQuaternion = new Quaternion(-0.5, -0.5, -0.5, 0.5 );

		//
		this.performAxisAngle( expected, axis, radian );
	}

	//
	private function performAxisAngle( expected:IQuaternion, axis:IVector3, radian:Float )
	{
		var result:Quaternion = Quaternion.setAxisAngle( axis, radian, new Quaternion() );

		assertTrue( result != null );
		assertTrue( Quaternion.isEqual( expected, result ) );
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

		var matrix:IMatrix44 = new Matrix44();
			matrix.setArray( inputM );

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

		var matrix:IMatrix44 = new Matrix44();
			matrix.setArray( inputM );

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

		var matrix:IMatrix44 = new Matrix44();
			matrix.setArray( inputM );

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

		var matrix:IMatrix44 = new Matrix44();
			matrix.setArray( inputM );

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

		var matrix:IMatrix44 = new Matrix44();
			matrix.setArray( inputM );

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

		var matrix:IMatrix44 = new Matrix44();
			matrix.setArray( inputM );

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

		var matrix:IMatrix44 = new Matrix44();
			matrix.setArray( inputM );

		var quaternion:IQuaternion = new Quaternion( 1, 0, 0, 0 );

		//
		this.performMatrixToQuaternion( quaternion, matrix );
		this.performQuaternionToMatrix( quaternion, matrix );
	}

	//
	private function performMatrixToQuaternion( quaternion:IQuaternion, matrix:IMatrix44 )
	{
		var result:Quaternion = Quaternion.setMatrix( matrix, new Quaternion() );

		assertTrue( result != null );
		aTrue( Quaternion.isEqual( quaternion, result ), "\ne: " + quaternion + "\nr: " + result );
	}

	//
	private function performQuaternionToMatrix( quaternion:IQuaternion, matrix:IMatrix44 )
	{
		var result:IMatrix44 = Quaternion.toMatrix( quaternion, new Matrix44() );

		assertTrue( result != null );
		aTrue( Matrix44.isEqual( matrix, result ), "\ne: " + matrix + "\nr: " + result );
	}
	
}
