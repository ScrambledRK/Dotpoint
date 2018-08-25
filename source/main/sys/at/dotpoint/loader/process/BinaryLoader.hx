package at.dotpoint.loader.process;

import haxe.io.Bytes;

/**
 *
 */
class BinaryLoader extends AFileLoader<Bytes>
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		super();
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
