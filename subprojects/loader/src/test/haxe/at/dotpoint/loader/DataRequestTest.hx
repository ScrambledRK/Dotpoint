package at.dotpoint.loader;
import haxe.unit.TestCase;


/**
 * ...
 * @author RK
 */
class DataRequestTest extends TestCase
{
	
	/**
	 * 
	 */
	@Test
	public function testSetup():Void
	{
		var loader:DataRequest = DataRequest.createFromURL( "image.jpg" );
		
		assertFalse( loader.isComplete );
		assertFalse( loader.isProcessing );
	}

}