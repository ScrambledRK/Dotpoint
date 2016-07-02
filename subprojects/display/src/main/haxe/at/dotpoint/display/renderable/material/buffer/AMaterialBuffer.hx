package haxe.at.dotpoint.display.renderable.material.buffer;

import haxe.at.dotpoint.display.renderable.material.data.IMaterialData;
import haxe.at.dotpoint.display.renderable.material.data.MaterialSignature;
import haxe.at.dotpoint.display.renderable.register.type.RegisterContext;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.at.dotpoint.display.renderable.shader.data.ShaderSignature;
import haxe.at.dotpoint.display.renderable.shader.IShader;

/**
 * ...
 * @author RK
 */
class AMaterialBuffer implements IMaterialBuffer
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
	public function allocate( data:IMaterialData ):Void
	{
		return;
	}

	/**
	 * remove the mesh data from the GPU
	 */
	public function dispose( data:IMaterialData ):Void
	{
		return;
	}

	// ************************************************************************ //
	// Bind
	// ************************************************************************ //

	/**
	 * sets the mesh buffer as currently active on the GPU (shader calls will use this allocated mesh then)
	 */
	public function bind( data:IMaterialData, shader:IShader ):Void
	{
		trace( "bind material: " + data.name );

		var ssignature:ShaderSignature = shader.data.signature;
		var msignature:MaterialSignature = data.signature;

		for( j in 0...ssignature.numRegisters )
		{
			var register:RegisterType = ssignature.getRegisterTypeByIndex( j );

			if( register.context != RegisterContext.MATERIAL )
				continue;

			if( msignature.hasRegisterType( register ) )
				shader.buffer.setRegisterData( register, data.getRegisterData( register ) );
		}
	}

	/**
	 * sets the mesh buffer as inactive on the GPU (no mesh will be active for shader calls then)
	 */
	public function unbind( data:IMaterialData, shader:IShader ):Void
	{
		return;
	}

}