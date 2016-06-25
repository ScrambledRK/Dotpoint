package haxe.at.dotpoint.display.renderable.shader;

import haxe.at.dotpoint.display.renderable.shader.buffer.IShaderBuffer;
import haxe.at.dotpoint.display.renderable.shader.data.IShaderData;


/**
 * ...
 * @author RK
 */
class AShader implements IShader
{

	/**
	 *
	 */
	public var data:IShaderData;

	/**
	 *
	 */
	public var buffer:IShaderBuffer;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( data:IShaderData, ?buffer:IShaderBuffer )
	{
		if( buffer == null )
			buffer = RenderableFactory.instance.createShaderBuffer( data );

		this.data 	= data;
		this.buffer = buffer;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
}