package at.dotpoint.loader.processor.loader;

import at.dotpoint.display.renderable.texture.data.TextureData;
import at.dotpoint.loader.processor.loader.IDataLoader;

/**
 * ...
 * @author RK
 */
class BitmapLoader extends AFileLoader implements IDataLoader<TextureData>
{

	/**
	 *
	 */
	public var result(default, null):TextureData;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	event
	 */
	override private function onComplete( ?event:Dynamic ):Void
	{
		this.result = new TextureData( 0, 0, this.bytes );
		super.onComplete(event);
	}
}