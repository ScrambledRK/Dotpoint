package at.dotpoint.math.tensor;

import at.dotpoint.exception.IndexBoundsException;
import at.dotpoint.math.tensor.ITensor.TTensor;
import at.dotpoint.math.tensor.Vector2.TVector2;

/**
 *
 */
typedef TVector3 = {
	> TVector2,
	public var z:Float;
}

/**
 *
 */
@:forward
abstract Vector3(DVector3) from DVector3 to DVector3
{

	//
	inline public function new( x:Float = 0, y:Float = 0, z:Float = 0 )
	{
		this = new DVector3( x, y, z );
	}

	// ************************************************************************ //
	// Abstract
	// ************************************************************************ //

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromDVector( from:DVector3 ):Vector3
	{
		return from;
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromIVector( from:IVector<Vector3> ):Vector3
	{
//		#if debug
//			if( !Std.is( from, DVector3 ) )
//				throw new RuntimeException("only DVector3 is a supported IVector<Vector3> interface");
//		#end

		return cast from;
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromTVector( from:TVector3 ):Vector3
	{
		return new Vector3( from.x, from.y, from.z );
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromArray( from:Array<Float> ):Vector3
	{
		#if debug
			if( from.length != 3 )
				throw new IndexBoundsException( from.length, 0, 3 );
		#end

		return new Vector3( from[0], from[1], from[2] );
	}

	//
	@:to @:noDoc @:noCompletion
	inline public function toArray():Array<Float>
	{
		return [this.x, this.y, this.z];
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
class DVector3 implements IVector<Vector3>
{

	public var numComponents(get,never):Float;
	inline private function get_numComponents(){ return 3; }

	public var x:Float;
	public var y:Float;
	public var z:Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( x:Float = 0, y:Float = 0, z:Float = 0 )
	{
		this.x = x;
		this.y = y;
		this.z = z;
	}

	//
	public function clone( ?into:Vector3 ):Vector3
	{
		if( into == null )
			into = new Vector3();

		into.x = this.x;
		into.y = this.y;
		into.z = this.z;

		return into;
	}

	//
	public function copy( from:TTensor ):Vector3
	{
		this.x = from.get( 0 );
		this.y = from.get( 1 );
		this.z = from.get( 2 );

		return this;
	}

	//
	public function zero( ):Vector3
	{
		this.x = 0;
		this.y = 0;
		this.z = 0;

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
			case 2:	return this.z;

			default:
				throw new IndexBoundsException( index, 0, 3 );
		}
	}

	//
	inline public function set( index:Int, value:Float ):Float
	{
		switch( index )
		{
			case 0:	return this.x = value;
			case 1:	return this.y = value;
			case 2:	return this.z = value;

			default:
				throw new IndexBoundsException( index, 0, 3 );
		}
	}

	//
	public function equals( b:Vector3 ):Bool
	{
		return BasicMath.equals( b.x, x ) && BasicMath.equals( b.y, y ) && BasicMath.equals( b.z, z );
	}

	// -------------------------------------- //

	//
	inline public function add( b:Vector3, scale:Float = 1 ):Vector3
	{
		this.x += b.x * scale;
		this.y += b.y * scale;
		this.z += b.z * scale;

		return this;
	}

	//
	inline public function sub( b:Vector3, scale:Float = 1 ):Vector3
	{
		this.x -= b.x * scale;
		this.y -= b.y * scale;
		this.z -= b.z * scale;

		return this;
	}

	//
	inline public function scale( scale:Float ):Vector3
	{
		this.x *= scale;
		this.y *= scale;
		this.z *= scale;

		return this;
	}

	// ************************************************************************ //
	// IVector
	// ************************************************************************ //

	/**
	 * calculates the product of 2 vector. not communtative (a*b != b*a).
	 */
	public function cross( b:Vector3 ):Vector3
	{
		var x = this.y * b.z - this.z * b.y;
		var y = this.z * b.x - this.x * b.z;
		var z = this.x * b.y - this.y * b.x;

		this.x = x;
		this.y = y;
		this.z = z;

		return this;
	}

	//
	inline public function dot( b:Vector3 ):Float
	{
		return this.x * b.x + this.y * b.y + this.z * b.z;
	}

	//
	inline public function magnitude( squared:Bool = false ):Float
	{
		if( squared )	return x * x + y * y + z * z;
		else 			return Math.sqrt( x * x + y * y + z * z );
	}

	// -------------------------------------- //
	// magnitude range

	//
	public function normalize():Vector3
	{
		var l:Float = magnitude( false );

		if ( l == 0 )
			return this;

		var k:Float = 1. / l;

		this.x *= k;
		this.y *= k;
		this.z *= k;

		return this;
	}

	//
	public function truncate( max:Float ):Vector3
	{
		return clamp( 0, max );
	}

	//
	public function stretch( min:Float ):Vector3
	{
		return clamp( min, BasicMath.FLOAT_MAX );
	}

	//
	public function clamp( min:Float, max:Float ):Vector3
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
	public function max( b:Vector3 ):Vector3
	{
		this.x = Math.max( this.x, b.x );
		this.y = Math.max( this.y, b.y );
		this.z = Math.max( this.z, b.z );

		return this;
	}

	//
	public function min( b:Vector3 ):Vector3
	{
		this.x = Math.min( this.x, b.x );
		this.y = Math.min( this.y, b.y );
		this.z = Math.min( this.z, b.z );

		return this;
	}

	//
	public function lerp( b:Vector3, delta:Float ):Vector3
	{
		return interpolate( b, delta, Interpolation.linear );
	}

	//
	public function interpolate( b:Vector3, delta:Float, method:Float->Float ):Vector3
	{
		this.x = Interpolation.interpolate( this.x, b.x, delta, method );
		this.y = Interpolation.interpolate( this.y, b.y, delta, method );
		this.z = Interpolation.interpolate( this.z, b.z, delta, method );

		return this;
	}

	// -------------------------------------- //
	// spatial

	//
	public function project( b:Vector3 ):Vector3
	{
		if( magnitude( true ) == 0 )
			return this.zero();

		var scale = dot(b) / dot(this);
		return b.clone( this ).scale( scale );
	}

	//
	public function reflect( normal:Vector3 ):Vector3
	{
		return sub( project(normal), 2 );
	}

	//
	public function distance( b:Vector3, squared:Bool = false ):Float
	{
		var x = this.x - b.x;
		var y = this.y - b.y;
		var z = this.z - b.z;

		if( squared )	return x * x + y * y + z * z;
		else			return Math.sqrt( x * x + y * y + z * z );
	}
}
