package at.dotpoint.exception;

/**
 *
 */
class UnsupportedMethodException extends RuntimeException
{


	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?message:String )
	{
		super( message != null ? message : 'method call is not allowed' );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //


}
