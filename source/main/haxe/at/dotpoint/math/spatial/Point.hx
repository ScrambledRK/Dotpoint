package at.dotpoint.math.spatial;

import at.dotpoint.math.tensor.IVector;

/**
 *
 */
@:forward
abstract Point<X:IVector<X>>(X) from X to X
{

	//
	inline public function Point( instance:X )
	{
		this = instance;
	}

	// ************************************************************************ //
	// Abstract
	// ************************************************************************ //

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromDPoint<X:IVector<X>>( from:Point<X> ):Point<X>
	{
		return from;
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromIVector<X:IVector<X>>( from:IVector<X> ):Point<X>
	{
		return cast from;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

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

