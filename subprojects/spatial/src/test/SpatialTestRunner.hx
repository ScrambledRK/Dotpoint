package ;

import haxe.at.dotpoint.spatial.transform.LazyTransformTest;
import haxe.unit.TestRunner;


/**
 * 2016-08-12
 * @author RK
 */
class SpatialTestRunner extends TestRunner
{

    // ************************************************************************ //
    // Constructor
    // ************************************************************************ //

    //
    static public function main()
    {
        new SpatialTestRunner();
    }

    //
    public function new( )
    {
		super();

		this.add( new LazyTransformTest() );
		this.run();
    }

}
