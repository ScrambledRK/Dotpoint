package at.dotpoint.datastructure.iterator;

/**
 *
 */
class ArrayIterator<T> implements IIterator<T>
{

	public var list:Array<T>;
	public var filter:T->Bool;

	//
	private var index:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?list:Array<T>, ?filter:T->Bool )
	{
		this.list = list;
		this.filter = filter;

		this.reset();
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
		if( this.list.length < this.index )
			return false;

		//
		if( this.filter != null )
		{
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

		return true;
	}

	//
	public function next():T
	{
		if( this.hasNext() )
			return this.list[this.index++];

		return null;
	}
}
