package haxe.at.dotpoint.core.datastructure.entity;

import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;

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