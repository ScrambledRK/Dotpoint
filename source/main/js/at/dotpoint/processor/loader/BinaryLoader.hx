package at.dotpoint.processor.loader;

import at.dotpoint.dispatcher.event.IEventDispatcher;
import js.html.ArrayBuffer;
import js.html.XMLHttpRequestResponseType;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
@:require(js)
//
class BinaryLoader extends AHTTPLoader<Bytes>
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( ?proxy:IEventDispatcher )
	{
		super( proxy );

		//
		this.loader.responseType = XMLHttpRequestResponseType.ARRAYBUFFER;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @param	event
	 */
	override private function setResult( ):Void
	{
		if( this.loader.response == null )
			super.setResult( );

		//
		this.result = Bytes.ofData( cast( this.loader.response, ArrayBuffer ) );
	}
}