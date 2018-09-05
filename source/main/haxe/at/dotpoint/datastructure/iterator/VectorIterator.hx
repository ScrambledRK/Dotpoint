package at.dotpoint.datastructure.iterator;

import haxe.ds.Vector;

/**
 *
 */
class VectorIterator<T> implements IResetIterator<T>
{

	public var list:Vector<T>;
	private var index:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( list:Vector<T> )
	{
		this.list = list;
		this.reset();
	}

	//
	public function clone():IResetIterator<T>
	{
		var result = new VectorIterator<T>( this.list );
			result.index = this.index;

		return result;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function reset():Void
	{
		this.index = 0;
	}

	//
	public function hasNext():Bool
	{
		if( this.index >= this.list.length )
			return false;


		for( j in 0...(list.length - this.index) )
		{
			var isMatch:Bool = this.filter( list[ this.index + j ] );

			if( isMatch )
			{
				this.index += j;	// only set first time, second time j == 0;
				return true;		// unless list or its items are tempered with ...
			}
		}

		return false;
	}

	//
	public function next():T
	{
		return this.list[this.index++];
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	/**
	 * @return true if the given item should be returned on getNext()
	 */
	public dynamic function filter( item:T ):Bool
	{
		return true;
	}
}
