package at.dotpoint.display.renderable;

/**
 * 2017-03-20
 * @author RK
 */
interface IRenderableBuffer<TBufferData:Dynamic>
{
	/**
	 * allocates the buffer with the given data and uploads it to the GPU
	 */
	public function allocate( data:TBufferData ):Void;

	/**
	 * remove the buffer data from the GPU
	 */
	public function dispose( data:TBufferData ):Void;

}
