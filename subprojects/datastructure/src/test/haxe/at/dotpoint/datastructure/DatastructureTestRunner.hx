package at.dotpoint.datastructure;

import at.dotpoint.datastructure.graph.GraphContainerTest;
import at.dotpoint.datastructure.bytes.ByteSignatureTest;
import at.dotpoint.datastructure.pooling.ObjectPoolRegisterTest;
import haxe.unit.TestRunner;

/**
 * ...
 * @author RK
 */
class DatastructureTestRunner extends TestRunner
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	static public function main()
	{
		new DatastructureTestRunner();
	}

	//
	public function new( )
	{
		super();

		this.add( new ObjectPoolRegisterTest() );
		this.add( new ByteSignatureTest() );
		this.add( new GraphContainerTest() );
		this.run();
	}

}