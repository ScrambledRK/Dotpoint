package haxe.at.dotpoint.core.datastructure.entity;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;
import haxe.at.dotpoint.logger.Log;

/**
 * Component augmenting an Entity with functionallity and/or data in order to allow
 * flexible assembling of multi functional objects. display system uses it heavily.
 */
class Component<TEntity:IEntity> implements IComponent<TEntity>
{

	/**
	 * internal dispatcher, might be replaced with specific messagers allowing for bubbling or similar features
	 */
	@:isVar private var dispatcher(get, set):IEventDispatcher;

	/**
	 * entity managing this component
	 */
	@:isVar public var entity(get,set):TEntity;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		//
	}

	/**
	 * last resort to remove all tangling pointers to the entity or other
	 * objects that might prevent the garbage collector from removing this
	 * component.
	 */
	public function destroyComponent():Void
	{
		Log.info( "Destroy Component: " + this + " " + this.entity );

		this.entity = null;

		if( this.dispatcher != null )
		{
			this.dispatcher.clearListeners();
			this.dispatcher = null;
		}
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_dispatcher():IEventDispatcher
	{
		if( this.dispatcher == null )
			this.dispatcher = new EventDispatcher( this );

		return this.dispatcher;
	}

	private function set_dispatcher( value:IEventDispatcher ):IEventDispatcher
	{
		return this.dispatcher = value;
	}

	/**
	 * In case a new entity is set and a previous exists, onEntityRemoved
	 * will be called, in case the new entity is not null onEntityAdded will be
	 * called. Use those 2 methodes to gather time consuming data from other components
	 * or the entity itself. you cannot access other components from the constructor
	 */
	private function get_entity():TEntity { return this.entity; }

	private function set_entity( value:TEntity ):TEntity
	{
		if( this.entity != null )
			this.onEntityRemoved();

		this.entity = value;

		if( this.entity != null )
			this.onEntityAdded();

		return value;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * when this component has been removed from an entity; the new entity
	 * is accessable and you can use this methode to gather time consuming data
	 * from other components or the entity itself.
	 */
	private function onEntityAdded():Void
	{
		return;
	}

	/**
	 * when this component has been removed from an entity; the old entity
	 * is still accessable and you have to remove all pointers in this methode
	 * that might prevent the garbage collector from removing this or other components
	 */
	private function onEntityRemoved():Void
	{
		return;
	}

	/**
	 *
	 * @param	component
	 */
	private function assertRequiredComponents( components:Iterable<Class<IComponent<IEntity>>> ):Void
	{
		for( component in components )
		{
			if( this.entity.getComponent( component ) == null )
				throw "Required Component: " + component + " is missing for " + this.entity;
		}
	}

	// ************************************************************************ //
	// IEventDispatcher
	// ************************************************************************ //

	/**
	 *
	 * @param	event
	 */
	public function dispatch( event:Event ):Bool
	{
		return this.dispatcher.dispatch( event );
	}

	/**
	 *
	 * @param	type
	 * @param	call
	 */
	public function addListener( type:String, call:Event->Void ):Void
	{
		this.dispatcher.addListener( type, call );
	}

	/**
	 *
	 * @param	type
	 * @param	call
	 */
	public function removeListener( type:String, call:Event->Void ):Void
	{
		this.dispatcher.removeListener( type, call );
	}

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function hasListener( type:String ):Bool
	{
		return this.dispatcher.hasListener( type );
	}

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function clearListeners():Void
	{
		return this.dispatcher.clearListeners();
	}
}