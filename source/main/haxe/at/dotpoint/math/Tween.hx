package at.dotpoint.math;

/**
 *
 */
class Tween
{

	//
	private var tween:Float->Float;

	//
	public var min:Float;
	public var max:Float;

	//
	public function new( ?tween:Float->Float, min:Float = 0, max:Float = 1 )
	{
		this.tween = tween != null ? tween : Tween.linear;

		this.min = min;
		this.max = max;
	}

	//
	public function get( delta:Float ):Float
	{
		return this.min + (this.max - this.min) * this.tween(delta);
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	public static function linear( t:Float ):Float
	{
		return t;
	}

	/**
	 *
	 */
	public static function inQuad( t:Float ):Float
	{
		return t*t;
	}

	/**
	 *
	 */
	public static function outQuad( t:Float ):Float
	{
		return t*(2-t);
	}

	/**
	 *
	 */
	public static function inOutQuad( t:Float ):Float
	{
		return t<.5 ? 2*t*t : -1+(4-2*t)*t;
	}

	/**
	 *
	 */
	public static function inCubic( t:Float ):Float
	{
		return t*t*t;
	}

	/**
	 *
	 */
	public static function outCubic( t:Float ):Float
	{
		return (--t)*t*t+1;
	}

	/**
	 *
	 */
	public static function inOutCubic( t:Float ):Float
	{
		return t<.5 ? 4*t*t*t : (t-1)*(2*t-2)*(2*t-2)+1;
	}

	/**
	 *
	 */
	public static function inQuart( t:Float ):Float
	{
		return t*t*t*t;
	}

	/**
	 *
	 */
	public static function outQuart( t:Float ):Float
	{
		return 1-(--t)*t*t*t;
	}

	/**
	 *
	 */
	public static function inOutQuart( t:Float ):Float
	{
		return t<.5 ? 8*t*t*t*t : 1-8*(--t)*t*t*t;
	}


}
