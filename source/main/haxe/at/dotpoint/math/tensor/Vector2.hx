package at.dotpoint.math.tensor;

import at.dotpoint.exception.IndexBoundsException;
import at.dotpoint.math.tensor.ITensor.TTensor;

/**
 *
 */
typedef TVector2 = {
	> TTensor,
	public var x:Float;
	public var y:Float;
}

/**
 *
 */
@:forward
abstract Vector2(DVector2) from DVector2 to DVector2
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
	inline public static function fromDVector( from:DVector2 ):Vector2
	{
		return from;
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromIVector( from:IVector<Vector2> ):Vector2
	{
//		#if debug
//			if( !Std.is( from, DVector2 ) )
//				throw new RuntimeException("only DVector2 is a supported IVector<Vector2> interface");
//		#end

		return cast from;
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromTVector( from:TVector2 ):Vector2
	{
		return new Vector2( from.x, from.y );
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromArray( from:Array<Float> ):Vector2
	{
		#if debug
			if( from.length != 2 )
				throw new IndexBoundsException( from.length, 0, 2 );
		#end

		return new Vector2( from[0], from[1] );
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

}

/**
 *
 */
class DVector2 implements IVector<Vector2>
{

	public var numComponents(get,never):Float;
	inline private function get_numComponents(){ return 2; }

	public var x:Float;
	public var y:Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( x:Float = 0, y:Float = 0 )
	{
		this.x = x;
		this.y = y;
	}

	//
	public function clone( ?into:Vector2 ):Vector2
	{
		if( into != null )
			into = new Vector2();

		into.x = this.x;
		into.y = this.y;

		return into;
	}

	//
	public function copy( from:TTensor ):Vector2
	{
		this.x = from.get( 0 );
		this.y = from.get( 1 );

		return this;
	}

	//
	public function zero( ):Vector2
	{
		this.x = 0;
		this.y = 0;

		return this;
	}

	// ************************************************************************ //
	// ITensor
	// ************************************************************************ //

	//
	inline public function get( index:Int ):Float
	{
		switch( index )
		{
			case 0:	return this.x;
			case 1:	return this.y;

			default:
				throw new IndexBoundsException( index, 0, 2 );
		}
	}

	//
	inline public function set( index:Int, value:Float ):Float
	{
		switch( index )
		{
			case 0:	return this.x = value;
			case 1:	return this.y = value;

			default:
				throw new IndexBoundsException( index, 0, 2 );
		}
	}

	//
	public function equals( b:Vector2 ):Bool
	{
		return BasicMath.equals( b.x, this.x ) && BasicMath.equals( b.y, this.y );
	}

	// -------------------------------------- //

	//
	inline public function add( b:Vector2, scale:Float = 1 ):Vector2
	{
		this.x += b.x * scale;
		this.y += b.y * scale;

		return this;
	}

	//
	inline public function sub( b:Vector2, scale:Float = 1 ):Vector2
	{
		this.x -= b.x * scale;
		this.y -= b.y * scale;

		return this;
	}

	//
	inline public function scale( scale:Float ):Vector2
	{
		this.x *= scale;
		this.y *= scale;

		return this;
	}

	// ************************************************************************ //
	// IVector
	// ************************************************************************ //

	//
	inline public function dot( b:Vector2 ):Float
	{
		return this.x * b.x + this.y * b.y;
	}

	//
	inline public function magnitude( squared:Bool = false ):Float
	{
		if( squared )	return x * x + y * y;
		else			return Math.sqrt( x * x + y * y );
	}

	// -------------------------------------- //
	// magnitude range

	//
	public function normalize():Vector2
	{
		var l:Float = magnitude( false );

		if ( l == 0 )
			return this;

		var k:Float = 1. / l;

		this.x *= k;
		this.y *= k;

		return this;
	}

	//
	public function truncate( max:Float ):Vector2
	{
		return clamp( 0, max );
	}

	//
	public function stretch( min:Float ):Vector2
	{
		return clamp( min, BasicMath.FLOAT_MAX );
	}

	//
	public function clamp( min:Float, max:Float ):Vector2
	{
		var l:Float = magnitude( false );

		if( l > max )
			normalize().scale( max );

		if( l < min )
			normalize().scale( min );

		return this;
	}

	// -------------------------------------- //
	// component range

	//
	public function max( b:Vector2 ):Vector2
	{
		this.x = Math.max( this.x, b.x );
		this.y = Math.max( this.y, b.y );

		return this;
	}

	//
	public function min( b:Vector2 ):Vector2
	{
		this.x = Math.min( this.x, b.x );
		this.y = Math.min( this.y, b.y );

		return this;
	}

	//
	public function lerp( b:Vector2, delta:Float ):Vector2
	{
		return interpolate( b, delta, Interpolation.linear );
	}

	//
	public function interpolate( b:Vector2, delta:Float, method:Float->Float ):Vector2
	{
		this.x = Interpolation.interpolate( this.x, b.x, delta, method );
		this.y = Interpolation.interpolate( this.y, b.y, delta, method );

		return this;
	}

	// -------------------------------------- //
	// spatial

	//
	public function project( b:Vector2 ):Vector2
	{
		if( magnitude( true ) == 0 )
			return this.zero();

		var scale = dot(b) / dot(this);
		return b.clone( this ).scale( scale );
	}

	//
	public function reflect( normal:Vector2 ):Vector2
	{
		return sub( project(normal), 2 );
	}

	//
	public function distance( b:Vector2, squared:Bool = false ):Float
	{
		var x = this.x - b.x;
		var y = this.y - b.y;

		if( squared )	return x * x + y * y;
		else			return Math.sqrt( x * x + y * y );
	}
}
