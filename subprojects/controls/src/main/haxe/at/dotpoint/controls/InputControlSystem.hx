package haxe.at.dotpoint.controls;

import haxe.at.dotpoint.controls.keyboard.AKeyboardInput;
import haxe.at.dotpoint.controls.keyboard.IKeyboardInput;
import haxe.at.dotpoint.controls.keyboard.KeyStatus;


/**
 * ...
 * @author RK
 */
class InputControlSystem implements IInputControlSystem
{

	/**
	 *
	 */
	public var keyboardInput:IKeyboardInput;

	// ------------------- //

	/**
	 *
	 */
	private var requests:Array<InputRequest>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 *
	 * @param	keyboard
	 */
	public function new()
	{
		this.requests = new Array<InputRequest>();
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	/**
	 *
	 * @param	id
	 * @return
	 */
	public function getInputRequest( id:String ):InputRequest
	{
		for( request in this.requests )
		{
			if( request.ID == id )
				return request;
		}

		return null;
	}

	/**
	 *
	 * @param	request
	 */
	public function setInputRequest( request:InputRequest ):Bool
	{
		if( this.getInputRequest( request.ID ) != null )
			return false;

		this.requests.push( request );
		return true;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	/**
	 *
	 * @param	request
	 * @return
	 */
	public function getInputValue( request:InputRequest ):Float
	{
		if( request == null )
			throw "invalid input request";

		switch( request.type )
		{
			case InputType.KEYBOARD:
			{
				var status:KeyStatus = this.keyboardInput.getKeyStatus( request.code );

				switch( status )
				{
					case KeyStatus.DOWN, KeyStatus.REPEAT:
						return 1.0;

					default:
						return 0.0;
				}
			}

			case InputType.MOUSE:
				return 0.0;
		}

		return -1.0;
	}

}