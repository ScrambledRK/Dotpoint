package haxe.at.dotpoint.datastructure.entity;

import haxe.at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 * ...
 * @author RK
 */
interface IEntity extends IEventDispatcher
{

	/**
	 *
	 * @return
	 */
	public function getComponentIterator():Iterator<IComponent<Dynamic>>;

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function getComponent<T:IComponent<Dynamic>>( type:Class<T> ):Null<T>;

	/**
	 *
	 * @param	component
	 * @return
	 */
	public function addComponent( component:IComponent<Dynamic> ):Bool;

	/**
	 *
	 * @param	component
	 * @param	?destroy
	 * @return
	 */
	public function removeComponent( component:IComponent<Dynamic>, ?destroy:Bool = true ):Bool;

}