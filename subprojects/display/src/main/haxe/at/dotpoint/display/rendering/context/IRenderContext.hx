package haxe.at.dotpoint.display.rendering.context;

import haxe.at.dotpoint.core.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;

/**
 * 08.03.15
 * @author RK
 */
interface IRenderContext extends IEventDispatcher
{

	/**
	 * width/height of the screen in pixel
	 */
	public function getViewport():RenderViewport;

	/**
	 * fps, backgroundcolor etc
	 */
	public function getSettings():RenderSettings;

	// ---------- //

	/**
	 *
	 */
	public function initialize( onComplete:StatusEvent->Void ):Void;

}
