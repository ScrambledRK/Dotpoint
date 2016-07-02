package haxe.at.dotpoint.display.renderable.mesh;

import haxe.at.dotpoint.display.renderable.mesh.buffer.IMeshBuffer;
import haxe.at.dotpoint.display.renderable.mesh.data.IMeshData;

/**
 * ...
 * @author RK
 */
class AMesh implements IMesh
{

	/**
	 *
	 */
	public var data:IMeshData;

	/**
	 *
	 */
	public var buffer:IMeshBuffer;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 *
	 * @param	data
	 * @param	buffer
	 */
	public function new( data:IMeshData, ?buffer:IMeshBuffer )
	{
		if( buffer == null )
			buffer = RenderableFactory.instance.createMeshBuffer( data );

		this.data 	= data;
		this.buffer = buffer;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
}