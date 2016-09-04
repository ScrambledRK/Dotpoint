package at.dotpoint.math.geom;

import at.dotpoint.math.Axis.AxisRelative;
import at.dotpoint.math.vector.IVector2;
import at.dotpoint.math.vector.Vector2;


/**
 * ...
 * @author RK
 */
class Rectangle implements IRectangle
{

	@:isVar public var pivot(get,set):IVector2;

	// -------------------- //

	@:isVar public var min(get,null):IVector2;
	@:isVar public var max(get,null):IVector2;

	// -------------------- //

	public var width	(get,set):Float;
	public var height	(get,set):Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 *
	 * @param	pivot	x, y relative to width, height between 0 (left, top) and 1 (right, bottom)
	 */
	public function new( ?pivot:IVector2 = null )
	{
		this.pivot = pivot != null ? pivot : cast AxisRelative.TOP_LEFT_FRONT;

		this.min = new Vector2();
		this.max = new Vector2();

		this.setEmpty();
	}

	/**
	 *
	 * @return
	 */
	public function clone( ?instance:Rectangle ):Rectangle
	{
		if( instance == null )
			instance = new Rectangle();

		instance.pivot.x 	= this.pivot.x;
		instance.pivot.y 	= this.pivot.y;
		instance.min.x 		= this.min.x;
		instance.min.y 		= this.min.y;
		instance.max.x 		= this.max.x;
		instance.max.y 		= this.max.y;

		return instance;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_min():IVector2 { return this.min; }

	/**
	 *
	 * @return
	 */
	private function get_max():IVector2 { return this.max; }

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 * @return
	 */
	private function get_pivot():IVector2{ return this.pivot; }

	private function set_pivot( value:IVector2 ):IVector2
	{
		return this.pivot = value;
	}


	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 * @return
	 */
	private function get_width():Float { return this.max.x - this.min.x; }

	private function set_width( value:Float ):Float
	{
		if( value < 0 )
			throw "dimension must be positive but " + value + " given";

		if( this.isEmpty() )
			this.max.x = 0;

		var center:IVector2 = this.getPivot();

		this.min.x = center.x - value * this.pivot.x;
		this.max.x = center.x + value * (1 - this.pivot.x);

		return value;
	}

	/**
	 *
	 * @return
	 */
	private function get_height():Float { return this.max.y - this.min.y; }

	private function set_height( value:Float ):Float
	{
		if( value < 0 )
			throw "dimension must be positive but " + value + " given";

		if( this.isEmpty() )
			this.max.y = 0;

		var center:IVector2 = this.getPivot();

		this.min.y = center.y - value * this.pivot.y;
		this.max.y = center.y + value * (1 - this.pivot.y);

		return value;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 */
	public function setZero():Void
	{
		this.min.x = 0;
		this.min.y = 0;
		this.max.x = 0;
		this.max.y = 0;
	}

	/**
	 *
	 */
	public function setEmpty():Void
	{
		this.min.x =  1;
		this.min.y =  1;
		this.max.x = -1;
		this.max.y = -1;
	}

	/**
	 *
	 */
	public function isEmpty():Bool
	{
		return this.width < 0 || this.height < 0;
	}

	/**
	 *
	 */
	public function move( x:Float, y:Float ):Bool
	{
		if( this.isEmpty() )
			return false;

		this.min.x += x;
		this.min.y += y;
		this.max.x += x;
		this.max.y += y;

		return true;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 */
	public function setDimensions( w:Float, h:Float, ?p:IVector2 ):Void
	{
		if( p != null )
			this.pivot = p;

		this.width  = w;
		this.height = h;
	}

	/**
	 *
	 */
	public function setExtensions( min:IVector2, max:IVector2, ?p:IVector2 ):Void
	{
		if( p != null )
			this.pivot = p;

		if( min.x > max.x || min.y > max.y )
			throw "dimensions must be positive but max extend " + max + " is smaller than min " + min;

		this.min.x = min.x;
		this.min.y = min.y;

		this.max.x = max.x;
		this.max.y = max.y;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 * @param	position
	 * @return
	 */
	public function getPivot<T:IVector2>( ?output:T ):T
	{
		return this.getPoint( this.pivot, output );
	}

	/**
	 *
	 * @param	pivot	x, y relative to width, height between 0 (left, top) and 1 (right, bottom)
	 * @param	output
	 * @return
	 */
	public function getPoint<T:IVector2>( pivot:IVector2, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector2();

		output.x = this.min.x + this.width  * pivot.x;
		output.y = this.min.y + this.height * pivot.y;

		return output;
	}

	// ************************************************************************ //
	// static Operations
	// ************************************************************************ //

	/**
	 * tests if the given `other` bound is within the boundings of `rectangle`. a rectangle is considered to be
	 * within the bounds if `other.min >(=) rectangle.min` and `other.max <(=) rectangle.max`. the `equal` parameter
	 * specifies whether or not `other` is allowed to have the same extents as `rectangle` <br/>
	 *
	 * if either `rectangle` or `other` are empty, the method returns false.
	 *
	 * @param	rectangle	rectangle to perform the check on
	 * @param	other	rectangle to perform the check with
	 * @param	equal	true touching bounds is considered still inside
	 * @return	true `other` is within `rectangle`
	 */
	public static function isRectangleInside( rectangle:IRectangle, other:IRectangle, ?equal:Bool = false ):Bool
	{
		if( rectangle.isEmpty() || other.isEmpty() )
			return false;

		return Rectangle.isVector2Inside( rectangle, other.min, equal ) && Rectangle.isVector2Inside( rectangle, other.max, equal );
	}

	/**
	 *
	 * @param	rectangle
	 * @param	other
	 * @param	equal
	 * @return
	 */
	public static function isRectangleIntersect( rectangle:IRectangle, other:IRectangle, ?equal:Bool = false ):Bool
	{
		if( rectangle.isEmpty() || other.isEmpty() )
			return false;

		var a:Bool = Rectangle.isVector2Inside( rectangle, new Vector2( other.min.x, other.min.y ), equal );
		var b:Bool = Rectangle.isVector2Inside( rectangle, new Vector2( other.min.x, other.max.y ), equal );
		var c:Bool = Rectangle.isVector2Inside( rectangle, new Vector2( other.max.x, other.min.y ), equal );
		var d:Bool = Rectangle.isVector2Inside( rectangle, new Vector2( other.max.x, other.max.y ), equal );

		return a || b || c || d;
	}


	/**
	 * tests if the given `point` vector is within the boundings of `rectangle`. a point is considered to be
	 * within the bounds if `point >(=) rectangle.min` and `point <(=) rectangle.max`. the `equal` parameter
	 * specifies whether or not `point` is allowed to have the same value as the extends of `rectangle` <br/>
	 *
	 * if `rectangle` is empty, the method returns false.
	 *
	 * @param	rectangle	rectangle to perform the check on
	 * @param	point	point in euler space to perform the check with
	 * @param	equal	true touching bounds is considered still inside
	 * @return	true `point` is within `rectangle`
	 */
	public static function isVector2Inside( rectangle:IRectangle, point:IVector2, ?equal:Bool = false ):Bool
	{
		if( rectangle.isEmpty() )
			return false;

		if( equal )
		{
			if( point.x <= rectangle.min.x )
				return false;

			if( point.y <= rectangle.min.y )
				return false;

			if( point.x >= rectangle.max.x )
				return false;

			if( point.y >= rectangle.max.y )
				return false;
		}
		else
		{
			if( point.x < rectangle.min.x )
				return false;

			if( point.y < rectangle.min.y )
				return false;

			if( point.x > rectangle.max.x )
				return false;

			if( point.y > rectangle.max.y )
				return false;
		}

		return true;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 * inserts the given `other` into the given `rectangle`, extending its boundings/extents in
	 * case the `other` `min`/`max` is smaller/bigger than the one rectangle ones. <br/>
	 *
	 * note that a rectangle of zero volume is still considered valid and inserting one might not
	 * change it. (since for example: `other.min.x > rectangle.min.x`) use `rectangle.setEmpty()` first
	 * to always insert `other`.<br/>
	 *
	 * if the given `other` rectangle is empty, the method returns doing nothing.
	 *
	 * @param	rectangle	rectangle to perform the insertion on
	 * @param	other	rectangle that should be inserted
	 */
	public static function insertRectangle( rectangle:IRectangle, other:IRectangle ):Void
	{
		if( other.isEmpty() )
			return;

		Rectangle.insertVector2( rectangle, other.min );
		Rectangle.insertVector2( rectangle, other.max );
	}

	/**
	 * inserts the given `point` into the given `rectangle`, extending its boundings/extents in
	 * case the `point` is smaller/bigger than the one rectangle min`/`max` extents. <br/>
	 *
	 * note that a rectangle of zero volume is still considered valid and inserting a point might not
	 * change it. (since for example: `point.x > rectangle.min.x`) use `rectangle.setEmpty()` first
	 * to always insert the point.<br/>
	 *
	 * @param	rectangle	rectangle to perform the insertion on
	 * @param	point	point that should be inserted
	 */
	public static function insertVector2( rectangle:IRectangle, point:IVector2 ):Void
	{
		if( rectangle.isEmpty() )
		{
			rectangle.min.x = point.x;
			rectangle.min.y = point.y;

			rectangle.max.x = point.x;
			rectangle.max.y = point.y;
		}
		else
		{
			if( point.x < rectangle.min.x )
				rectangle.min.x = point.x;

			if( point.y < rectangle.min.y )
				rectangle.min.y = point.y;

			if( point.x > rectangle.max.x )
				rectangle.max.x = point.x;

			if( point.y > rectangle.max.y )
				rectangle.max.y = point.y;
		}
	}

	// ************************************************************************ //
	// toString
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function toString():String
	{
		return "{x:" + this.min.x + " y:" + this.min.y + " w:" + this.width + " h:" + this.height + "}";
	}
}