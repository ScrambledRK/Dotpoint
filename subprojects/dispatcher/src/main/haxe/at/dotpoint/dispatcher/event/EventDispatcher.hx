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
	 *
	 */
	private var target:IEventDispatcher;

	/**
	 *
	 */
	@:isVar private var isEmptyDelegator(get,null):Bool;

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
	public function new( ?proxy:IEventDispatcher, ?isEmptyDelegator:Bool = false )
	{
		this.target = proxy != null ? proxy : this;
		this.isEmptyDelegator = isEmptyDelegator;

		if( !this.isEmptyDelegator )
			this.listeners = new StringMap<VectorSet<Event->Void>>();
	}

	// ************************************************************************ //
	// getter
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_isEmptyDelegator():Bool
	{
		return this.isEmptyDelegator && this.target != this;
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
		if( this.isEmptyDelegator )
			return this.target.dispatch( event );

		// ------------ //

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
		if( this.isEmptyDelegator )
		{
			this.target.addListener( type, call );
			return;
		}

		// ------------ //

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
		if( this.isEmptyDelegator )
		{
			this.target.removeListener( type, call );
			return;
		}

		// ------------ //

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
		if( this.isEmptyDelegator )
			return this.target.hasListener( type );

		// ------------ //

		var list:VectorSet<Event->Void> = this.listeners.get( type );

		return list != null && list.size() > 0;
	}

	/**
	 *
	 */
	public function clearListeners():Void
	{
		if( this.isEmptyDelegator )
		{
			this.target.clearListeners();
			return;
		}

		// ------------ //

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