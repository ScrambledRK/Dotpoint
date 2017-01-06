package at.dotpoint.math;


import at.dotpoint.math.vector.Vector2Test;
import at.dotpoint.math.vector.Vector3Test;
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
		this.run();
    }

}