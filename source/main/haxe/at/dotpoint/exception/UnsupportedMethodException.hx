package at.dotpoint.exception;

/**
 *
 */
class UnsupportedMethodException extends RuntimeException
{


	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( isAbstract:Bool = true )
	{
		super( isAbstract ? 'must override the method' : 'method call is not allowed' );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //


}
