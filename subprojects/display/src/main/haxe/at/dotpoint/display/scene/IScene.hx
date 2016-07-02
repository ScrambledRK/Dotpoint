package haxe.at.dotpoint.display.scene;

import haxe.at.dotpoint.core.datastructure.graph.TreeNode;
import haxe.at.dotpoint.display.renderable.IDisplayObject;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;

/**
 * @author RK
 */

interface IScene<TEntity:IDisplayObject>
{

	/**
	 *
	 * @return
	 */
	public function getSpatialTree():TreeNode<TEntity>;

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function getRegisterData<T:Dynamic>( entity:TEntity, type:RegisterType ):T;
}