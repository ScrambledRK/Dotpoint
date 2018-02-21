package at.dotpoint.datastructure.iterator;

/**
 * 
 */
interface IIterator<T>
{
	public function reset():Void;
	public function hasNext():Bool;
	public function getNext( checkHasNext:Bool = true ):Null<T>;
}
