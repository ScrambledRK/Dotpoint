package haxe.at.dotpoint.display.renderable;

import haxe.at.dotpoint.datastructure.entity.Component;
import haxe.at.dotpoint.display.renderable.input.IRenderInput;
import haxe.at.dotpoint.display.renderable.IRenderable.IARenderable;
import haxe.at.dotpoint.display.renderable.material.IMaterial;
import haxe.at.dotpoint.display.renderable.mesh.IMesh;
import haxe.at.dotpoint.display.renderable.shader.IShader;

class Renderable extends ARenderable<IMesh,IMaterial> implements IRenderable
{

}

/**
 * ...
 * @author RK
 */
class ARenderable<TMesh:IMesh,TMaterial:IMaterial> extends Component<IDisplayObject> implements IARenderable<TMesh,TMaterial>
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

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( mesh:TMesh, material:TMaterial, ?shader:IShader )
	{
		super();

		this.mesh 		= mesh;
		this.material 	= material;
		this.shader 	= shader;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

}