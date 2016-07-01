package haxe.at.dotpoint.display.renderable.material.data;

import haxe.at.dotpoint.core.dispatcher.lazy.LazyComponent;
import haxe.at.dotpoint.display.renderable.IRenderable.IRenderableData;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;

/**
 * @author RK
 */

interface IMaterialData extends IRenderableData<MaterialSignature>
{
	/**
	 *
	 */
	public function getRegisterData( type:RegisterType ):Array<Float>;
}