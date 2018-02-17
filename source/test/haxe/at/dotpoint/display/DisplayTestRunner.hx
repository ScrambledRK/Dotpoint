package at.dotpoint.display;

import haxe.unit.TestRunner;

/**
 * ...
 * @author RK
 */
class DisplayTestRunner extends TestRunner
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	static public function main()
	{
		new DisplayTestRunner();
	}

	//
	public function new( )
	{
		super();

//		this.add( new ObjectPoolRegisterTest() );
//		this.add( new ByteSignatureTest() );
		this.run();
	}

}