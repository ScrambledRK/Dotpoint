package at.dotpoint.loader.process;

import at.dotpoint.dispatcher.event.IEventDispatcher;

/**
 *
 */
class StringLoader extends AFileLoader<String>
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher, isBlocking:Bool = false, readLength:Int = 256)
	{
		super(proxy, isBlocking, readLength);
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	//
	override private function setResult( ):Void
	{
		this.result = this.bytes.toString();
	}
}
