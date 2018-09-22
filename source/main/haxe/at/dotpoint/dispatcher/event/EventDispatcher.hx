package at.dotpoint.dispatcher.event;

import haxe.ds.StringMap;

/**
 * ...
 * @author RK
 */
class EventDispatcher implements IEventDispatcher
{

	/**
	 * proxy target
	 */
	@:isVar public var target(get, set):IEventDispatcher;

	/**
	 *
	 */
	private var listeners:StringMap<Array<Event->Void>>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 *
	 * @param	?proxy
	 */
	public function new( ?proxy:IEventDispatcher )
	{
		this.target = proxy != null ? proxy : this;
		this.listeners = new StringMap<Array<Event->Void>>();
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 */
	private function get_target( ):IEventDispatcher
	{
		return this.target;
	}

	private function set_target( value:IEventDispatcher ):IEventDispatcher
	{
		if( value == null )
			value = this;

		return this.target = value;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	event
	 */
	public function dispatch<T:(Event)>( type:String, event:T ):Void
	{
		if( event.target == null )
			event.target = this;

		event.currentTarget = this.target;

		// ------------ //

		var list:Array<Event->Void> = this.listeners.get( type );

		if( list != null && list.length > 0 )
		{
			for( i in 0...list.length )
			{
				list[i]( event );
			}
		}
	}

	/**
	 *
	 * @param	event
	 */
	public function addListener<T:(Event)>( type:String, callback:T->Void ):Void
	{
		var list:Array<Event->Void> = this.listeners.get( type );

		if( list == null )
		{
			list = new Array<Event->Void>();
			this.listeners.set( type, list );
		}

		list.push( cast callback );
	}

	/**
	 *
	 * @param	event
	 */
	public function removeListener<T:(Event)>( type:String, callback:T->Void ):Void
	{
		var list:Array<Event->Void> = this.listeners.get( type );

		if( list != null )
		{
			list.remove( cast callback );

			if( list.length == 0 )
				this.listeners.remove( type );
		}
	}

	/**
	 *
	 * @param	event
	 */
	public function hasListener<T:(Event)>( type:String, ?callback:T->Void ):Bool
	{
		var list:Array<Event->Void> = this.listeners.get( type );

		if( callback == null || list == null )
			return list != null && list.length > 0;

		// ---------- //

		for( i in 0...list.length )
		{
			if( list[i] == callback )
				return true;
		}

		return false;
	}

	/**
	 *
	 */
	public function clearListener( ?type:String ):Void
	{
		for( key in this.listeners.keys( ) )
		{
			if( type == null || key == type )
				this.listeners.remove( key );
		}
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function toString( ):String
	{
		return "[" + Type.getClassName( Type.getClass( this ) ) + "]";
	}

}