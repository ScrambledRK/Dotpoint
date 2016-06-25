package php.at.dotpoint.loader.processor.loader;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.loader.processor.loader.IDataLoader;

/**
 * ...
 * @author RK
 */
class StringLoader extends ACURLLoader implements IDataLoader<String>
{

	/**
	 *
	 */
	public var result(default, null):String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	private override function onComplete( event:Event ):Void
	{
		this.result = Std.string( this.curl_result );
		this.curl_result = null;

		super.onComplete(event);
	}

}