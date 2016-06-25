package haxe.scene.boundings.transformPolicy;

import haxe.at.dotpoint.math.MathUtil;
import haxe.at.dotpoint.math.vector.Quaternion;
import haxe.at.dotpoint.math.MathUtil;
import haxe.at.dotpoint.math.vector.Vector3;
import haxe.at.dotpoint.spatial.boundings.AABB;
import haxe.at.dotpoint.spatial.boundings.Boundings;
import haxe.at.dotpoint.math.geom.Space;
import haxe.at.dotpoint.spatial.SpatialEntity;
import haxe.at.dotpoint.spatial.transform.Transform;
import massive.munit.Assert;

/**
 * ...
 * @author RK
 */
class BoundingsTransformTest
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
		this.entity.boundings.modelSpace.width  = 20;
		this.entity.boundings.modelSpace.height = 30;
		this.entity.boundings.modelSpace.length = 70;
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
	// Transform Policy - Model/X-Space
	// ************************************************************************ //

	/**
	 * model space, transform policy, translate, single
	 */
	@Test
	//
	private function testTranslateSingle():Void
	{
		this.entity.transform.position.x =  5;
		this.entity.transform.position.y = -5;
		this.entity.transform.position.z = 15;

		// ------------------------ //

		var local:AABB = this.entity.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.entity.boundings.getBounds( Space.WORLD );
		var model:AABB = this.entity.boundings.getBounds( Space.MODEL );

		Assert.areEqual( 20, model.width  );
		Assert.areEqual( 30, model.height );
		Assert.areEqual( 70, model.length );

		Assert.areEqual( 20, local.width  );
		Assert.areEqual( 30, local.height );
		Assert.areEqual( 70, local.length );

		Assert.areEqual( 20, world.width  );
		Assert.areEqual( 30, world.height );
		Assert.areEqual( 70, world.length );

		// ------------------------ //

		Assert.areEqual( 1, this.entity.transform.scale.x );
		Assert.areEqual( 1, this.entity.transform.scale.y );
		Assert.areEqual( 1, this.entity.transform.scale.z );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( model.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( model.max, new Vector3( 20, 30, 70 ) ) );

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  5, -5, 15 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 25, 25, 85 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  5, -5, 15 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 25, 25, 85 ) ) );
	}

	/**
	 * model space, transform policy, rotation, single
	 */
	@Test
	//
	private function testRotationSingle():Void
	{
		var axis:Vector3 = new Vector3( 0, 0, 1 );
		var radian:Float = 90.0 * MathUtil.DEG_RAD;

		Quaternion.setAxisAngle( axis, radian, this.entity.transform.rotation );

		// ------------------------ //

		var local:AABB = this.entity.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.entity.boundings.getBounds( Space.WORLD );
		var model:AABB = this.entity.boundings.getBounds( Space.MODEL );

		Assert.isTrue( MathUtil.isEqual( 20, model.width  ) );
		Assert.isTrue( MathUtil.isEqual( 30, model.height ) );
		Assert.isTrue( MathUtil.isEqual( 70, model.length ) );

		Assert.isTrue( MathUtil.isEqual( 30, local.width  ) );
		Assert.isTrue( MathUtil.isEqual( 20, local.height ) );
		Assert.isTrue( MathUtil.isEqual( 70, local.length ) );

		Assert.isTrue( MathUtil.isEqual( 30, world.width  ) );
		Assert.isTrue( MathUtil.isEqual( 20, world.height ) );
		Assert.isTrue( MathUtil.isEqual( 70, world.length ) );

		// ------------------------ //

		Assert.areEqual( 1, this.entity.transform.scale.x );
		Assert.areEqual( 1, this.entity.transform.scale.y );
		Assert.areEqual( 1, this.entity.transform.scale.z );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( model.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( model.max, new Vector3( 20, 30, 70 ) ) );

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  0, -20,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 30,   0, 70 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  0, -20,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 30,   0, 70 ) ) );
	}

	/**
	 * model space, transform policy, scaling, single
	 */
	@Test
	//
	private function testScalingSingle():Void
	{
		this.entity.transform.scale.x = 0.5;
		this.entity.transform.scale.y =  2;
		this.entity.transform.scale.z = -1;

		// ------------------------ //

		var local:AABB = this.entity.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.entity.boundings.getBounds( Space.WORLD );
		var model:AABB = this.entity.boundings.getBounds( Space.MODEL );

		Assert.isTrue( MathUtil.isEqual( 20, model.width  ) );
		Assert.isTrue( MathUtil.isEqual( 30, model.height ) );
		Assert.isTrue( MathUtil.isEqual( 70, model.length ) );

		Assert.isTrue( MathUtil.isEqual( 10, local.width  ) );
		Assert.isTrue( MathUtil.isEqual( 60, local.height ) );
		Assert.isTrue( MathUtil.isEqual( 70, local.length ) );

		Assert.isTrue( MathUtil.isEqual( 10, world.width  ) );
		Assert.isTrue( MathUtil.isEqual( 60, world.height ) );
		Assert.isTrue( MathUtil.isEqual( 70, world.length ) );

		// ------------------------ //

		Assert.areEqual( 0.5, this.entity.transform.scale.x );
		Assert.areEqual(  2,  this.entity.transform.scale.y );
		Assert.areEqual( -1,  this.entity.transform.scale.z );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( model.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( model.max, new Vector3( 20, 30, 70 ) ) );

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  0,  0, -70 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 10, 60,   0 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  0,  0, -70 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 10, 60,   0 ) ) );
	}
}
