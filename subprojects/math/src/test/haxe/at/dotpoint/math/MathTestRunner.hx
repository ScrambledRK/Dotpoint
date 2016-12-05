package at.dotpoint.math;

import at.dotpoint.math.vector.QuaternionTest;
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

		this.add( new QuaternionTest() );
		this.run();
    }

}