package at.dotpoint.math.tensor;

import haxe.Constraints.Constructible;
import at.dotpoint.math.spatial.Point;
import utest.Assert;

/**
 *
 */
class Vector2Test extends Vector2GenericTest<Vector3>
{
	//
	public function new() {
		super();
	};

	override public function create( x:Float, y:Float ):Vector3
	{
		return new Vector3( x, y );
	}
}

/**
 *
 */
@:generic class Vector2GenericTest<X:IVector<X>>
{

	//
	public function new() {};

	//
	public function create( x:Float, y:Float ):X
	{
		return null;
	}

	// -------------------------------------- //
	// tests

	//
	public function testDistance()
	{
		var a:Point<X> = this.create( 1, 0 );
		var b:Point<X> = this.create( 0, 1 );
		var c:Point<X> = this.create( 0, 0 );
			c.add( b ).sub( a ).add( a );

		var p:Point<X> = this.create( 0, 1 );
			p.zero().add(a);

		Assert.equals( 2., a.distance( c, true ) );
		Assert.equals( 1., p.get(0) );
	}
}
