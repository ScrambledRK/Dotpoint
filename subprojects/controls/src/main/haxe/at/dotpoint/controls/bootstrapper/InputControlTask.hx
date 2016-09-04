package at.dotpoint.controls.bootstrapper;

import at.dotpoint.bootstrapper.BootstrapperTask;
import at.dotpoint.controls.IInputControlSystem;
import at.dotpoint.controls.InputRequest;
import at.dotpoint.controls.InputType;
import at.dotpoint.controls.keyboard.KeyboardMap;

/**
	"inputControl":
	{
		"requests":[
			{
				"ID":"forward",
				"type":"keyboard",
				"value":"W"
			},
			{
				"ID":"backward",
				"type":"keyboard",
				"value":"S"
			},
			{
				"ID":"strafe_left",
				"type":"keyboard",
				"value":"A"
			},
			{
				"ID":"strafe_right",
				"type":"keyboard",
				"value":"D"
			}
		]
	}
 */
class InputControlTask extends BootstrapperTask<Dynamic>
{

	/**
	 *
	 */
	@:isVar public static var ID(default,never):String = "inputControl";

	/**
	 *
	 */
	public var inputController:IInputControlSystem;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?config:Dynamic = null, ?inputController:IInputControlSystem )
	{
		super( InputControlTask.ID, config );

		this.inputController = inputController;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	override public function execute():Void
	{
		super.execute();

		if( this.inputController == null )
			throw "must set IInputControlSystem";

		// -------------------------- //

		if( this.config != null && this.config.requests != null )
		{
			var requests:Array<Dynamic> = cast this.config.requests;

			for( input in requests )
			{
				var request:InputRequest = this.parseInputRequest( input );

				if( request == null )
					throw "unable to create InputRequest: " + input;

				this.inputController.setInputRequest( request );
			}
		}

		// -------------------------- //

		this.clear();
	}

	/**
	 *
	 * @param	input
	 * @return
	 */
	private function parseInputRequest( input:Dynamic ):InputRequest
	{
		if( input == null || input.ID == null || input.type == null || input.value == null )
			return null;

		var type:InputType = InputType.createByName( input.type );

		if( type == null )
			return null;

		// ------------------------ //

		switch( type )
		{
			case InputType.KEYBOARD:
			{
				var value:Int = KeyboardMap.getKeyCode( input.value );

				if( value == -1 )
					return null;

				return new InputRequest( input.ID, type, value );
			}

			case InputType.MOUSE:
				return null;
		}

		return null;
	}


	/**
	 *
	 */
	override public function clear():Void
	{
		this.inputController = null;
		super.clear();
	}
}