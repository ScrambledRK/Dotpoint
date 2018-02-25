package at.dotpoint.remote.socket;

import sys.net.Socket;

/**
 * blocking read/write
 */
class SocketListener
{

	private var socket:Socket;
	private var bundle:ClientBundle;

	private var handler:Void->ISocketHandler;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( connection:Connection, handler:Void->ISocketHandler )
	{
		trace("connection", connection );

		this.handler = handler;

		//
		this.socket = new Socket();
		this.socket.bind( connection.host, connection.port );
		this.socket.listen( connection.numConnections );

		//
		this.bundle = {
			write:  new Array<Socket>(),
			read:   new Array<Socket>(),
			others: [this.socket]
		}
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * call in while loop
	 */
	public function process():Void
	{
		//var bundle:ClientBundle = Socket.select( this.bundle.read, this.bundle.write, this.bundle.others, 0 );

		for( other in bundle.others )
			this.openClient( other );

		for( read in bundle.read )
			cast( read.custom, ISocketHandler ).request.process( read.input );

		for( write in bundle.write )
			cast( write.custom, ISocketHandler ).response.process( write.output );
	}

	//
	private function openClient( socket:Socket ):Void
	{
		var client:Socket = socket.accept( );
			client.custom = this.setupHandler( client );
			client.setBlocking( true );

		this.bundle.read.push( client );
	}

	//
	private function setupHandler( socket:Socket ):ISocketHandler
	{
		var onRequestComplete:Void -> Void = function( ):Void
		{
			this.bundle.read.remove( socket );
			this.bundle.write.push( socket );
		};

		var onResponseComplete:Void -> Void = function( ):Void
		{
			socket.custom = null;
			socket.close( );

			this.bundle.write.remove( socket );
		};

		//
		var process:ISocketHandler = this.handler( );
			process.request.then( onRequestComplete );
			process.response.then( onResponseComplete );

		return process;
	}

}
