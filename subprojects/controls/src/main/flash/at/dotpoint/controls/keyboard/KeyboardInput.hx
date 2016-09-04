package at.dotpoint.controls.keyboard;

import flash.events.KeyboardEvent;
import flash.Lib;
import at.dotpoint.controls.keyboard.AKeyboardInput;
import at.dotpoint.controls.keyboard.KeyStatus;

/**
 * ...
 * @author RK
 */
class KeyboardInput extends AKeyboardInput
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	private function onKeyDown( e:KeyboardEvent )
    {
		var previous:KeyStatus = this.getKeyStatus( e.keyCode );

		switch( previous )
		{
			case KeyStatus.DOWN:
				this.keyStatusMap.set( e.keyCode, KeyStatus.REPEAT );

			default:
				this.keyStatusMap.set( e.keyCode, KeyStatus.DOWN );
		}
    }

	/**
	 *
	 */
    private function onKeyUp( e:KeyboardEvent )
    {
       this.keyStatusMap.set( e.keyCode, KeyStatus.UP );
    }

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	/**
	 *
	 */
	public override function initialize():Void
	{
		super.initialize();

		Lib.current.stage.addEventListener( KeyboardEvent.KEY_DOWN, this.onKeyDown );
        Lib.current.stage.addEventListener( KeyboardEvent.KEY_UP, this.onKeyUp );
	}

	/**
	 *
	 */
	public override function clear():Void
	{
		Lib.current.stage.removeEventListener( KeyboardEvent.KEY_DOWN, this.onKeyDown );
        Lib.current.stage.removeEventListener( KeyboardEvent.KEY_UP, this.onKeyUp );

		super.clear();
	}
}