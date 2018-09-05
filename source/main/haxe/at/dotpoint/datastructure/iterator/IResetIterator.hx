package at.dotpoint.datastructure.iterator;

/**
 * 
 */
interface IResetIterator<T>
{
	public function clone():IResetIterator<T>;
	public function reset():Void;

	public function hasNext():Bool;
	public function next():T;
}
