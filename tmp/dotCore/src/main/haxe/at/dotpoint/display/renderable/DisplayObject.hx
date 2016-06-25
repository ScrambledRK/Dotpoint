package haxe.at.dotpoint.display.renderable;

import haxe.at.dotpoint.display.renderable.material.data.IMaterialData;
import haxe.at.dotpoint.display.renderable.mesh.data.IMeshData;
import haxe.at.dotpoint.display.renderable.shader.IShader;
import haxe.at.dotpoint.math.vector.IVector3;
import haxe.at.dotpoint.spatial.SpatialEntity;

/**
 * Abstract Basic-DisplayObject Entity ... must be extended to implement IDisplayObject
 * @author RK
 */
class DisplayObject extends ASpatialEntity<IDisplayObject> implements IDisplayObject
{

	/**
	 *
	 */
	public var renderable(default,null):IRenderable;

	// ------------------ //

	//
	public var mesh(get,set):IMeshData;

	//
	public var material(get,set):IMaterialData;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( renderable:IRenderable, ?numComponents:Int = 5, ?pivot:IVector3 = null )
	{
		super( numComponents, pivot );

		this.renderable = renderable;
		this.addComponent( this.renderable );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_mesh():IMeshData {	return this.renderable.mesh.data; }

	private function set_mesh( data:IMeshData ):IMeshData
	{
		return this.renderable.mesh.data = data;
	}

	/**
	 *
	 * @return
	 */
	private function get_material():IMaterialData {	return this.renderable.material.data; }

	private function set_material( data:IMaterialData ):IMaterialData
	{
		return this.renderable.material.data = data;
	}
}