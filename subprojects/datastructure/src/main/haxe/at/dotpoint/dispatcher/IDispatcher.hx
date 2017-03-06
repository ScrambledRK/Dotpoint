package at.dotpoint.dispatcher ;

/**
 * @author RK
 */

interface IDispatcher<TData,TListener>
{
	/**
	 * 
	 * 
	 * @param	event
	 */
	public function dispatch( event:TData ):Bool;
	
	/**
	 * 
	 * @param	type
	 * @param	call
	 */
	public function addListener( type:TListener, call:TData->Void ):Void;
	
	/**
	 * 
	 * @param	type
	 * @param	call
	 */
	public function removeListener( type:TListener, call:TData->Void ):Void;
	
	/**
	 * 
	 * @param	type
	 * @return
	 */
	public function hasListener( type:TListener ):Bool;
	
	/**
	 * 
	 * 
	 * 
	 */
	public function clearListeners():Void;
}