package at.dotpoint.spatial.transform;

/**
 * 2016-08-12
 * @author RK
 */
class LazyTransformTest extends ATransformTest
{

	// ************************************************************************ //
	// Setup
	// ************************************************************************ //

	//
	public function new()
	{
		super();
	}

	//
	override public function setup()
	{
		this.transform = new LazyTransform();
	}

}
