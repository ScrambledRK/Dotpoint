package lwjgl.at.dotpoint.controls.keyboard;

import haxe.at.dotpoint.controls.keyboard.AKeyboardInput;
import haxe.at.dotpoint.controls.keyboard.KeyStatus;
import java.lang.Long;
import org.lwjgl.glfw.GLFW;

/**
 * ...
 * @author RK
 */
@:access(lwjgl.at.dotpoint.controls.keyboard.KeyboardInputCallback)
//
class KeyboardInput extends AKeyboardInput
{

	/**
	 *
	 */
	public var callback(default, null):KeyboardInputCallback;

	/**
	 *
	 */
	public var window(default, null):Long;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ptr_window:Long )
	{
		super();
		this.window = ptr_window;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	key
	 * @param	scancode
	 * @param	action
	 * @param	mods
	 */
	private function invoke( key:Int, scancode:Int, action:Int, mods:Int ):Void
	{
		switch( action )
		{
			case GLFW.GLFW_PRESS:
				this.keyStatusMap.set( key, KeyStatus.DOWN );

			case GLFW.GLFW_RELEASE:
				this.keyStatusMap.set( key, KeyStatus.UP );

			case GLFW.GLFW_REPEAT:
				this.keyStatusMap.set( key, KeyStatus.REPEAT );
		}
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	/**
	 *
	 */
	public override function initialize():Void
	{
		super.initialize();

		this.callback = new KeyboardInputCallback( this );
		GLFW.glfwSetKeyCallback( this.window, this.callback  );
	}

	/**
	 *
	 */
	public override function clear():Void
	{
		if( this.callback != null )
			this.callback.clear();

		GLFW.glfwSetKeyCallback( this.window, null );
		this.callback = null;

		super.clear();
	}

}