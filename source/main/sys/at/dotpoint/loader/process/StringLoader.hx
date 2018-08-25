package at.dotpoint.loader.process;

/**
 *
 */
class StringLoader extends AFileLoader<String>
{

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

	//
	override private function setResult( ):Void
	{
		this.result = this.bytes.toString();
	}
}
