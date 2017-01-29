package at.dotpoint.math.tensor.quaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;

/**
 * 2016-12-05
 * @author RK
 */
class QuaternionTest extends AQuaternionTest<Quaternion>
{

	public function new( )
	{
		super();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	override private function createQuaternion():Quaternion
	{
		return new Quaternion();
	}

}
