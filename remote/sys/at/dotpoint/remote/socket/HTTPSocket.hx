package at.dotpoint.remote.socket;

import at.dotpoint.remote.http.response.ResponseState;
import at.dotpoint.remote.http.IRequestHandler;
import at.dotpoint.remote.http.Request;
import at.dotpoint.remote.http.response.Response;
import haxe.io.Input;
import sys.net.Socket;

/**
 *
 */
class HTTPSocket
{
	private var socket:Socket;
	private var clients:Array<Socket>;

	public var handler:IRequestHandler;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( connection:Connection )
	{
		this.socket = new Socket();
		this.socket.bind( connection.host, connection.port );
		this.socket.listen( connection.numConnections );

		this.clients = new Array<Socket>();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process():Void
	{
		this.openClient( this.socket );

		//
		var bundle:ClientBundle = Socket.select( this.clients, this.clients, [this.socket], 0 );

		for( other in bundle.others )
			this.openClient( other );

		for( read in this.clients )
			this.readClient( read );

		for( write in this.clients )
			this.writeClient( write );
	}

	//
	private function openClient( socket:Socket ):Void
	{
		var client:Socket = socket.accept( );
			client.setBlocking( true );

		this.clients.push( client );
	}

	//
	private function readClient( socket:Socket ):Void
	{
		var request:Request = this.readRequest( socket.input );
		var response:Response = this.handler.respond( request );

		socket.custom = response;
	}

	//
	private function writeClient( socket:Socket ):Void
	{
		var response:Response = cast socket.custom;

		while( response != null )
		{
			switch( response.state )
			{
				case ResponseState.IDLE:
					response.open( socket.output );

				case ResponseState.WRITING:
					response.write( );

				case ResponseState.COMPLETE:
				{
					response.close( );
					response = null;

					this.closeClient( socket );
				}
			}
		}
	}

	//
	private function closeClient( socket:Socket ):Void
	{
		socket.custom = null;
		socket.close( );

		this.clients.remove( socket );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function readRequest( input:Input ):Request
	{
		var request:Array<String> = new Array<String>();

		while( true )
		{
			var line:String = input.readLine( );

			if( this.isHeaderLine( line ) )
			{
				request.push( line );
			}
			else
			{
				break;
			}
		}

		//
		return Request.decode( request );
	}

	//
	private function isHeaderLine( line:String ):Bool
	{
		return line != null && line != "" && line != "\r\n" && line != "\n";
	}
}
