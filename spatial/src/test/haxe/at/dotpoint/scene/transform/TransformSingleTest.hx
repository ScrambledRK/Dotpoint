package haxe.scene.transform;

import haxe.at.dotpoint.math.geom.Space;
import haxe.at.dotpoint.math.MathUtil;
import haxe.at.dotpoint.math.MathUtil;
import haxe.at.dotpoint.math.vector.Vector3;
import haxe.at.dotpoint.math.vector.Quaternion;
import haxe.at.dotpoint.math.vector.Matrix44;
import haxe.at.dotpoint.spatial.SpatialEntity;
import haxe.at.dotpoint.spatial.transform.Transform;
import massive.munit.Assert;

/**
 * ...
 * @author RK
 */
class TransformSingleTest
{

	private var entity:SpatialEntity;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() 
	{
		
	}

	// ------------------------------------------------------------------ //
	// ------------------------------------------------------------------ //

	/**
	 * This will run before every test
	 */
	@Before
	public function construct():Void
	{
		this.entity = new SpatialEntity();
	}

	/**
	 * This will run after every test
	 */
	@After
	public function destruct():Void
	{
		this.entity = null;
	}
	
	// ************************************************************************ //
	// Position
	// ************************************************************************ //

	/**
	 *
	 */
	@Test
	//
	private function testPosition():Void
	{
		this.entity.transform.position.x = 20;
		this.entity.transform.position.y = 30;
		this.entity.transform.position.z = 70;

		// ------------------------ //

		var expected:Matrix44 = new Matrix44();
			expected.m41 = 20;
			expected.m42 = 30;
			expected.m43 = 70;

		// ------------------------ //

		var local:Matrix44 = cast this.entity.transform.getMatrix( null, Space.LOCAL );
		var world:Matrix44 = cast this.entity.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( expected, local ) );
		Assert.isTrue( Matrix44.isEqual( expected, world ) );

