package at.dotpoint.datastructure.entity;

import at.dotpoint.datastructure.entity.IEntity;


/**
 * Component augmenting an Entity with functionallity and/or data in order to allow
 * flexible assembling of multi functional objects. display system uses it heavily.
 */
class Component implements IComponent
{

	//
	private var entity:IEntity;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 *
	 * @param dispatcher internal dispatcher, will be EventDispatcher when given null
	 */
	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * called when this component has been added to to new entity.
	 */
	private function onEntityAttached( newEntity:IEntity ):Bool
	{
		return true;
	}

	/**
	 * called when this component has been added to to new entity. in case it has been attached
	 */
	private function onEntityDetached( oldEntity:IEntity ):Bool
	{
		return true;
	}

}