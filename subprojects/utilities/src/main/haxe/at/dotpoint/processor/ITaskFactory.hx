package haxe.at.dotpoint.processor ;

import haxe.at.dotpoint.processor.ITask;

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