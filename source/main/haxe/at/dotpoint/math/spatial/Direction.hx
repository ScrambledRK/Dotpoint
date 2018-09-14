package at.dotpoint.math.spatial;

import at.dotpoint.math.tensor.IVector;

/**
 *
 */
@:forward
abstract Direction<X:IVector<X>>(X) from X to X
{

	//
	inline public function Direction( instance:X )
	{
		this = instance;
	}

	// ************************************************************************ //
	// Abstract
	// ************************************************************************ //

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromDDirection<X:IVector<X>>( from:Direction<X> ):Direction<X>
	{
		return from;
	}

	//
	@:from @:noDoc @:noCompletion
	inline public static function fromIVector<X:IVector<X>>( from:IVector<X> ):Direction<X>
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

