package haxe.at.dotpoint.display.renderable.mesh;

import haxe.at.dotpoint.display.renderable.IRenderable.IRenderableComponent;
import haxe.at.dotpoint.display.renderable.mesh.buffer.IMeshBuffer;
import haxe.at.dotpoint.display.renderable.mesh.data.IMeshData;

/**
 * @author RK
 */
interface IMesh extends IAMesh<IMeshData,IMeshBuffer>
{

}

/**
 * @author RK
 */
interface IAMesh<TMeshData:IMeshData,TMeshBuffer:IAMeshBuffer<TMeshData>> extends IRenderableComponent<TMeshData,TMeshBuffer>
{

}