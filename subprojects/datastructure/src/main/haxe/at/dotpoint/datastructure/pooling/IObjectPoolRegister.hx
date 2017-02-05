package at.dotpoint.datastructure.pooling;

/**
 * @author RK
 */
interface IObjectPoolRegister 
{
	/**
	 * gives you a free index position to store data in according to the current pool status
	 * might not be incremental since empty gaps are tried to be filled.
	 * 
	 * @return (next) free index in the pool
	 */
	public function recieveIndex():Int;
	
	/**
	 * return and free up a previously occupied index position. this index can 
	 * then be recieved again.
	 * 
	 * @return (next) free index in the pool
	 */
	public function returnIndex( index:Int ):Void;
	
	/**
	 * @param size new total size of the pool ( may refuse or throw errors if smaller than getSizeFull() )
	 */
	public function resize( size:Int ):Void;
	
	// ------------- //
	
	/**
	 * @return total pool size that can be allocated (but are not necessarily)
	 */
	public function getSizeTotal():Int;
	
	/**
	 * @return amount of indices still possible to allocate
	 */
	public function getSizeFree():Int;
	
}