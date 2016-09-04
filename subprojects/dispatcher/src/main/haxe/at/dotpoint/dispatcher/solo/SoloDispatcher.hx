package at.dotpoint.dispatcher.solo ;

import at.dotpoint.logger.Log;

/**
 * ...
 * @author RK
 */
class SoloDispatcher<TData:Dynamic,TListener:Dynamic> implements IDispatcher<TData,TListener>
{

	/**
	 *
	 */
	private var listener:TData->Void;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?listener:TData->Void )
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
	inline public function dispatch( event:TData ):Bool
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
	public function addListener( type:TListener, call:TData->Void ):Void
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
	public function removeListener( type:TListener, call:TData->Void ):Void
	{
		this.listener = null;
	}

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function hasListener( type:TListener ):Bool
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