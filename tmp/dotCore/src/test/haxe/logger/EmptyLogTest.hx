package haxe.logger;

import haxe.at.dotpoint.logger.Log;

/**
 * ...
 * @author RK
 */
class EmptyLogTest
{

	// ************************************************************************ //
	// CONSTRUCTOR
	// ************************************************************************ //	
	
	public function new() 
	{
		
	}
	
	@Before
    public function setup():Void
    {
       
    }

    @After
    public function tearDown():Void
    {
		
    }
	
	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //	
	
	/**
	 * 
	 */
	@Test
	public function testSetup():Void
	{
		Log.info( "info" );
		Log.warn( "warn" );
		Log.error( "error" );
	}
}