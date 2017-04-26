package at.dotpoint.display.renderable;

/**
 * 2017-03-22
 * @author RK
 */
interface IRenderableBinding<TBindData:Dynamic>
{
	/**
	 * sets the buffer as currently active on the GPU
	 */
	public function bind( data:TBindData ):Void;

	/**
	 * sets the buffer as inactive on the GPU
	 */
	public function unbind( data:TBindData ):Void;
}
