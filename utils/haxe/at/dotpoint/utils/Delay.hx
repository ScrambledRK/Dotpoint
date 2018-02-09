package at.dotpoint.utils;

import haxe.Timer;

/**
 *
 */
class Delay
{
	//
	inline public static function isLate( startTime:Float, limit:Float = 0.3 ):Bool
	{
		return Timer.stamp( ) - startTime > limit;
	}

	//
	public static function interrupt( startTime:Float, callback:Void->Void, limit:Float = 0.3 ):Bool
	{
		if( Delay.isLate( startTime, limit ) )
		{
			haxe.Timer.delay( callback, 0 );
			return true;
		}

		return false;
	}


}
