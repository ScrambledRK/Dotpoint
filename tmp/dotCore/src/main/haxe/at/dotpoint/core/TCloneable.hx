package haxe.at.dotpoint.core;

/**
 * @author RK
 */

typedef TCloneable<T> =
{
	function clone( ?instance:T ):T;
}