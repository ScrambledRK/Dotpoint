package at.dotpoint.math.tensor;

import utest.Assert;

/**
 *
 */
class Vector3Test extends Vector3GenericTest<Vector3>
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

@:generic class Vector3GenericTest<T:IVector<Vector3>>
{

	//
	public function new() {};

	//
	public function testImplicitConstruction()
	{
		var result = new Vector3();

		Assert.equals( 0., result.x );
		Assert.equals( 0., result.y );
		Assert.equals( 0., result.z );
	}

	//
	public function testFromArray()
	{
		var a:Vector3 = [3.,4.,5.];

		Assert.equals( 3., a.x );
		Assert.equals( 4., a.y );
		Assert.equals( 5., a.z );
	}

	//
	public function testToArray()
	{
		var a:Array<Float> = new Vector3( 3., 4., 5. );

		Assert.equals( 3., a[0] );
		Assert.equals( 4., a[1] );
		Assert.equals( 5., a[2] );
	}

	//
	public function testExplicitArrayAccess()
	{
		var a:Vector3 = new Vector3( 3., 4., 5. );

		Assert.equals( 3., a[0] );
		Assert.equals( 4., a[1] );
		Assert.equals( 5., a[2] );
	}

	//
	public function testImplicitArrayAccess()
	{
		var a:Vector3 = new Vector3( 1., 1., 1. );

		Assert.equals( 3, a.numComponents );

		for( j in 0...3 )
			Assert.equals( 1., a[j] );
	}

	//
	public function testMethodChaining()
	{
		var c = new Vector3( 1., 2., 4. ).add( new Vector3( 3., 4., 5. ) );

		Assert.equals( 4., c.x );
		Assert.equals( 6., c.y );
		Assert.equals( 9., c.z );
	}

	//
//	public function testRotation()
//	{
//		var a = new Vector3( 1, 0, 0 );
//		var b = new Vector3( 0, 1, 0 );
//
//		Assert.equals( Math.PI * 0.5, a.angle( b, [0.,0.,1.] ) );
//	}

	//
//	public function testDistance()
//	{
//		var a:T = this.create( 1, 0 );
//		var b:T = this.create( 0, 1 );
//		var c:T = this.create( 0, 0 );
//			c.add( b ).sub( a ).add( a );
//
//		Assert.equals( 2., a.distance( c, true ) );
//	}

	//
	public function create( x:Float, y:Float ):T
	{
		return null;
	}
}
