package at.dotpoint.math.tensor.matrix;
import at.dotpoint.math.tensor.matrix.AMatrix44Test;
import at.dotpoint.math.tensor.matrix.Matrix44;

/**
 * 2016-12-05
 * @author RK
 */
class Matrix44Test extends AMatrix44Test<Matrix44>
{

	public function new( )
	{
		super();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	override private function createMatrix():Matrix44
	{
		return new Matrix44();
	}

}
