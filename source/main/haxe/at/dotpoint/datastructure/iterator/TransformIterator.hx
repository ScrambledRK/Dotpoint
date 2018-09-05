package at.dotpoint.datastructure.iterator;

/**
 *
 */
class TransformIterator<TFrom,TTo> implements IResetIterator<TTo>
{

	public var proxy:IResetIterator<TFrom>;
	public var transform:TFrom->TTo;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( proxy:IResetIterator<TFrom>, ?transform:TFrom->TTo )
	{
		this.transform = transform;
		this.proxy = proxy;
	}

	//
	public function clone():IResetIterator<TTo>
	{
		var result = new TransformIterator<TFrom,TTo>( this.proxy );
			result.transform = this.transform;

		return result;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function reset():Void
	{
		this.proxy.reset();
	}

	//
	public function hasNext():Bool
	{
		return this.proxy.hasNext();
	}

	//
	public function next():TTo
	{
		return this.transform( this.proxy.next() );
	}
}
