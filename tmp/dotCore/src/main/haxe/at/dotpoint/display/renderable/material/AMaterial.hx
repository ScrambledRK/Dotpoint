package haxe.at.dotpoint.display.renderable.material;

import haxe.at.dotpoint.display.renderable.material.buffer.IMaterialBuffer;
import haxe.at.dotpoint.display.renderable.material.data.IMaterialData;

/**
 * ...
 * @author RK
 */
class AMaterial implements IMaterial
{

	/**
	 *
	 */
	public var data:IMaterialData;

	/**
	 *
	 */
	public var buffer:IMaterialBuffer;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( data:IMaterialData, ?buffer:IMaterialBuffer )
	{
		if( buffer == null )
			buffer = RenderableFactory.instance.createMaterialBuffer( data );

		this.data 	= data;
		this.buffer = buffer;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
}