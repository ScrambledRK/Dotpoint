package haxe.at.dotpoint.display.renderable.shader.buffer;
import haxe.at.dotpoint.display.renderable.register.RegisterSignature;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.at.dotpoint.display.renderable.shader.data.IShaderData;
import haxe.at.dotpoint.display.renderable.input.IRenderInput;
import haxe.at.dotpoint.display.renderable.shader.data.ShaderSignature;

/**
 * ...
 * @author RK
 */
class AShaderBuffer implements IShaderBuffer
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
	public function allocate( data:IShaderData ):Void
	{
		throw "must override abstract method";
	}

	/**
	 * remove the mesh data from the GPU
	 */
	public function dispose( data:IShaderData ):Void
	{
		throw "must override abstract method";
	}

	// ************************************************************************ //
	// Bind
	// ************************************************************************ //

	/**
	 *
	 */
	public function bind( data:IShaderData, input:IRenderInput ):Void
	{
		throw "must override abstract method";
	}

	/**
	 *
	 */
	public function unbind( data:IShaderData, input:IRenderInput ):Void
	{
		throw "must override abstract method";
	}

	// ************************************************************************ //
	// setRegisterData
	// ************************************************************************ //

	/**
	 *
	 * @param	data
	 * @param	input
	 */
	private function setRegisterInputData( data:IShaderData, input:IRenderInput ):Void
	{
		var ssignature:ShaderSignature = data.signature;
		var isignature:RegisterSignature = input.signature;

		for( j in 0...ssignature.numRegisters )
		{
			var register:RegisterType = ssignature.getRegisterTypeByIndex( j );

			if( isignature.hasRegisterType( register ) )
				this.setRegisterData( register, input.getRegisterData( register ) );
		}
	}

	/**
	 *
	 */
	public function setRegisterData( type:RegisterType, data:Array<Float> ):Void
	{
		throw "must override abstract method";
	}

}