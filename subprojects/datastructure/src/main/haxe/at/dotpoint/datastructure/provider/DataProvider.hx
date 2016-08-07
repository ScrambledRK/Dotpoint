package haxe.at.dotpoint.datastructure.provider;

import haxe.at.dotpoint.dispatcher.lazy.LazyComponent;

/**
 * ...
 * @author RK
 */
class DataProvider<T:Dynamic> implements IDataProvider<T>
{

	/**
	 *
	 */
	@:isVar public var data(get, set):T;

	/**
	 *
	 */
	private var lazy:LazyComponent;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?data:T = null )
	{
		this.lazy = new LazyComponent();
		this.data = data;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_data():T { return this.data; }

	private function set_data( value:T ):T
	{
		if( value != this.data )
			this.lazy.dispatchUpdate();

		return this.data = value;
	}

}