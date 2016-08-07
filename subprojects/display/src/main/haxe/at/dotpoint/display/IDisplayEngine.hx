package haxe.at.dotpoint.display;

import haxe.at.dotpoint.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.dispatcher.event.IEventDispatcher;
import haxe.at.dotpoint.display.renderable.IDisplayObject;
import haxe.at.dotpoint.display.rendering.context.IRenderContext;
import haxe.at.dotpoint.display.rendering.IRenderer;
import haxe.at.dotpoint.display.scene.IScene;

/**
 * @author RK
 */

interface IDisplayEngine extends IEventDispatcher
{
	/**
	 *
	 * @return
	 */
	public function getRenderer():IRenderer;

	/**
	 *
	 * @return
	 */
	public function getContext():IRenderContext;

	/**
	 *
	 * @return
	 */
	public function getScene():IScene<IDisplayObject>;

	/**
	 *
	 * @param	onComplete
	 */
	public function initialize( onComplete:StatusEvent->Void ):Void;
}