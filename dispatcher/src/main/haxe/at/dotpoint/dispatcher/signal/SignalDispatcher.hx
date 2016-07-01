package haxe.at.dotpoint.core.dispatcher.signal;

import haxe.at.dotpoint.core.datastructure.collection.VectorSet;

/**
 * ...
 * @author RK
 */
class SignalDispatcher<T:Dynamic> implements IDispatcher<T,Null<Dynamic>>
{

	/**
	 *
	 */
	private var listener:VectorSet<T->Void>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?size:Int = 1 )
	{
		this.listener = new VectorSet<T->Void> ( size );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 *
	 * @param	event
	 */
	public function dispatch( event:T ):Bool
	{
		for( i in 0...this.listener.size() )
		{
			this.listener.get(i)( event );
		}

		return true;
	}

	/**
	 *
	 * @param	type
	 * @param	call
	 */
	public function addListener( type:Null<Dynamic>, call:T->Void ):Void
	{
		this.listener.add( call );
	}

	/**
	 *
	 * @param	type
	 * @param	call
	 */
	public function removeListener( type:Null<Dynamic>, call:T->Void ):Void
	{
		this.listener.remove( call );
	}

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function hasListener( type:Null<Dynamic> ):Bool
	{
		return this.listener.size() > 0;
	}

	/**
	 *
	 *
	 *
	 */
	public function clearListeners():Void
	{
		for( call in this.listener )
			this.listener.remove( call );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function toString():String
	{
		return "[" + Type.getClassName( Type.getClass(this) ) + "]";
	}
}