package haxe.at.dotpoint.display.renderable.shader.buffer;

import haxe.at.dotpoint.display.renderable.IRenderable.IRenderableBuffer;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.at.dotpoint.display.renderable.shader.data.IShaderData;
import haxe.at.dotpoint.display.renderable.input.IRenderInput;

/**
 * @author RK
 */

interface IShaderBuffer extends IRenderableBuffer<IShaderData,IRenderInput>
{
	/**
	 *
	 */
	public function setRegisterData( type:RegisterType, data:Array<Float> ):Void;
}