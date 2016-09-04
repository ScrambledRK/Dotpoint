package at.dotpoint.datastructure.entity;

/**
 * ...
 * @author RK
 */
interface IComponent
{
	//
	private var entity:IEntity;

	//
	private function onEntityAttached( newEntity:IEntity ):Bool;

	//
	private function onEntityDetached( oldEntity:IEntity ):Bool;
}