package at.dotpoint.datastructure;

/**
 * 
 */
@:forward(concat, copy, filter, indexOf, iterator, join, lastIndexOf, map, slice, toString)
//
abstract ImmutableArray<T>(Array<T>) from Array<T>
{
    public var length(get,never):Int;

    inline function get_length() return this.length;
    @:arrayAccess inline function get(i:Int) return this[i];
}
