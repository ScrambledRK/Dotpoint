package haxe.at.dotpoint.display.renderable.material.buffer;

import haxe.at.dotpoint.display.renderable.shader.IShader;
import haxe.at.dotpoint.display.renderable.texture.buffer.ITextureBuffer;
import haxe.at.dotpoint.display.renderable.texture.data.ITextureData;

/**
 * ...
 * @author RK
 */
class ATextureBuffer implements ITextureBuffer
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{

	}

	// ************************************************************************ //
	// Allocate
	// ************************************************************************ //

	/**
	 * data mesh to upload to the GPU
	 */
	public function allocate( data:ITextureData ):Bool
	{
		throw "must override abstract method"
		return false;
	}

	/**
	 * remove the mesh data from the GPU
	 */
	public function dispose( data:ITextureData ):Void
	{
		throw "must override abstract method"
	}

	// ************************************************************************ //
	// Bind
	// ************************************************************************ //

	/**
	 * sets the mesh buffer as currently active on the GPU (shader calls will use this allocated mesh then)
	 */
	public function bind( data:ITextureData, shader:IShader ):Void
	{
		throw "must override abstract method"
	}

	/**
	 * sets the mesh buffer as inactive on the GPU (no mesh will be active for shader calls then)
	 */
	public function unbind( data:ITextureData, shader:IShader ):Void
	{
		throw "must override abstract method"
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //
}