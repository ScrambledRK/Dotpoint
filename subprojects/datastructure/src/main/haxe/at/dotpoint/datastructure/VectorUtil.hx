package at.dotpoint.datastructure;

import haxe.ds.Vector;
import haxe.org.ds.VectorSort;

/**
 * ...
 * @author RK
 */
class VectorUtil
{

    /**
    *
    */
    static public function push<T>( a:Vector<T>, value:T ):Bool
    {
       for( j in 0...a.length )
       {
           if( a[j] == null )
           {
               a[j] = value;
               return true;
           }
       }

       return false;
    }

    /**
    *
    */
    static public function remove<T>( a:Vector<T>, value:T ):Bool
    {
       for( j in 0...a.length )
       {
           if( a[j] == value )
           {
               a[j] = null;
               return true;
           }
       }

       return false;
    }

	/**
		Sorts Array [a] according to the comparison function [cmp], where
		[cmp(x,y)] returns 0 if x == y, a positive Int if x > y and a
		negative Int if x < y.

		This operation modifies Array [a] in place.

		This operation is stable: The order of equal elements is preserved.

		If [a] or [cmp] are null, the result is unspecified.
	**/
	static public function sort<T>(a:Vector<T>, cmp:T -> T -> Int):Void
	{
		VectorSort.sort( a, cmp );
	}

	/**
	 *
	 */
	static public function toArray<T>(a:Vector<T>):Array<T>
	{
		var array:Array<T> = new Array<T>();

		for( i in 0...a.length )
		{
			array[i] = a[i];
		}

		return array;
	}
}