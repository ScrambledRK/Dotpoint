package at.dotpoint.processor.loader;

import at.dotpoint.dispatcher.event.IEventDispatcher;
import haxe.io.Bytes;

/**
 *
 */
class BinaryLoader extends AFileLoader<Bytes>
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher, isBlocking:Bool = false, readLength:Int = 256)
	{
		super(proxy, isBlocking, readLength);
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	override private function setResult( ):Void
	{
		this.result = this.bytes;
	}
}
