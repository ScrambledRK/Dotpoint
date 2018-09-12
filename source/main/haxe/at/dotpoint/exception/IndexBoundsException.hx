package at.dotpoint.exception;

/**
 *
 */
class IndexBoundsException extends RuntimeException
{


	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( index:Int, ?from:Int, ?until:Int )
	{
		super( 'index $index out of bounds ($from, $until)' );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //


}
