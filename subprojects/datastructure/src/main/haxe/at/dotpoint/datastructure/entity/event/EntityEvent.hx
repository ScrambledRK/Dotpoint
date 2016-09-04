package at.dotpoint.datastructure.entity.event;

import at.dotpoint.datastructure.entity.IComponent;
import at.dotpoint.dispatcher.event.Event;
import at.dotpoint.datastructure.entity.IEntity;

/**
 * Basic Event used withing the Entity/Component System. A component automatically dispatches an Event
 * also to its entity, in which case the component field will be set as well as the entity field.
 *
 * @author RK
 */
class EntityEvent extends Event
{

	public static var COMPONENT_ADDED:String 	= "EntityEvent.COMPONENT_ADDED";
	public static var COMPONENT_REMOVED:String 	= "EntityEvent.COMPONENT_REMOVED";

	// ************************************************************************ //
	// ************************************************************************ //

	/**
	 * component dispatching the event, might be null if it has been sent directly through the entity
	 */
	@:isVar public var component(get,set):IComponent;

	/**
	 * entity in control of a component that most likely sent this request, might be just the entity
	 * that sent the event directly (like component added/removed)
	 */
	@:isVar public var entity(get,set):IEntity;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String )
	{
		super( type );
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 * component dispatching the event
	 */
	private function set_component( value:IComponent ):IComponent
	{
		return this.component = value;
	}

	private	function get_component():IComponent
	{
		if( this.component != null )
			return this.component;

		if( Std.is( this.target, IComponent ) )
			return cast this.target;

		return null;
	}

	/**
	 * entity dispatching the event
	 */
	private function set_entity( value:IEntity ):IEntity
	{
		return this.entity = value;
	}

	private	function get_entity():IEntity
	{
		if( this.entity != null )
			return this.entity;

		if( Std.is( this.target, IEntity )  )
			return cast this.target;

//		if( Std.is( this.target, IComponent ) )
//			return cast( this.target, IComponent ).entity;

		return null;
	}

}

