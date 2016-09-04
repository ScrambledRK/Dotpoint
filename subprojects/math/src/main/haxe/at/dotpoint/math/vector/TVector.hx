package at.dotpoint.math.vector;

typedef TVector2 = {
	var x:Float;
	var y:Float;
}

typedef TVector3 = { > TVector2,
	var z:Float;
	var w:Float;
}

//
class Vector2F
{
	public var x:Float;
	public var y:Float;

	public function new( x:Float = 0, y:Float = 0 ):Void
	{
		this.x = x;
		this.y = y;
	}
}

//
class Vector3F
{
	public var x:Float;
	public var y:Float;
	public var z:Float;
	public var w:Float;

	public function new( x:Float = 0, y:Float = 0, z:Float = 0, w:Float = 1 )
	{
		this.x = x;
		this.y = y;
		this.z = z;
		this.w = w;
	}
}

