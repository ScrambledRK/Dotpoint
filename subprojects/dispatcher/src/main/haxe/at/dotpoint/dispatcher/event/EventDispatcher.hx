package haxe.at.dotpoint.dispatcher.event;

import haxe.at.dotpoint.datastructure.collection.VectorSet;
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
	@:isVar public var target(get,set):IEventDispatcher;

	/**
	 *
	 */
	private var listeners:StringMap<VectorSet<Event->Void>>;

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
		this.listeners = new StringMap<VectorSet<Event->Void>>();
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 */
	private function get_target():IEventDispatcher { return this.target;	}

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
	public function dispatch( event:Event ):Bool
	{
		if( event.target == null )
			event.target = this.target;

		event.currentTarget = this.target;

		// ------------ //

		var list:VectorSet<Event->Void> = this.listeners.get( event.type );

		if( list != null && list.size() > 0 )
		{
			for( i in 0...list.size())
			{
				list.get(i)( event );
			}

			return true;
		}

		return false;
	}

	/**
	 *
	 * @param	event
	 */
	public function addListener( type:String, call:Event->Void ):Void
	{
		var list:VectorSet<Event->Void> = this.listeners.get( type );

		if( list == null )
		{
			list = new VectorSet<Event->Void>(10, true);
			this.listeners.set( type, list );
		}

		list.add( call );
	}

	/**
	 *
	 * @param	event
	 */
	public function removeListener( type:String, call:Event->Void ):Void
	{
		var list:VectorSet<Event->Void> = this.listeners.get( type );

		if( list != null )
		{
			list.remove( call );

			if( list.size() == 0 )
			{
				this.listeners.remove( type );
			}
		}
	}

	/**
	 *
	 * @param	event
	 */
	public function hasListener( type:String ):Bool
	{
		var list:VectorSet<Event->Void> = this.listeners.get( type );
		return list != null && list.size() > 0;
	}

	/**
	 *
	 */
	public function clearListeners():Void
	{
		for( type in this.listeners.keys() )
		{
			this.listeners.remove( type );
		}
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