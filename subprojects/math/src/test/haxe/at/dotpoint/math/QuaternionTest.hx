package haxe.math;

import at.dotpoint.math.MathUtil;
import at.dotpoint.math.vector.Matrix44;
import at.dotpoint.math.vector.Quaternion;
import at.dotpoint.math.vector.Vector3;
import at.dotpoint.math.vector.Vector3;
import massive.munit.Assert;

/**
 * ...
 * @author RK
 */
class QuaternionTest
{

	public function new()
	{

	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 */
	@Test
	//
	public function testAxisAngle():Void
	{
		var list:Array<AACase> = new Array<AACase>();

		list.push( new AACase( new Vector3(1, 0, 0),  0.0 * MathUtil.DEG_RAD, new Quaternion( 0, 0, 0, 1) ) );
		list.push( new AACase( new Vector3(1, 0, 0), 45.0 * MathUtil.DEG_RAD, new Quaternion( 0.3826834323650898, 0, 0, 0.9238795325112867) ) );
		list.push( new AACase( new Vector3(1, 1, 0),-13.0 * MathUtil.DEG_RAD, new Quaternion( -0.08004676010739717, -0.08004676010739717, 0, 0.9935718556765875) ) );
		list.push( new AACase( new Vector3(-0.5774, -0.5774, -0.5774), 120.0 * MathUtil.DEG_RAD, new Quaternion( -0.5, -0.5, -0.5, 0.5) ) );

		for( aa in list )
		{
			var result:Quaternion = Quaternion.setAxisAngle( aa.vector, aa.radian, new Quaternion() );

			Assert.isTrue( Quaternion.isEqual( aa.quaternion, result ) );
		}
	}

	/**
	 * 
	 */
	@Test
	//
	public function testMatrixToQuaternion():Void
	{
		var list:Array<QMCase> = new Array<QMCase>();

		// ----------------- //

		list.push( new QMCase (	[   1, 0, 0, 0,
									0, 1, 0, 0,
									0, 0, 1, 0,
									0, 0, 0, 1 ],
								[   0, 0, 0, 1 ] ) );

		list.push( new QMCase (	[   0, 0, 1, 0,
									0, 1, 0, 0,
								   -1, 0, 0, 0,
									0, 0, 0, 1 ],
								[   0, 0.7071067811865475, 0, 0.7071067811865475 ] ) );

		list.push( new QMCase (	[   0,-1, 0, 0,
								    1, 0, 0, 0,
									0, 0, 1, 0,
									0, 0, 0, 1 ],
								[   0, 0, 0.7071067811865475, 0.7071067811865475 ] ) );

		list.push( new QMCase (	[   0, 0,-1, 0,
								    1, 0, 0, 0,
								    0,-1, 0, 0,
									0, 0, 0, 1 ],
								[   -0.5, -0.5, 0.5, 0.5 ] ) );

		list.push( new QMCase (	[   0, 1, 0, 0,
								    1, 0, 0, 0,
								    0, 0,-1, 0,
									0, 0, 0, 1 ],
								[   0.7071067811865475, 0.7071067811865475, 0, 0 ] ) );

		list.push( new QMCase (	[  -1, 0, 0, 0,
								    0, 0, 1, 0,
								    0, 1, 0, 0,
									0, 0, 0, 1 ],
								[   0, 0.7071067811865475, 0.7071067811865475, 0 ] ) );

		list.push( new QMCase (	[  -1, 0, 0, 0,
								    0,-1, 0, 0,
								    0, 0,-1, 0,
									0, 0, 0, 1 ],
								[   0, 0, 0.7071067811865475, 0 ] ) );

		list.push( new QMCase (	[   1, 1, 0, 0,
								    1,-1, 0, 0,
								    0, 0,-1, 0,
									0, 0, 0, 1 ],
								[   1, 0.5, 0, 0 ] ) );
		// ----------------- //
		// ----------------- //
		
		for( qm in list )
		{
			var expected_quaternion:Quaternion = new Quaternion();
				expected_quaternion.x = qm.quaternion[0];
				expected_quaternion.y = qm.quaternion[1];
				expected_quaternion.z = qm.quaternion[2];
				expected_quaternion.w = qm.quaternion[3];
			
			var expected_matrix:Matrix44 = new Matrix44();
				expected_matrix.setArray( qm.matrix );
			
			// ------------- //
			
			var result_quaternion:Quaternion = Quaternion.setMatrix( expected_matrix, new Quaternion() );
			
			Assert.isTrue( Quaternion.isEqual( expected_quaternion, result_quaternion ) );
		}
	}

	/**
	 *
	 */
	@Test
	//
	public function testQuaternionToMatrix():Void
	{
		var list:Array<QMCase> = new Array<QMCase>();

		// ----------------- //

		list.push( new QMCase (	[   1, 0, 0, 0,
									0, 1, 0, 0,
									0, 0, 1, 0,
									0, 0, 0, 1 ],
								[   0, 0, 0, 1 ] ) );

		list.push( new QMCase (	[   0, 0,-1, 0,
									0, 1, 0, 0,
									1, 0, 0, 0,
									0, 0, 0, 1 ],
								[   0, 0.7071067811865475, 0, 0.7071067811865475 ] ) );

		list.push( new QMCase (	[   0, 1, 0, 0,
								   -1, 0, 0, 0,
									0, 0, 1, 0,
									0, 0, 0, 1 ],
								[   0, 0, 0.7071067811865475, 0.7071067811865475 ] ) );

		list.push( new QMCase (	[   0, 1, 0, 0,
								    0, 0,-1, 0,
								   -1, 0, 0, 0,
									0, 0, 0, 1 ],
								[   -0.5, -0.5, 0.5, 0.5 ] ) );

		// ----------------- //
		// ----------------- //

		for( qm in list )
		{
			var expected_quaternion:Quaternion = new Quaternion();
				expected_quaternion.x = qm.quaternion[0];
				expected_quaternion.y = qm.quaternion[1];
				expected_quaternion.z = qm.quaternion[2];
				expected_quaternion.w = qm.quaternion[3];

			var expected_matrix:Matrix44 = new Matrix44();
				expected_matrix.setArray( qm.matrix );

			// ------------- //

			var result_matrix:Matrix44 = Quaternion.toMatrix( expected_quaternion, new Matrix44() );

			Assert.isTrue( Matrix44.isEqual( expected_matrix, result_matrix ) );
		}
	}
	
}

//
private class AACase
{
	public var vector:Vector3;
	public var radian:Float;
	public var quaternion:Quaternion;

	public function new( axis:Vector3, radian:Float, quaternion:Quaternion )
	{
		this.vector = axis;
		this.radian = radian;
		this.quaternion = quaternion;
	}
}

//
private class QMCase
{
	public var matrix:Array<Float>;
	public var quaternion:Array<Float>;

	public function new( matrix:Array<Float>, quaternion:Array<Float> )
	{
		this.matrix = matrix;
		this.quaternion = quaternion;
	}
}