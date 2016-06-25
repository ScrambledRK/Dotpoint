package haxe.at.dotpoint.display.renderable;

import haxe.at.dotpoint.display.renderable.material.buffer.IMaterialBuffer;
import haxe.at.dotpoint.display.renderable.material.data.IMaterialData;
import haxe.at.dotpoint.display.renderable.mesh.buffer.IMeshBuffer;
import haxe.at.dotpoint.display.renderable.mesh.data.IMeshData;
import haxe.at.dotpoint.display.renderable.shader.buffer.IShaderBuffer;
import haxe.at.dotpoint.display.renderable.shader.data.IShaderData;

/**
 * ...
 * @author RK
 */
class RenderableFactory
{

	/**
	 *
	 */
	public static var instance:RenderableFactory;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{

	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	data
	 * @return
	 */
	public function createMeshBuffer( data:IMeshData ):IMeshBuffer
	{
		throw "must override method";
		return null;
	}

	/**
	 *
	 * @param	data
	 * @return
	 */
	public function createMaterialBuffer( data:IMaterialData ):IMaterialBuffer
	{
		throw "must override method";
		return null;
	}

	/**
	 *
	 * @param	data
	 * @return
	 */
	public function createShaderBuffer( data:IShaderData ):IShaderBuffer
	{
		throw "must override method";
		return null;
	}

}