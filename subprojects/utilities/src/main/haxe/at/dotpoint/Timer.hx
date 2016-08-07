package haxe.at.dotpoint;

/**
 * 14.05.2016
 * @author RK
 */
class Timer
{

	inline public static function stamp():Float
	{
	    #if flash
	    	return flash.Lib.getTimer();
	    #elseif js
	    	return js.Browser.window.performance.now();
	    #elseif cpp
	    	return untyped __global__.__time_stamp ();
	    #elseif sys
	    	return Sys.time();
	    #else
	    	return haxe.Timer.stamp();
	    #end
	}

}
