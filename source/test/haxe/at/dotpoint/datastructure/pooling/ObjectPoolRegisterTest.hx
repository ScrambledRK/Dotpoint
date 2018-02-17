package at.dotpoint.datastructure.pooling;

import haxe.unit.TestCase;
using at.dotpoint.unit.TestCaseHelper;

/**
 * ...
 * @author RK
 */
class ObjectPoolRegisterTest extends TestCase 
{

	//
	public function testIntegration()
	{
		var pool:IObjectPoolRegister = new ObjectPoolRegister(2);		

		aEquals( 0, pool.recieveIndex(), "1.1 recieve" );	
		aEquals( 1, pool.recieveIndex(), "1.2 recieve" );	
		aEquals( 2, pool.recieveIndex(), "1.3 recieve outside" );	
		
		try
		{
			pool.returnIndex( 2 );
		}
		catch( error:Dynamic )
		{
			aTrue( Std.string(error).indexOf("outside bounds") != -1, "return index outside bounds" );
		}		
		
		try
		{
			pool.resize( 1 );
		}
		catch( error:Dynamic )
		{
			aTrue( Std.string(error).indexOf("allocated") != -1, "resize too small" );
		}
		
		// --------------- //
		
		var pool:IObjectPoolRegister = new ObjectPoolRegister(4);		

		aEquals( 0, pool.recieveIndex(), "2.1 recieve" );	
		aEquals( 1, pool.recieveIndex(), "2.2 recieve" );	
		
		pool.returnIndex( 0 );
		
		aEquals( 0, pool.recieveIndex(), "2.3 recieve" );	// previously returned
		aEquals( 2, pool.recieveIndex(), "2.4 recieve" );	// next in turn
		
		aEquals( 1, pool.getSizeFree(),  "2.5 size free" );		
		aEquals( 3, pool.recieveIndex(), "2.6 recieve" );	
		
		aEquals( 0, pool.getSizeFree(), "2.7 is maxed out" );
	}
	
	//
	public function testRecieveIndex()
	{
		var pool:IObjectPoolRegister = new ObjectPoolRegister(1);		
		var result:Int = pool.recieveIndex();		

		assertEquals( 0, result );
	}
	
	//
	public function testReturnIndex()
	{
		var pool:IObjectPoolRegister = new ObjectPoolRegister(1);			
			pool.returnIndex( pool.recieveIndex() );

		assertEquals( 0, pool.recieveIndex() );
	}
	
	//
	public function testResize()
	{
		var pool:IObjectPoolRegister = new ObjectPoolRegister(1);			
			pool.resize( 2 );
	
		assertEquals( 2, pool.getSizeTotal() );
	}	
	
	//
	public function testSizeTotal()
	{
		var pool:IObjectPoolRegister = new ObjectPoolRegister(1);		
		var result:Int = pool.getSizeTotal();
		
		assertEquals( 1, result );
	}
	
	//
	public function testSizeFree()
	{
		var pool:IObjectPoolRegister = new ObjectPoolRegister(1);		
		var result:Int = pool.getSizeFree();
		
		assertEquals( 1, result );
	}
	
}