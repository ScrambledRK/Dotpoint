package at.dotpoint.math;

/**
 *
 */
class Interpolation
{

	//
	private var tween:Float->Float;

	//
	public var min:Float;
	public var max:Float;

	//
	public function new( ?tween:Float->Float, min:Float = 0, max:Float = 1 )
	{
		this.tween = tween != null ? tween : Interpolation.linear;

		this.min = min;
		this.max = max;
	}

	//
	public function get( delta:Float ):Float
	{
		return interpolate( this.min, this.max, delta, this.tween );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	inline public static function interpolate( min:Float, max:Float, delta:Float, method:Float->Float ):Float
	{
		return min + (max - min) * method( delta );
	}

	//
	inline public static function linear( t:Float ):Float
	{
		return t;
	}

	//
	inline public static function inQuad( t:Float ):Float
	{
		return t*t;
	}

	//
	inline public static function outQuad( t:Float ):Float
	{
		return t*(2-t);
	}

	//
	inline public static function inOutQuad( t:Float ):Float
	{
		return t<.5 ? 2*t*t : -1+(4-2*t)*t;
	}

	//
	inline public static function inCubic( t:Float ):Float
	{
		return t*t*t;
	}

	//
	inline public static function outCubic( t:Float ):Float
	{
		return (--t)*t*t+1;
	}

	//
	inline public static function inOutCubic( t:Float ):Float
	{
		return t<.5 ? 4*t*t*t : (t-1)*(2*t-2)*(2*t-2)+1;
	}

	//
	inline public static function inQuart( t:Float ):Float
	{
		return t*t*t*t;
	}

	//
	inline public static function outQuart( t:Float ):Float
	{
		return 1-(--t)*t*t*t;
	}

	//
	inline public static function inOutQuart( t:Float ):Float
	{
		return t<.5 ? 8*t*t*t*t : 1-8*(--t)*t*t*t;
	}


}
