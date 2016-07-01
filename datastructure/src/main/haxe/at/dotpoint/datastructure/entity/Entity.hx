package haxe.at.dotpoint.core.datastructure.entity;

import haxe.at.dotpoint.core.datastructure.collection.VectorSet;
import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;
import haxe.at.dotpoint.core.datastructure.entity.event.EntityEvent;

/**
 * Basic Object in control of components which augment the functionallity of this entity.
 * Heavily used in the display system but also useful for games.
 *
 * @author RK
 */
class Entity implements IEntity
{

	/**
	 * internal dispatcher, might be replaced with specific messagers allowing for bubbling or similar features
	 */
	@:isVar private var dispatcher(get,set):IEventDispatcher;

	/**
	 * list of components, component classes have to be unique (cant have the same component-type twice)
	 */
	public var componentSet:VectorSet<IComponent<Dynamic>>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( numComponents:Int = 1 )
	{
		this.componentSet = new VectorSet<IComponent<Dynamic>>( numComponents, true );
	}

	public function destoryEntity():Void
	{
		for( component in this.componentSet )
		{
			this.removeComponent( component, true );
		}

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

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * adds the component, but also removes a component of the same class if found
	 */
	public function setComponent( component:IComponent<Dynamic> ):Void
	{
		var existing:IComponent<Dynamic> = this.getComponent( Type.getClass( component ) );

		if( existing != component )
		{
			if( existing != null  )
				this.removeComponent( existing );

			this.addComponent( component );
		}
	}

	/**
	 * searches for the given component type; slow as it iterates over all components
	 *
	 * @param	type
	 * @return
	 */
	public function getComponent<T:IComponent<Dynamic>>( type:Class<T> ):Null<T>
	{
		for( component in this.componentSet )
		{
			if( Std.is( component, type ) )
				return cast component;
		}

		return null;
	}

	/**
	 * dispatches an EntityEvent.COMPONENT_ADDED in case of success
	 *
	 * @param	component
	 * @return
	 */
	public function addComponent( component:IComponent<Dynamic> ):Bool
	{
		if( component.entity != null)
			component.entity.removeComponent( component );

		component.entity = this;

		var success:Bool = this.componentSet.add( component );

		// -------------- //

		if( !success )
			throw "unknown error adding the component " + component;

		if( this.hasListener( EntityEvent.COMPONENT_ADDED ) )
		{
			var event:EntityEvent = new EntityEvent( EntityEvent.COMPONENT_ADDED );
				event.component = component;

			this.dispatch( event );
		}

		return success;
	}

	/**
	 * dispatches an EntityEvent.COMPONENT_REMOVED in case of success
	 *
	 * @param	component
	 * @return
	 */
	public function removeComponent( component:IComponent<Dynamic>, ?destroy:Bool = true ):Bool
	{
		if( component.entity != this )
			throw "can't remove a component not beeing added to this entity";

		var success:Bool = this.componentSet.remove( component );

		if( destroy )
			component.destroyComponent();

		component.entity = null;

		// -------------- //

		if( !success )
			throw "unknown error removing the component " + component;

		if( this.hasListener( EntityEvent.COMPONENT_REMOVED ) )
		{
			var event:EntityEvent = new EntityEvent( EntityEvent.COMPONENT_REMOVED );
				event.component = component;

			this.dispatch( event );
		}

		return success;
	}

	/**
	 *
	 * @return
	 */
	public function getComponentIterator():Iterator<IComponent<Dynamic>>
	{
		return this.componentSet.iterator();
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