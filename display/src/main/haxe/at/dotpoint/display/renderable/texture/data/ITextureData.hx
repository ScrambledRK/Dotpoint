package haxe.at.dotpoint.display.renderable.texture.data;

import haxe.at.dotpoint.display.renderable.IRenderable.IRenderableData;
import haxe.io.Bytes;

/**
 * @author RK
 */
interface ITextureData extends IRenderableData<TextureSignature>
{
	/**
	 * array of RGBA values between 0 and 255 in a stride of 4 (R, G, B, A: for each pixel)
	 */
	public var pixels:Bytes;

	/**
	 * should not be negative
	 */
	public var width(default, null):Int;

	/**
	 * should not be negative
	 */
	public var height(default, null):Int;

	// ---------------- //

	/**
	 *
	 * @param	x
	 * @param	y
	 */
	public function getPixel( x:Int, y:Int ):Int;

	/**
	 *
	 * @param	x
	 * @param	y
	 */
	public function setPixel( x:Int, y:Int, value:Int ):Void;
}
