package at.dotpoint.processor ;

import at.dotpoint.processor.ITask;

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