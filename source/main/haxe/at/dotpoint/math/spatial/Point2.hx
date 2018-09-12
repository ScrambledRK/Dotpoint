package at.dotpoint.math.spatial;

import at.dotpoint.math.tensor.IVector;
import at.dotpoint.math.tensor.Vector2;
import at.dotpoint.exception.IndexBoundsException;
import at.dotpoint.math.tensor.Vector2.TVector2;
import at.dotpoint.exception.RuntimeException;
import at.dotpoint.math.tensor.Vector2.DVector2;

/**
 *
 */
@:forward
abstract Point2(DVector2) from DVector2 to DVector2
{

	//
	inline public function new( x:Float = 0, y:Float = 0 )
	{
		this = new DVector2( x, y );
	}

	// ************************************************************************ //
	// Abstract
	// ************************************************************************ //

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromDPoint( from:Point2 ):Point2
	{
		return from;
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromDVector( from:DVector2 ):Point2
	{
		return from;
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromIVector( from:IVector<Vector2> ):Point2
	{
//		#if debug
//			if( !Std.is( from, DVector2 ) )
//				throw new RuntimeException("only DVector2 is a supported IVector<Vector2> interface");
//		#end

		return cast from;
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromTVector( from:TVector2 ):Point2
	{
		return new Point2( from.x, from.y );
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromArray( from:Array<Float> ):Point2
	{
		#if debug
			if( from.length != 2 )
				throw new IndexBoundsException( from.length, 0, 2 );
		#end

		return new Point2( from[0], from[1] );
	}

	//
	@:to @:noDoc @:noCompletion
	inline public function toArray():Array<Float>
	{
		return [this.x, this.y];
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	// ArrayAccess

	//
	@:arrayAccess @:noDoc @:noCompletion
	inline public function getComponent( index:Int ):Float
	{
		return this.get( index );
	}

	//
	@:arrayAccess @:noDoc @:noCompletion
	inline public function setComponent( index:Int, value:Float ):Float
	{
		return this.set( index, value );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function distance( b:Point2, squared:Bool = false ):Float
	{
		var x = this.x - b.x;
		var y = this.y - b.y;

		if( squared )	return x * x + y * y;
		else			return Math.sqrt( x * x + y * y );
	}
}

