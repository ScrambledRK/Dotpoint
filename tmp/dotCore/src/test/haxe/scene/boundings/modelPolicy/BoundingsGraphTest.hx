package haxe.scene.boundings.modelPolicy;

import haxe.at.dotpoint.spatial.SpatialEntity;
import haxe.at.dotpoint.spatial.boundings.BoundingChangePolicy;
import haxe.at.dotpoint.math.vector.Vector3;
import haxe.at.dotpoint.spatial.boundings.AABB;
import haxe.at.dotpoint.spatial.boundings.Boundings;
import haxe.at.dotpoint.math.geom.Space;
import haxe.at.dotpoint.spatial.transform.Transform;
import massive.munit.Assert;

/**
 * ...
 * @author RK
 */
class BoundingsGraphTest
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
		this.root.boundings.changePolicy = BoundingChangePolicy.CHANGE_MODELBOUNDS;

		this.n1_1 = new SpatialEntity();
		this.n1_2 = new SpatialEntity();

		// ---------- //

		this.root.getSpatialNode().addChildNode( this.n1_1.getSpatialNode() );
		this.root.getSpatialNode().addChildNode( this.n1_2.getSpatialNode() );

		// ---------- //

		this.n1_1.boundings.modelSpace.setExtensions( new Vector3( 10, 0, 10 ), new Vector3( 20, 10, 20 ) );
		this.n1_2.boundings.modelSpace.setExtensions( new Vector3( 0, 10, 10 ), new Vector3( 10, 20, 20 ) );
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
	// Transform Policy - Model/X-Space
	// ************************************************************************ //

	/**
	 * model space, transform policy, static, single
	 */
	@Test
	//
	private function testReadOnly():Void
	{
		var local:AABB = this.root.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.root.boundings.getBounds( Space.WORLD );
		var model:AABB = this.root.boundings.getBounds( Space.MODEL );

		Assert.areEqual( 20, local.width  );
		Assert.areEqual( 20, local.height );
		Assert.areEqual( 10, local.length );

		Assert.areEqual( 20, world.width  );
		Assert.areEqual( 20, world.height );
		Assert.areEqual( 10, world.length );

		Assert.areEqual( -2, model.width  );
		Assert.areEqual( -2, model.height );
		Assert.areEqual( -2, model.length );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  0,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 20, 20, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  0,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 20, 20, 20 ) ) );

		// ------------------------ //

		Assert.areEqual( 1, this.root.transform.scale.x );
		Assert.areEqual( 1, this.root.transform.scale.y );
		Assert.areEqual( 1, this.root.transform.scale.z );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.localSpace.min, new Vector3( 10,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.localSpace.max, new Vector3( 20, 10, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.worldSpace.min, new Vector3( 10,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.worldSpace.max, new Vector3( 20, 10, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.localSpace.min, new Vector3(  0, 10, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.localSpace.max, new Vector3( 10, 20, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.worldSpace.min, new Vector3(  0, 10, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.worldSpace.max, new Vector3( 10, 20, 20 ) ) );
	}

	/**
	 * model space, transform policy, static, single
	 */
	@Test
	//
	private function testChangeModel():Void
	{
		this.root.boundings.modelSpace.width  = 10;
		this.root.boundings.modelSpace.height = 40;
		this.root.boundings.modelSpace.length = 10;

		// ------------------------ //

		var local:AABB = this.root.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.root.boundings.getBounds( Space.WORLD );
		var model:AABB = this.root.boundings.getBounds( Space.MODEL );

		Assert.areEqual( 10, local.width  );
		Assert.areEqual( 40, local.height );
		Assert.areEqual( 10, local.length );

		Assert.areEqual( 10, world.width  );
		Assert.areEqual( 40, world.height );
		Assert.areEqual( 10, world.length );

		Assert.areEqual( 10, model.width  );
		Assert.areEqual( 40, model.height );
		Assert.areEqual( 10, model.length );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 10, 40, 10 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 10, 40, 10 ) ) );

		// ------------------------ //

		Assert.areEqual( 1, this.root.transform.scale.x );
		Assert.areEqual( 1, this.root.transform.scale.y );
		Assert.areEqual( 1, this.root.transform.scale.z );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.localSpace.min, new Vector3( 10,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.localSpace.max, new Vector3( 20, 10, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.worldSpace.min, new Vector3( 10,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.worldSpace.max, new Vector3( 20, 10, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.localSpace.min, new Vector3(  0, 10, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.localSpace.max, new Vector3( 10, 20, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.worldSpace.min, new Vector3(  0, 10, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.worldSpace.max, new Vector3( 10, 20, 20 ) ) );
	}

	/**
	 * model space, transform policy, static, single
	 */
	@Test
	//
	private function testChangeLocal():Void
	{
		this.root.boundings.localSpace.width  = 10;
		this.root.boundings.localSpace.height = 40;
		this.root.boundings.localSpace.length = 10;

		// ------------------------ //

		var local:AABB = this.root.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.root.boundings.getBounds( Space.WORLD );
		var model:AABB = this.root.boundings.getBounds( Space.MODEL );

		Assert.areEqual( 10, local.width  );
		Assert.areEqual( 40, local.height );
		Assert.areEqual( 10, local.length );

		Assert.areEqual( 10, world.width  );
		Assert.areEqual( 40, world.height );
		Assert.areEqual( 10, world.length );

		Assert.areEqual( 10, model.width  );
		Assert.areEqual( 40, model.height );
		Assert.areEqual( 10, model.length );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 10, 40, 10 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 10, 40, 10 ) ) );

		// ------------------------ //

		Assert.areEqual( 1, this.root.transform.scale.x );
		Assert.areEqual( 1, this.root.transform.scale.y );
		Assert.areEqual( 1, this.root.transform.scale.z );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.localSpace.min, new Vector3( 10,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.localSpace.max, new Vector3( 20, 10, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.worldSpace.min, new Vector3( 10,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.worldSpace.max, new Vector3( 20, 10, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.localSpace.min, new Vector3(  0, 10, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.localSpace.max, new Vector3( 10, 20, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.worldSpace.min, new Vector3(  0, 10, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.worldSpace.max, new Vector3( 10, 20, 20 ) ) );
	}

	/**
	 * model space, transform policy, static, single
	 */
	@Test
	//
	private function testChangeWorld():Void
	{
		this.root.boundings.worldSpace.width  = 10;
		this.root.boundings.worldSpace.height = 40;
		this.root.boundings.worldSpace.length = 10;

		// ------------------------ //

		var local:AABB = this.root.boundings.getBounds( Space.LOCAL );
		var world:AABB = this.root.boundings.getBounds( Space.WORLD );
		var model:AABB = this.root.boundings.getBounds( Space.MODEL );

		Assert.areEqual( 10, local.width  );
		Assert.areEqual( 40, local.height );
		Assert.areEqual( 10, local.length );

		Assert.areEqual( 10, world.width  );
		Assert.areEqual( 40, world.height );
		Assert.areEqual( 10, world.length );

		Assert.areEqual( 10, model.width  );
		Assert.areEqual( 40, model.height );
		Assert.areEqual( 10, model.length );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( local.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( local.max, new Vector3( 10, 40, 10 ) ) );

		Assert.isTrue( Vector3.isEqual( world.min, new Vector3(  0,  0,  0 ) ) );
		Assert.isTrue( Vector3.isEqual( world.max, new Vector3( 10, 40, 10 ) ) );

		// ------------------------ //

		Assert.areEqual( 1, this.root.transform.scale.x );
		Assert.areEqual( 1, this.root.transform.scale.y );
		Assert.areEqual( 1, this.root.transform.scale.z );

		// ------------------------ //

		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.localSpace.min, new Vector3( 10,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.localSpace.max, new Vector3( 20, 10, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.worldSpace.min, new Vector3( 10,  0, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_1.boundings.worldSpace.max, new Vector3( 20, 10, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.localSpace.min, new Vector3(  0, 10, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.localSpace.max, new Vector3( 10, 20, 20 ) ) );

		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.worldSpace.min, new Vector3(  0, 10, 10 ) ) );
		Assert.isTrue( Vector3.isEqual( this.n1_2.boundings.worldSpace.max, new Vector3( 10, 20, 20 ) ) );
	}

}
