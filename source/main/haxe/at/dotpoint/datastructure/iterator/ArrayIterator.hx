package at.dotpoint.datastructure.iterator;

/**
 *
 */
class ArrayIterator<T> implements IResetIterator<T>
{

	public var list:Array<T>;

	@:isVar public var startIndex(get,set):Int;
	@:isVar public var endIndex(get,set):Int;

	private var index:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( list:Array<T>, start:Int = 0, end:Int = -1 )
	{
		this.list = list;

		this.startIndex = start;
		this.endIndex = end;

		this.reset();
	}

	//
	public function clone():IResetIterator<T>
	{
		var result = new ArrayIterator<T>( this.list, this.startIndex, this.endIndex );
			result.index = this.index;

		return result;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	//
	private function get_endIndex( ):Int
	{
		return endIndex;
	}

	//
	private function set_endIndex( value:Int ):Int
	{
		return this.endIndex = value;
	}

	//
	private function get_startIndex( ):Int
	{
		return startIndex;
	}

	//
	private function set_startIndex( value:Int ):Int
	{
		return this.startIndex = value;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function reset():Void
	{
		this.index = this.startIndex;

		if( this.index < 0 )
			this.index = 0;
	}

	//
	public function hasNext():Bool
	{
		var last:Int = this.endIndex < 0 ? this.list.length : this.endIndex;

		if( this.index >= last )
			return false;

		return true;
	}

	//
	public function next():T
	{
		return this.list[this.index++];
	}

}
