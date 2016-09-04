package at.dotpoint.controls;

/**
 * @author RK
 */
interface IInputControlSystem
{

	/**
	 *
	 * @param	id
	 * @return
	 */
	public function getInputRequest( id:String ):InputRequest;

	/**
	 *
	 * @param	request
	 * @return
	 */
	public function setInputRequest( request:InputRequest ):Bool;

	/**
	 *
	 * @param	request
	 * @return
	 */
	public function getInputValue( request:InputRequest ):Float;

}