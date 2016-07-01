package haxe.at.dotpoint.display.rendering;

import haxe.at.dotpoint.display.renderable.IDisplayObject;
import haxe.at.dotpoint.display.renderable.IRenderable;

/**
 * @author RK
 */

interface IRenderer
{

	/**
	 *
	 * @param	entities
	 */
	public function render( entities:Iterable<IRenderable> ):Void;

}