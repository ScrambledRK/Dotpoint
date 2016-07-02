package haxe.at.dotpoint.display.renderable.material.buffer;

import haxe.at.dotpoint.display.IDisplayEngine;
import haxe.at.dotpoint.display.renderable.IRenderable.IRenderableBuffer;
import haxe.at.dotpoint.display.renderable.material.data.IMaterialData;
import haxe.at.dotpoint.display.renderable.shader.IShader;

/**
 * @author RK
 */
interface IMaterialBuffer extends IAMaterialBuffer<IMaterialData>
{

}

/**
 * @author RK
 */
interface IAMaterialBuffer<TMaterialData:IMaterialData> extends IRenderableBuffer<TMaterialData,IShader>
{

}