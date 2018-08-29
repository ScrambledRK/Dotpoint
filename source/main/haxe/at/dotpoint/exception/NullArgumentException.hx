package at.dotpoint.exception;

/**
 *
 */
class NullArgumentException extends RuntimeException
{
	public function new( argument:String )
	{
		super('$argument must not be null');
	}
}
