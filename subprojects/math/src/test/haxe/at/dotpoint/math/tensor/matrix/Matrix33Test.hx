package at.dotpoint.math.tensor.matrix;
import at.dotpoint.math.tensor.matrix.AMatrix33Test;
import at.dotpoint.math.tensor.matrix.Matrix33;

/**
 * 2016-12-05
 * @author RK
 */
class Matrix33Test extends AMatrix33Test<Matrix33>
{

	public function new( )
	{
		super();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	override private function createMatrix():Matrix33
	{
		return new Matrix33();
	}

}
