package haxe.at.dotpoint.datastructure.collection;

/**
 * stricly speaking not just a collection as it also implements methods for random access which might be really
 * terrible for performance - make sure you know your datastructure well. This Interface is this way for simplicity.
 *
 * @author RK
 */
interface ICollection<T>
{

	/**
	 *
	 */
	public function has(x:T):Bool;

	/**
	 *
	 */
	public function add(x:T):Bool;

	/**
	 *
	 */
	public function remove(x:T):Bool;

	// -------------------- //

	/**
	 *
	 * @param	index
	 * @return
	 */
	public function get( index:Int ):T;

	/**
	 *
	 * @param	index
	 * @return
	 */
	public function set( index:Int, obj:T ):Void;

	/**
	 *
	 * @param	obj
	 * @return
	 */
	public function indexOf( obj:T ):Int;

	// -------------------- //

	/**
	 *
	 */
	public function size():Int;

	/**
	 *
	 */
	public function toArray():Array<T>;

}