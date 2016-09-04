package haxe.at.dotpoint.datastructure.entity;

import haxe.at.dotpoint.datastructure.collection.VectorSet;
import haxe.at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 * ...
 * @author RK
 */
interface IEntity extends IEventDispatcher
{
	/**
	 *
	 */
	public var componentSet(default,null):VectorSet<IComponent>;

	/**
	 *
	 */
	public function getComponent<T:IComponent>( type:Class<T> ):Null<T>;

	/**
	 *
	 */
	public function addComponent( component:IComponent ):Bool;

	/**
	 *
	 */
	public function removeComponent( component:IComponent ):Bool;

}