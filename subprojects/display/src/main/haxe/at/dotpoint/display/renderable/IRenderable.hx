package haxe.at.dotpoint.display.renderable;

import haxe.at.dotpoint.datastructure.entity.IComponent;
import haxe.at.dotpoint.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.display.IDisplayEngine;
import haxe.at.dotpoint.display.renderable.input.IRenderInput;
import haxe.at.dotpoint.display.renderable.material.IMaterial;
import haxe.at.dotpoint.display.renderable.mesh.IMesh;
import haxe.at.dotpoint.display.renderable.register.RegisterSignature;
import haxe.at.dotpoint.display.renderable.shader.IShader;

/**
 * @author RK
 */
interface IRenderable extends IARenderable<IMesh,IMaterial>
{

}

/**
 * @author RK
 */
interface IARenderable<TMesh:IMesh,TMaterial:IMaterial> extends IComponent<IDisplayObject>
{
	/**
	 *
	 */
	public var mesh:TMesh;

	/**
	 *
	 */
	public var material:TMaterial;

	/**
	 *
	 */
	public var shader:IShader;

	/**
	 *
	 */
	public var input:IRenderInput;
}

/**
 * @author RK
 */
interface IRenderableComponent<TData:IRenderableData<Dynamic>,TBuffer:IRenderableBuffer<TData,Dynamic>>
{
	/**
	 *
	 */
	public var data:TData;

	/**
	 *
	 */
	public var buffer:TBuffer;
}

/**
 * @author RK
 */
interface IRenderableData<TSignature:RegisterSignature>
{
	/**
	 *
	 */
	public var name:String;

	/**
	 * status whether or not the data has changed (relavant for allocate/dispose of buffer)
	 */
	public var lazyStatus:LazyStatus;

	/**
	 * returns a current list of RegisterTypes used
	 */
	public var signature(get,null):TSignature;
}

/**
 * @author RK
 */
interface IRenderableBuffer<TAllocationData:IRenderableData<Dynamic>,TBindData:Dynamic>
{

	/**
	 * allocates the buffer with the given data and uploads it to the GPU
	 */
	public function allocate( data:TAllocationData ):Void;

	/**
	 * remove the buffer data from the GPU
	 */
	public function dispose( data:TAllocationData ):Void;

	// ----------------- //

	/**
	 * sets the buffer as currently active on the GPU (shader calls will use this allocated mesh then)
	 */
	public function bind( data:TAllocationData, target:TBindData ):Void;

	/**
	 * sets the mesh buffer as inactive on the GPU (no mesh will be active for shader calls then)
	 */
	public function unbind( data:TAllocationData, target:TBindData ):Void;
}