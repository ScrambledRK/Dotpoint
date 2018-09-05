package at.dotpoint.datastructure.iterator;

/**
 *
 */
class CompositeIterator<T> implements IResetIterator<T>
{

	public var list:Array<IResetIterator<T>>;
	public var index:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( list:Array<IResetIterator<T>> )
	{
		this.list = list;
		this.reset();
	}

	//
	public function clone():IResetIterator<T>
	{
		var result = new CompositeIterator<T>( this.list );
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

		for( iter in list )
			iter.reset();
	}

	//
	public function hasNext():Bool
	{
		if( this.index >= this.list.length )
			return false;

		//
		for( j in this.index...this.list.length )
		{
			var success = this.list[j].hasNext();

			if( success )
				return true;
		}

		return false;
	}

	//
	public function next():T
	{
		for( j in this.index...this.list.length )
		{
			var success = this.list[this.index].hasNext();

			if( !success )
				this.index++;
		}

		return this.list[this.index].next();
	}

}
