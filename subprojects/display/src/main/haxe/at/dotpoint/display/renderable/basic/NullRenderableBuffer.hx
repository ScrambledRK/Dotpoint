package at.dotpoint.display.renderable.basic;

/**
 * 2017-04-23
 * @author RK
 */
class NullRenderableBuffer<TBufferData:Dynamic> implements IRenderableBuffer<TBufferData>
{


	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{

	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * sets the buffer as currently active on the GPU
	 */
	public function allocate( data:TBufferData ):Void
	{
		return;
	}

	/**
	 * sets the buffer as inactive on the GPU
	 */
	public function dispose( data:TBufferData ):Void
	{
		return;
	}

}
