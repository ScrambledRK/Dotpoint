package sys.at.dotpoint.loader.processor.loader;

import haxe.at.dotpoint.loader.processor.loader.IDataLoader;
import sys.at.dotpoint.loader.processor.loader.AFileLoader;

/**
 * ...
 * @author RK
 */
class StringLoader extends AFileLoader implements IDataLoader<String>
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

	private override function onComplete( ?event:Dynamic ):Void
	{
		try
		{
			this.result = this.bytes.getString( 0, this.bytes.length );
		}
		catch( error:Dynamic )
		{
			trace( "readString Error" );
		}

		super.onComplete(event);
	}
}