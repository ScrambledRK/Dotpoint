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
		this.running = true;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function isRunning( ):Bool
	{
		return running;
	}

	//
	public function process( ):Void
	{
		var onRequestComplete:Void->Void = function( ):Void
		{
			this.handler.response.process( null );
		};

		var onResponseComplete:Void->Void = function( ):Void
		{
			this.running = false;
		};

		//
		this.handler.request.then( onRequestComplete );
		this.handler.response.then( onResponseComplete );

		//
		this.handler.request.process( null );
	}

}
