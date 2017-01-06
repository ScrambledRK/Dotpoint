package at.dotpoint.math.vector;

/**
 * 2016-12-05
 * @author RK
 */
class Vector3Test extends AVector3Test<Vector3>
{

	public function new( )
	{
		super();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	override private function createVector():Vector3
	{
		return new Vector3();
	}

}
