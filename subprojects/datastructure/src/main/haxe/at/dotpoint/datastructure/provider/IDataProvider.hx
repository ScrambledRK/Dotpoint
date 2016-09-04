package at.dotpoint.datastructure.provider;

import at.dotpoint.dispatcher.lazy.LazyComponent;

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