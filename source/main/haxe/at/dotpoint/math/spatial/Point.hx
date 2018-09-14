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


}

