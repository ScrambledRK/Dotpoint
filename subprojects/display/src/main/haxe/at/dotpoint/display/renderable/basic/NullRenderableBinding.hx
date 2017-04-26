package at.dotpoint.display.renderable.basic;

/**
 * 2017-04-23
 * @author RK
 */
class NullRenderableBinding<TBindData:Dynamic> implements IRenderableBinding<TBindData>
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
	public function bind( data:TBindData ):Void
	{
		return;
	}

	/**
	 * sets the buffer as inactive on the GPU
	 */
	public function unbind( data:TBindData ):Void
	{
		return;
	}

}
