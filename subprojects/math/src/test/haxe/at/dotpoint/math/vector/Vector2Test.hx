package at.dotpoint.math.vector;

/**
 * 2016-12-05
 * @author RK
 */
class Vector2Test extends AVector2Test<Vector2>
{

	public function new( )
	{
		super();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	override private function createVector():Vector2
	{
		return new Vector2();
	}

}
