package haxe.at.dotpoint.display.renderable.input;
import haxe.at.dotpoint.display.renderable.register.RegisterSignature;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;

/**
 * world/entity related register data like: entity world transformations, lights, physics (wind, gravity) or anything else not
 * material or geometry specific that might be pulled from the world (scene) or some place else
 */
interface IRenderInput
{
	/**
	 * returns a current list of RegisterTypes used
	 */
	public var signature(get, null):RegisterSignature;

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function getRegisterData( type:RegisterType ):Array<Float>;
}