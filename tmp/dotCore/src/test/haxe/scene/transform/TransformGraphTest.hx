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
class TransformGraphTest
{

	private var root:SpatialEntity;

	private var n1_1:SpatialEntity;
	private var n1_2:SpatialEntity;

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
		this.root = new SpatialEntity();

		this.n1_1 = new SpatialEntity();
		this.n1_2 = new SpatialEntity();

		// ---------- //

		this.root.getSpatialNode().addChildNode( this.n1_1.getSpatialNode() );
		this.root.getSpatialNode().addChildNode( this.n1_2.getSpatialNode() );
	}

	/**
	 * This will run after every test
	 */
	@After
	public function destruct():Void
	{
		this.root = null;
		this.n1_1 = null;
		this.n1_2 = null;
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
		this.root.transform.position.x = 20;
		this.root.transform.position.y = 30;
		this.root.transform.position.z = 70;

		this.n1_1.transform.position.x = -20;
		this.n1_1.transform.position.y = -30;
		this.n1_1.transform.position.z = -70;

		// ------------------------ //

		var exp_root:Matrix44 = new Matrix44();
			exp_root.m41 = 20;
			exp_root.m42 = 30;
			exp_root.m43 = 70;

		var exp_n1_1_local:Matrix44 = new Matrix44();
			exp_n1_1_local.m41 = -20;
			exp_n1_1_local.m42 = -30;
			exp_n1_1_local.m43 = -70;

		var exp_n1_1_world:Matrix44 = new Matrix44();
			exp_n1_1_world.m41 = 0;
			exp_n1_1_world.m42 = 0;
			exp_n1_1_world.m43 = 0;

		var exp_n1_2_local:Matrix44 = new Matrix44();
			exp_n1_2_local.m41 = 0;
			exp_n1_2_local.m42 = 0;
			exp_n1_2_local.m43 = 0;

		var exp_n1_2_world:Matrix44 = new Matrix44();
			exp_n1_2_world.m41 = 20;
			exp_n1_2_world.m42 = 30;
			exp_n1_2_world.m43 = 70;

		// ------------------------ //

		var root_local:Matrix44 = cast this.root.transform.getMatrix( null, Space.LOCAL );
		var root_world:Matrix44 = cast this.root.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( exp_root, root_local ) );
		Assert.isTrue( Matrix44.isEqual( exp_root, root_world ) );

		// ------------------------ //

		var n1_1_local:Matrix44 = cast this.n1_1.transform.getMatrix( null, Space.LOCAL );
		var n1_1_world:Matrix44 = cast this.n1_1.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( exp_n1_1_local, n1_1_local ) );
		Assert.isTrue( Matrix44.isEqual( exp_n1_1_world, n1_1_world ) );

		// ------------------------ //

		var n1_2_local:Matrix44 = cast this.n1_2.transform.getMatrix( null, Space.LOCAL );
		var n1_2_world:Matrix44 = cast this.n1_2.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( exp_n1_2_local, n1_2_local ) );
		Assert.isTrue( Matrix44.isEqual( exp_n1_2_world, n1_2_world ) );
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
		this.root.transform.scale.x = 2;
		this.root.transform.scale.y = 0.5;
		this.root.transform.scale.z = 1;

		this.n1_1.transform.scale.x = 0.5;
		this.n1_1.transform.scale.y = 2;
		this.n1_1.transform.scale.z = 1;

		// ------------------------ //

		var exp_root:Matrix44 = new Matrix44();
			exp_root.m11 = 2;
			exp_root.m22 = 0.5;
			exp_root.m33 = 1;

		var exp_n1_1_local:Matrix44 = new Matrix44();
			exp_n1_1_local.m11 = 0.5;
			exp_n1_1_local.m22 = 2;
			exp_n1_1_local.m33 = 1;

		var exp_n1_1_world:Matrix44 = new Matrix44();
			exp_n1_1_world.m11 = 1;
			exp_n1_1_world.m22 = 1;
			exp_n1_1_world.m33 = 1;

		var exp_n1_2_local:Matrix44 = new Matrix44();
			exp_n1_2_local.m11 = 1;
			exp_n1_2_local.m22 = 1;
			exp_n1_2_local.m33 = 1;

		var exp_n1_2_world:Matrix44 = new Matrix44();
			exp_n1_2_world.m11 = 2;
			exp_n1_2_world.m22 = 0.5;
			exp_n1_2_world.m33 = 1;

		// ------------------------ //

		var root_local:Matrix44 = cast this.root.transform.getMatrix( null, Space.LOCAL );
		var root_world:Matrix44 = cast this.root.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( exp_root, root_local ) );
		Assert.isTrue( Matrix44.isEqual( exp_root, root_world ) );

		// ------------------------ //

		var n1_1_local:Matrix44 = cast this.n1_1.transform.getMatrix( null, Space.LOCAL );
		var n1_1_world:Matrix44 = cast this.n1_1.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( exp_n1_1_local, n1_1_local ) );
		Assert.isTrue( Matrix44.isEqual( exp_n1_1_world, n1_1_world ) );

		// ------------------------ //

		var n1_2_local:Matrix44 = cast this.n1_2.transform.getMatrix( null, Space.LOCAL );
		var n1_2_world:Matrix44 = cast this.n1_2.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( exp_n1_2_local, n1_2_local ) );
		Assert.isTrue( Matrix44.isEqual( exp_n1_2_world, n1_2_world ) );
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
		var axis_root:Vector3 = new Vector3(-0.5774, -0.5774, -0.5774);
		var radian_root:Float = 120.0 * MathUtil.DEG_RAD;

		Quaternion.setAxisAngle( axis_root, radian_root, this.root.transform.rotation );

		var axis_n1_1:Vector3 = new Vector3(-0.5774, -0.5774, -0.5774);
		var radian_n1_1:Float = -120.0 * MathUtil.DEG_RAD;

		Quaternion.setAxisAngle( axis_n1_1, radian_n1_1, this.n1_1.transform.rotation );

		// ------------------- //

		var exp_root:Matrix44 = new Matrix44();
			exp_root.setArray( [  0, 0, 1, 0,
								  1, 0, 0, 0,
								  0, 1, 0, 0,
								  0, 0, 0, 1 ] );

		var exp_n1_1_local:Matrix44 = new Matrix44();
			exp_n1_1_local.setArray( [  0, 1, 0, 0,
								        0, 0, 1, 0,
								        1, 0, 0, 0,
								        0, 0, 0, 1 ] );

		var exp_n1_1_world:Matrix44 = new Matrix44();
			exp_n1_1_world.setArray( [  1, 0, 0, 0,
								        0, 1, 0, 0,
								        0, 0, 1, 0,
								        0, 0, 0, 1 ] );

		var exp_n1_2_local:Matrix44 = new Matrix44();
			exp_n1_2_local.setArray( [  1, 0, 0, 0,
								        0, 1, 0, 0,
								        0, 0, 1, 0,
								        0, 0, 0, 1 ] );

		var exp_n1_2_world:Matrix44 = new Matrix44();
			exp_n1_2_world.setArray( [  0, 0, 1, 0,
								        1, 0, 0, 0,
								        0, 1, 0, 0,
								        0, 0, 0, 1 ] );

		// ------------------------ //

		var root_local:Matrix44 = cast this.root.transform.getMatrix( null, Space.LOCAL );
		var root_world:Matrix44 = cast this.root.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( exp_root, root_local ) );
		Assert.isTrue( Matrix44.isEqual( exp_root, root_world ) );

		// ------------------------ //

		var n1_1_local:Matrix44 = cast this.n1_1.transform.getMatrix( null, Space.LOCAL );
		var n1_1_world:Matrix44 = cast this.n1_1.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( exp_n1_1_local, n1_1_local ) );
		Assert.isTrue( Matrix44.isEqual( exp_n1_1_world, n1_1_world ) );

		// ------------------------ //

		var n1_2_local:Matrix44 = cast this.n1_2.transform.getMatrix( null, Space.LOCAL );
		var n1_2_world:Matrix44 = cast this.n1_2.transform.getMatrix( null, Space.WORLD );

		Assert.isTrue( Matrix44.isEqual( exp_n1_2_local, n1_2_local ) );
		Assert.isTrue( Matrix44.isEqual( exp_n1_2_world, n1_2_world ) );
	}


}
