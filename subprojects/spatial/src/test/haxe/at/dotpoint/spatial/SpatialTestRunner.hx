package at.dotpoint.spatial;

import at.dotpoint.spatial.geometry.GeometryTypeTest;
import haxe.unit.TestRunner;

/**
 * ...
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

		this.add( new GeometryTypeTest() );
		this.run();
    }

}