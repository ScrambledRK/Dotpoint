package at.dotpoint.remote.web;

/**
 *
 */
class WebDispatchListener implements IRemoteListener
{

	//
	private var handler:IRemoteHandler<Dynamic, Dynamic>;
	private var running:Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( handler:IRemoteHandler<Dynamic, Dynamic> )
	{
		this.handler = handler;
		this.running = false;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function isRunning( ):Bool
	{
		return this.running;
	}

	//
	public function shutdown():Void
	{
		//;
	}

	//
	public function process( ):Void
	{
		if( this.isRunning() )
			throw "cannot run already running socket listener";

		//
		this.running = true;

		this.setupHandler();
		this.handler.request.process( null );
	}

	private function setupHandler():Void
	{
		//
		var onRequestComplete:Void->Void = function( ):Void
		{
			this.handler.response.process( null );
		};

		//
		var onResponseComplete:Void->Void = function( ):Void
		{
			this.running = false;
		};

		//
		this.handler.request.then( onRequestComplete );
		this.handler.response.then( onResponseComplete );
	}
}
