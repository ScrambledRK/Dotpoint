package at.dotpoint.loader;

import haxe.unit.TestRunner;

//
class LoaderTestRunner extends TestRunner
{
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	static public function main()
	{
		new LoaderTestRunner();
	}

	//
	public function new( )
	{
		super();

		this.add( new DataRequestTest() );
		this.run();
	}
}
