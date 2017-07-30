package at.dotpoint.utils;

/**
 *
 */
class Random
{

	//
	public static function shuffleArray<T>( arr:Array<T> ):Array<T>
	{
		if( arr != null )
		{
			for( i in 0...arr.length )
			{
				var j = Random.int( 0, arr.length - 1 );
				var a = arr[i];
				var b = arr[j];
				arr[i] = b;
				arr[j] = a;
			}
		}
		return arr;
	}

	//
	public static inline function int( from:Int, to:Int ):Int
	{
		return from + Math.floor( ((to - from + 1) * Math.random( )) );
	}
}
