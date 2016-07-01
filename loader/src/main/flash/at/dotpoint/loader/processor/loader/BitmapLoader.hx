package flash.at.dotpoint.loader.processor.loader;

import flash.display.Bitmap;

/**
 * ...
 * @author RK
 */
class BitmapLoader extends ADisplayLoader<Bitmap>
{

	public function new()
	{
		super();
	}

	/**
	 *
	 * @param	event
	 */
	override private function onComplete( ?event:Dynamic ):Void
	{
		this.result = cast this.loader.content;
		super.onComplete();
	}

}