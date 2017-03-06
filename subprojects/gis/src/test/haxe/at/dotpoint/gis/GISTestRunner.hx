package at.dotpoint.gis;

import haxe.unit.TestRunner;

/**
 * ...
 * @author RK
 */
class GISTestRunner extends TestRunner 
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	static public function main()
	{
		new GISTestRunner();
	}

	//
	public function new( )
	{
		super();

		//this.add( new CubeTest() );
		this.run();
	}
	
}