package haxe.at.dotpoint.datastructure.entity;

import haxe.at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 * ...
 * @author RK
 */
interface IComponent<TEntity:IEntity> extends IEventDispatcher
{

	/**
	 * entity managing this component
	 */
	public var entity(get, set):TEntity;

	/**
	 * called upon entity.removeComponent
	 */
	public function destroyComponent():Void;

}