package haxe.core.ds;

import haxe.at.dotpoint.core.datastructure.VectorSet;
import massive.munit.Assert;

/**
 * ...
 * @author RK
 */
class VectorSetTest
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() 
	{
		
	}
	
	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //
	
	/**
	 * 
	 */
	@Test
	public function quickTest():Void
	{
		var obj1:TObj = new TObj( "o1" );
		var obj2:TObj = new TObj( "o2" );
		var obj3:TObj = new TObj( "o3" );
		
		var set:VectorSet<Dynamic> = new VectorSet<Dynamic>(1, true);
			set.add( obj1 );
			set.add( obj1 );
			set.add( obj2 );
			set.add( obj1 );
			
		Assert.isTrue( set.size() == 2 );
		
		set.remove( obj1 );
		set.remove( obj3 );
		
		Assert.isTrue( set.size() == 1 );
		
		set.add( null );
		
		Assert.isTrue( set.size() == 1 );
	}
	
	/**
	 * 
	 */
	@Test
	public function noResize():Void
	{
		var obj1:TObj = new TObj( "o1" );
		var obj2:TObj = new TObj( "o2" );
		var obj3:TObj = new TObj( "o3" );
		
		var set:VectorSet<Dynamic> = new VectorSet<Dynamic>(1, false);
		
		set.add( obj1 );
		set.add( obj1 );
			
		Assert.isTrue( set.size() == 1 );
		
		set.remove( obj1 );
		set.add( obj2 );
		
		Assert.isTrue( set.size() == 1 );
		
		var throws:Bool = false;
		
		try
		{
			set.add( obj3 );
		}
		catch( error:Dynamic )
		{
			throws = true;
		}
		
		Assert.isTrue( throws );
		
	}
}

class TObj
{
	public var id:String;
	
	public function new ( id:String )
	{
		this.id = id;
	}
	
	public function toString():String
	{
		return this.id;
	}
}