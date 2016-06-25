package haxe.core.entity;

import haxe.at.dotpoint.core.entity.Entity;
import haxe.at.dotpoint.core.entity.IEntity;
import haxe.at.dotpoint.core.entity.Component;
import massive.munit.Assert;

/**
 * ...
 * @author RK
 */
class EntityTest
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() 
	{
		
	}
	
	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //
	
	/**
	 * 
	 */
	@Test
	public function simpleEntity():Void
	{
		var component:ComponentID = new ComponentID( "TEST" );

		var entity:Entity = new Entity();
			entity.addComponent( component );

		Assert.areSame( component, entity.getComponent( ComponentID ) );
		Assert.areSame( entity, component.entity );

		entity.removeComponent( component );

		Assert.isNull( entity.getComponent( ComponentID ) );
		Assert.isNull( component.entity );
	}

}

private class ComponentID extends Component<IEntity>
{
	public var ID:String;
	
	public function new ( ID:String )
	{
		super();
		this.ID = ID;
	}
	
	public function toString():String
	{
		return this.ID;
	}
}