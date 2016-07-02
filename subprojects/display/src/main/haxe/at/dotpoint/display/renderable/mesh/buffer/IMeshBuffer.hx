package haxe.at.dotpoint.display.renderable.mesh.buffer;

import haxe.at.dotpoint.display.renderable.IRenderable.IRenderableBuffer;
import haxe.at.dotpoint.display.renderable.mesh.data.IMeshData;
import haxe.at.dotpoint.display.renderable.shader.IShader;
import haxe.at.dotpoint.display.IDisplayEngine;


/**
 * GPU representation of IMeshData
 */
interface IMeshBuffer extends IAMeshBuffer<IMeshData>
{

}

/**
 * GPU representation of IMeshData
 */
interface IAMeshBuffer<TMeshData:IMeshData> extends IRenderableBuffer<TMeshData,IShader>
{
	//
	public var indexBufferType:MeshIndexBufferType;

	//
	public var vertexBufferType:MeshVertexBufferType;
}