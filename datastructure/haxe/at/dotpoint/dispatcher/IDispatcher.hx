package at.dotpoint.dispatcher ;

/**
 * @author RK
 */
@:generic
//
interface IDispatcher<TType,TData>
{
	/**
	 *
	 */
	public function dispatch<T:(TData)>( type:TType, data:T ):Void;

	/**
	 * 
	 */
	public function addListener<T:(TData)>( type:TType, callback:T->Void ):Void;

	/**
	 * 
	 */
	public function removeListener<T:(TData)>( type:TType, callback:T->Void ):Void;

	/**
	 * 
	 */
	public function hasListener<T:(TData)>( type:TType, ?callback:T->Void ):Bool;

	/**
	 * 
	 */
	public function clearListener( ?type:TType ):Void;
}