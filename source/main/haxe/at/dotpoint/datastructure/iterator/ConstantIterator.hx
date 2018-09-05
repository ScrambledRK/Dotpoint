package at.dotpoint.datastructure.iterator;

/**
 *
 */
class ConstantIterator<T> implements IResetIterator<T>
{

	private var item:T;
	private var isOpen:Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( item:T )
	{
		this.item = item;
	}

	//
	public function clone():IResetIterator<T>
	{
		var result = new ConstantIterator<T>( this.item );
			result.isOpen = this.isOpen;

		return result;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function reset():Void
	{
		this.isOpen = true;
	}

	//
	public function hasNext():Bool
	{
		return this.isOpen;
	}

	//
	public function next():T
	{
		this.isOpen = false;
		return this.item;
	}
}
