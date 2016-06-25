package haxe.at.dotpoint.controls.keyboard;

/**
 * ...
 * @author RK
 */
class KeyboardMap
{

	#if flash
	public static var W:Int = flash.ui.Keyboard.W;
	public static var S:Int = flash.ui.Keyboard.S;
	public static var A:Int = flash.ui.Keyboard.A;
	public static var D:Int = flash.ui.Keyboard.D;
	public static var R:Int = flash.ui.Keyboard.R;
	public static var F:Int = flash.ui.Keyboard.F;

	public static var SHIFT:Int = flash.ui.Keyboard.SHIFT;
	#elseif (java && lwjgl)
	public static var W:Int = org.lwjgl.glfw.GLFW.GLFW_KEY_W;
	public static var S:Int = org.lwjgl.glfw.GLFW.GLFW_KEY_S;
	public static var A:Int = org.lwjgl.glfw.GLFW.GLFW_KEY_A;
	public static var D:Int = org.lwjgl.glfw.GLFW.GLFW_KEY_D;
	public static var R:Int = org.lwjgl.glfw.GLFW.GLFW_KEY_R;
	public static var F:Int = org.lwjgl.glfw.GLFW.GLFW_KEY_F;

	public static var SHIFT:Int = org.lwjgl.glfw.GLFW.GLFW_KEY_LEFT_SHIFT;
	#end

	/**
	 *
	 * @param	keyID
	 * @return
	 */
	public static function getKeyCode( keyID:String ):Int
	{
		switch( keyID.toUpperCase() )
		{
			case "W":	return KeyboardMap.W;
			case "S":	return KeyboardMap.S;
			case "A":	return KeyboardMap.A;
			case "D":	return KeyboardMap.D;
			case "R":	return KeyboardMap.R;
			case "F":	return KeyboardMap.F;

			case "SHIFT":	return KeyboardMap.SHIFT;
		}

		return -1;
	}
}