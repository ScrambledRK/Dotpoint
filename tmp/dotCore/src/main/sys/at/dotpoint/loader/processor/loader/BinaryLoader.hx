package sys.at.dotpoint.loader.processor.loader;

import haxe.at.dotpoint.loader.processor.loader.IDataLoader;
import haxe.io.Bytes;

/**
 * ...
 * @author RK
 */
class BinaryLoader extends AFileLoader implements IDataLoader<Bytes>
{

	/**
	 *
	 */
	public var result(default, null):Bytes;

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

	/**
	 *
	 * @param	event
	 */
	override private function onComplete( ?event:Dynamic ):Void
	{
		this.result = this.bytes;
		super.onComplete(event);
	}
}