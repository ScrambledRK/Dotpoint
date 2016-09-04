package haxe.at.dotpoint.datastructure.provider;

import haxe.at.dotpoint.dispatcher.lazy.LazyComponent;

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