package haxe.at.dotpoint.core.processor ;

import haxe.at.dotpoint.core.processor.ITask;

/**
 * ...
 * @author RK
 */
interface ITaskFactory
{

	/**
	 *
	 * @param	id
	 * @param	data
	 * @return
	 */
	public function createTask( id:String, data:Dynamic ):ITask;

}