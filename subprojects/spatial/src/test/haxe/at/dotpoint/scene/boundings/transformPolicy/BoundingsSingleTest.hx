package haxe.scene.boundings.transformPolicy;

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
class BoundingsSingleTest
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
	// Transform Policy - Model/X-Space
	// ************************************************************************ //

	/**
	 * model space, transform policy, static, single
	 */
	@Test
	//
	private function testModelSingle():Void
	{
		this.entity.boundings.modelSpace.width  = 20;
		this.entity.boundings.modelSpace.height = 30;
		this.entity.boundings.modelSpace.length = 70;

		// ------------------------ //

		var local:AABB = this.entity.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.entity.boundings.getBounds( Space.WORLD );
		var model:AABB = this.entity.boundings.getBounds( Space.MODEL );

		Assert.areEqual( 20, local.width  );
		Assert.areEqual( 30, local.height );
		Assert.areEqual( 70, local.length );

		Assert.areEqual( 20, world.width  );
		Assert.areEqual( 30, world.height );
		Assert.areEqual( 70, world.length );

		Assert.areEqual( 20, model.width  );
		Assert.areEqual( 30, model.height );
		Assert.areEqual( 70, model.length );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( model.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( model.max, new Vector3( 20, 30, 70 ) ) );

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 20, 30, 70 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 20, 30, 70 ) ) );

		// ------------------------ //

		Assert.areEqual( 1, this.entity.transform.scale.x );
		Assert.areEqual( 1, this.entity.transform.scale.y );
		Assert.areEqual( 1, this.entity.transform.scale.z );
	}

	/**
	 * local space, transform policy, static, single
	 */
	@Test
	//
	private function testLocalSingle():Void
	{
		this.entity.boundings.modelSpace.width  = 20;
		this.entity.boundings.modelSpace.height = 30;
		this.entity.boundings.modelSpace.length = 70;

		this.entity.boundings.localSpace.width  = 40;
		this.entity.boundings.localSpace.height = 15;
		this.entity.boundings.localSpace.length = 90;

		// ------------------------ //

		var local:AABB = this.entity.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.entity.boundings.getBounds( Space.WORLD );
		var model:AABB = this.entity.boundings.getBounds( Space.MODEL );

		Assert.areEqual( 40, local.width  );
		Assert.areEqual( 15, local.height );
		Assert.areEqual( 90, local.length );

		Assert.areEqual( 40, world.width  );
		Assert.areEqual( 15, world.height );
		Assert.areEqual( 90, world.length );

		Assert.areEqual( 20, model.width  );
		Assert.areEqual( 30, model.height );
		Assert.areEqual( 70, model.length );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( model.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( model.max, new Vector3( 20, 30, 70 ) ) );

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 40, 15, 90 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 40, 15, 90 ) ) );

		// ------------------------ //

		Assert.areEqual( 2,                     this.entity.transform.scale.x );
		Assert.areEqual( 0.5,                   this.entity.transform.scale.y );
		Assert.areEqual( 1.2857142857142858,    this.entity.transform.scale.z );
	}

	/**
	 * world space, transform policy, static, single
	 */
	@Test
	//
	private function testWorldSingle():Void
	{
		this.entity.boundings.modelSpace.width  = 20;
		this.entity.boundings.modelSpace.height = 30;
		this.entity.boundings.modelSpace.length = 70;

		this.entity.boundings.worldSpace.width  = 40;
		this.entity.boundings.worldSpace.height = 15;
		this.entity.boundings.worldSpace.length = 90;

		// ------------------------ //

		var local:AABB = this.entity.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.entity.boundings.getBounds( Space.WORLD );
		var model:AABB = this.entity.boundings.getBounds( Space.MODEL );

		Assert.areEqual( 40, local.width  );
		Assert.areEqual( 15, local.height );
		Assert.areEqual( 90, local.length );

		Assert.areEqual( 40, world.width  );
		Assert.areEqual( 15, world.height );
		Assert.areEqual( 90, world.length );

		Assert.areEqual( 20, model.width  );
		Assert.areEqual( 30, model.height );
		Assert.areEqual( 70, model.length );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( model.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( model.max, new Vector3( 20, 30, 70 ) ) );

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 40, 15, 90 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 40, 15, 90 ) ) );

		// ------------------------ //

		Assert.areEqual( 2,                     this.entity.transform.scale.x );
		Assert.areEqual( 0.5,                   this.entity.transform.scale.y );
		Assert.areEqual( 1.2857142857142858,    this.entity.transform.scale.z );
	}

	// ************************************************************************ //
	// Transform Policy - X-Space/Model
	// ************************************************************************ //

	/**
	 * local space, transform policy, static, single
	 */
	@Test
	//
	private function testLocalSingleReversed():Void
	{
		this.entity.boundings.localSpace.width  = 40;
		this.entity.boundings.localSpace.height = 15;
		this.entity.boundings.localSpace.length = 90;

		this.entity.boundings.modelSpace.width  = 20;
		this.entity.boundings.modelSpace.height = 30;
		this.entity.boundings.modelSpace.length = 70;

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
	}

}
