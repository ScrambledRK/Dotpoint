package haxe.at.dotpoint.datastructure.entity;

import haxe.at.dotpoint.datastructure.entity.IEntity.IAEntity;
import haxe.at.dotpoint.datastructure.entity.IComponent.IComponent;
import haxe.at.dotpoint.datastructure.entity.composition.EntityComposition;
import haxe.at.dotpoint.datastructure.entity.composition.EntityCompositionRequirement;
import haxe.at.dotpoint.datastructure.collection.VectorSet;
import haxe.at.dotpoint.dispatcher.event.Event;
import haxe.at.dotpoint.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.dispatcher.event.IEventDispatcher;
import haxe.at.dotpoint.datastructure.entity.event.EntityEvent;

//
// TODO: remove entity field for components
// TODO: provide newEntity for onEntityDetached
//

/**
 * Basic Object in control of components which augment the functionallity of this entity.
 * Heavily used in the display system but also useful for games.
 *
 * @author RK
 */
class Entity extends EventDispatcher implements IEntity
{

	/**
	 * list of components, component classes have to be unique (cant have the same component-type twice)
	 */
	public var componentSet(default,null):VectorSet<IComponent>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( numComponents:Int = 1 )
	{
		this.componentSet = new VectorSet<IComponent>( numComponents, true );
	}

	//
	public function clear():Void
	{
		for( component in this.componentSet )
			this.removeComponent( component );

		this.clearListeners();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * adds the component, but also removes all components of the same class if any
	 */
	public function setComponent( component:IComponent ):Void
	{
		var existing:IComponent = null;

		while( (existing = this.getComponent( Type.getClass( component ) ) ) != null )
			this.removeComponent( existing );

		this.addComponent( component );
	}

	/**
	 * searches for the given component type; slow as it iterates over all components
	 *
	 * @param	type
	 * @return
	 */
	public function getComponent<T:IComponent>( type:Class<T> ):Null<T>
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
	public function addComponent( component:IComponent ):Bool
	{
		if( component.entity != null)
			component.entity.removeComponent( component );

		//
		component.onEntityAttached( this );
		component.entity = this;

		//
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
	public function removeComponent( component:IComponent ):Bool
	{
		if( component.entity != this )
			return false;

		component.onEntityDetached( this );
		component.entity = null;

		var success:Bool = this.componentSet.remove( component );

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

}