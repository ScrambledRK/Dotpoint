package haxe.at.dotpoint.core.dispatcher.solo ;

import haxe.at.dotpoint.logger.Log;

/**
 * ...
 * @author RK
 */
class SoloDispatcher<T:Dynamic> implements IDispatcher<T,Null<Dynamic>>
{

	/**
	 *
	 */
	private var listener:T->Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?listener:T->Void )
	{
		this.listener = listener;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 *
	 * @param	event
	 */
	inline public function dispatch( event:T ):Bool
	{
		if( this.listener != null )
			this.listener( event );

		return true;
	}

	/**
	 *
	 * @param	type
	 * @param	call
	 */
	public function addListener( type:Null<Dynamic>, call:T->Void ):Void
	{
		if( this.listener != null )
			Log.warn( "replacing listener " + type );

		this.listener = call;
	}

	/**
	 *
	 * @param	type
	 * @param	call
	 */
	public function removeListener( type:Null<Dynamic>, call:T->Void ):Void
	{
		this.listener = null;
	}

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function hasListener( type:Null<Dynamic> ):Bool
	{
		return this.listener != null;
	}

	/**
	 *
	 *
	 *
	 */
	public function clearListeners():Void
	{
		this.listener = null;
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