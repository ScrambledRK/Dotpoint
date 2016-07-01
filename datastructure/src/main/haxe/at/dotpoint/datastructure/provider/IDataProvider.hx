package haxe.at.dotpoint.core.datastructure.provider;

/**
 * @author RK
 */

interface IDataProvider<T>
{
	/**
	 *
	 */
	public var data(get, set):T;

	/**
	 *
	 */
	private var lazy:LazyComponent;
}