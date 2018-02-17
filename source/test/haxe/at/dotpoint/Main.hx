package at.dotpoint;

//import at.dotpoint.gis.GISTestRunner;
import at.dotpoint.datastructure.DatastructureTestRunner;
//import at.dotpoint.loader.LoaderTestRunner;
//import at.dotpoint.spatial.SpatialTestRunner;
import at.dotpoint.math.MathTestRunner;

/**
 * ...
 * @author RK
 */
class Main
{

	/**
	 * 
	 */
	static function main( )
	{
		var math:MathTestRunner = new MathTestRunner();
		//var spatial:SpatialTestRunner = new SpatialTestRunner();
		//var loader:LoaderTestRunner = new LoaderTestRunner();
		var byte:DatastructureTestRunner = new DatastructureTestRunner();
		//var gis:GISTestRunner = new GISTestRunner();
	}

}