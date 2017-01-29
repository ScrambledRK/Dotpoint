package at.dotpoint.math;


import at.dotpoint.math.tensor.matrix.Matrix33Test;
import at.dotpoint.math.tensor.matrix.Matrix44Test;
import at.dotpoint.math.tensor.quaternion.QuaternionTest;
import at.dotpoint.math.tensor.vector.Vector2Test;
import at.dotpoint.math.tensor.vector.Vector3Test;
import haxe.unit.TestRunner;

/**
 * 2016-12-04
 * @author RK
 */
class MathTestRunner extends TestRunner
{

    // ************************************************************************ //
    // Constructor
    // ************************************************************************ //

    //
    static public function main()
    {
        new MathTestRunner();
    }

    //
    public function new( )
    {
		super();

		this.add( new Vector2Test() );
		this.add( new Vector3Test() );
		this.add( new Matrix33Test() );
		this.add( new Matrix44Test() );
		this.add( new QuaternionTest() );
		this.run();
    }

}