		Assert.areEqual( 20, this.entity.transform.position.x );
		Assert.areEqual( 30, this.entity.transform.position.y );
		Assert.areEqual( 70, this.entity.transform.position.z );

	}

	// ************************************************************************ //
	// Scale
	// ************************************************************************ //

	/**
	 *
	 */
	@Test
	//
	private function testScale():Void
	{
		this.entity.transform.scale.x = 2;
		this.entity.transform.scale.y = 0.5;
		this.entity.transform.scale.z = 1;

		// ------------------------ //

		var expected:Matrix44 = new Matrix44();
			expected.m11 = 2;
			expected.m22 = 0.5;
			expected.m33 = 1;

		// ------------------------ //

		var local:Matrix44 = cast this.entity.transform.getMatrix( null, Space.LOCAL );
		var world:Matrix44 = cast this.entity.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( expected, local ) );
		Assert.isTrue( Matrix44.isEqual( expected, world ) );

		Assert.areEqual( 2,   this.entity.transform.scale.x );
		Assert.areEqual( 0.5, this.entity.transform.scale.y );
		Assert.areEqual( 1,   this.entity.transform.scale.z );
	}

	// ************************************************************************ //
	// Rotation
	// ************************************************************************ //

	/**
	 *
	 */
	@Test
	//
	private function testRotation():Void
	{
		var axis:Vector3 = new Vector3(-0.5774, -0.5774, -0.5774);
		var radian:Float = 120.0 * MathUtil.DEG_RAD;

		Quaternion.setAxisAngle( axis, radian, this.entity.transform.rotation );

		// ------------------- //

		var expected_q:Quaternion = new Quaternion( -0.5, -0.5, -0.5, 0.5 );
			expected_q.normalize();

		var expected_m:Matrix44 = new Matrix44();
			expected_m.setArray( [  0, 0, 1, 0,
								    1, 0, 0, 0,
								    0, 1, 0, 0,
									0, 0, 0, 1 ] );

		// ------------------- //

		var local:Matrix44 = cast this.entity.transform.getMatrix( null, Space.LOCAL );
		var world:Matrix44 = cast this.entity.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( expected_m, local ) );
		Assert.isTrue( Matrix44.isEqual( expected_m, world ) );

		Assert.isTrue( MathUtil.isEqual( expected_q.x, this.entity.transform.rotation.x ) );
		Assert.isTrue( MathUtil.isEqual( expected_q.y, this.entity.transform.rotation.y ) );
		Assert.isTrue( MathUtil.isEqual( expected_q.z, this.entity.transform.rotation.z ) );
		Assert.isTrue( MathUtil.isEqual( expected_q.w, this.entity.transform.rotation.w ) );
	}

	// ************************************************************************ //
	// Matrix
	// ************************************************************************ //

	/**
	 *
	 */
	@Test
	//
	private function testMatrix():Void
	{
		this.entity.transform.position.x = 20;
		this.entity.transform.position.y = 30;
		this.entity.transform.position.z = 70;

		// ------------------- //
		// scale:

		this.entity.transform.scale.x = 2;
		this.entity.transform.scale.y = 0.5;
		this.entity.transform.scale.z = 1;

		// ------------------- //
		// rotation:

		var axis:Vector3 = new Vector3(-0.5774, -0.5774, -0.5774);
		var radian:Float = 120.0 * MathUtil.DEG_RAD;

		Quaternion.setAxisAngle( axis, radian, this.entity.transform.rotation );

		var expected_q:Quaternion = new Quaternion( -0.5, -1, -0.25, 0.5 );
			expected_q.normalize();

		// ------------------- //
		// matrix:

		var local:Matrix44 = cast this.entity.transform.getMatrix( null, Space.LOCAL );
		var world:Matrix44 = cast this.entity.transform.getMatrix( null, Space.WORLD );

		var expected_m:Matrix44 = new Matrix44();
			expected_m.setArray( [  0,   0.5, 0, 40,
								    0,   0,   1, 15,
								    2,   0,   0, 70,
									0,   0,   0, 1   ] );

		Assert.isTrue( Matrix44.isEqual( expected_m, local ) );
		Assert.isTrue( Matrix44.isEqual( expected_m, world ) );

		// ------------------- //
		// local:

		this.entity.transform.setMatrix( expected_m, Space.LOCAL );

		Assert.isTrue( MathUtil.isEqual( 40, this.entity.transform.position.x ) );
		Assert.isTrue( MathUtil.isEqual( 15, this.entity.transform.position.y ) );
		Assert.isTrue( MathUtil.isEqual( 70, this.entity.transform.position.z ) );

		Assert.isTrue( MathUtil.isEqual( 2,   this.entity.transform.scale.x ) );
		Assert.isTrue( MathUtil.isEqual( 0.5, this.entity.transform.scale.y ) );
		Assert.isTrue( MathUtil.isEqual( 1,   this.entity.transform.scale.z ) );

		Assert.isTrue( MathUtil.isEqual( expected_q.x, this.entity.transform.rotation.x ) );
		Assert.isTrue( MathUtil.isEqual( expected_q.y, this.entity.transform.rotation.y ) );
		Assert.isTrue( MathUtil.isEqual( expected_q.z, this.entity.transform.rotation.z ) );
		Assert.isTrue( MathUtil.isEqual( expected_q.w, this.entity.transform.rotation.w ) );

		// ------------------- //
		// world:

		this.entity.transform.setMatrix( expected_m, Space.WORLD );

		Assert.isTrue( MathUtil.isEqual( 40, this.entity.transform.position.x ) );
		Assert.isTrue( MathUtil.isEqual( 15, this.entity.transform.position.y ) );
		Assert.isTrue( MathUtil.isEqual( 70, this.entity.transform.position.z ) );

		Assert.isTrue( MathUtil.isEqual( 2,   this.entity.transform.scale.x ) );
		Assert.isTrue( MathUtil.isEqual( 0.5, this.entity.transform.scale.y ) );
		Assert.isTrue( MathUtil.isEqual( 1,   this.entity.transform.scale.z ) );

		Assert.isTrue( MathUtil.isEqual( expected_q.x, this.entity.transform.rotation.x ) );
		Assert.isTrue( MathUtil.isEqual( expected_q.y, this.entity.transform.rotation.y ) );
		Assert.isTrue( MathUtil.isEqual( expected_q.z, this.entity.transform.rotation.z ) );
		Assert.isTrue( MathUtil.isEqual( expected_q.w, this.entity.transform.rotation.w ) );
	}

}
