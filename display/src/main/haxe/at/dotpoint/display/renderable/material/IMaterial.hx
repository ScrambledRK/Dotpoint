package haxe.at.dotpoint.display.renderable.material;

import haxe.at.dotpoint.display.renderable.IRenderable.IRenderableComponent;
import haxe.at.dotpoint.display.renderable.material.buffer.IMaterialBuffer;
import haxe.at.dotpoint.display.renderable.material.data.IMaterialData;

/**
 * @author RK
 */
interface IMaterial extends IAMaterial<IMaterialData,IMaterialBuffer>
{

}

/**
 * @author RK
 */
interface IAMaterial<TMaterialData:IMaterialData,TMaterialBuffer:IAMaterialBuffer<TMaterialData>> extends IRenderableComponent<TMaterialData,TMaterialBuffer>
{

}