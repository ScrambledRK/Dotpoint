package haxe;

import massive.munit.TestSuite;

/**
 * Auto generated Test Suite for MassiveUnit.
 * Refer to munit command line tool for more information (haxelib run munit)
 */

class TestSuite extends massive.munit.TestSuite
{		

	public function new()
	{
		super();
		
		add(haxe.core.ds.TreeNodeTest);
		add(haxe.core.ds.VectorSetTest);
		add(haxe.core.entity.EntityTest);
		add(haxe.core.event.EventTest);
		add(haxe.loader.LoaderQueueTest);
		add(haxe.loader.LoaderTest);
		add(haxe.logger.ConsoleTest);
		add(haxe.logger.EmptyLogTest);
		add(haxe.math.QuaternionTest);
		add(haxe.math.Vector2Test);
		add(haxe.math.Vector3Test);
		add(haxe.scene.boundings.modelPolicy.BoundingsGraphTest);
		add(haxe.scene.boundings.modelPolicy.BoundingsSingleTest);
		add(haxe.scene.boundings.modelPolicy.BoundingsTransformTest);
		add(haxe.scene.boundings.transformPolicy.BoundingsGraphTest);
		add(haxe.scene.boundings.transformPolicy.BoundingsSingleTest);
		add(haxe.scene.boundings.transformPolicy.BoundingsTransformTest);
		add(haxe.scene.transform.TransformGraphTest);
		add(haxe.scene.transform.TransformSingleTest);
	}
}
