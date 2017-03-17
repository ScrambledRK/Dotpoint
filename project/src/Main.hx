package;
import at.dotpoint.datastructure.DatastructureTestRunner;
import at.dotpoint.gis.GISTestRunner;
import at.dotpoint.loader.LoaderTestRunner;
import at.dotpoint.math.MathTestRunner;
import at.dotpoint.spatial.SpatialTestRunner;

/**
 * ...
 * @author RK
 */
class Main 
{

	/**
	 * 
	 */
	static function main()
	{
		var math:MathTestRunner = new MathTestRunner();
		var spatial:SpatialTestRunner = new SpatialTestRunner();
		var loader:LoaderTestRunner = new LoaderTestRunner();
		var byte:DatastructureTestRunner = new DatastructureTestRunner();
		var gis:GISTestRunner = new GISTestRunner();
	}
	
}