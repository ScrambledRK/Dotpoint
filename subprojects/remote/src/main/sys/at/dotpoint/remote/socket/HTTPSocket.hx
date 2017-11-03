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
		this.acceptClients();

		var bundle:ClientBundle = Socket.select( this.clients, this.clients, [this.socket], 0 );

		trace("---");

		//
		for( other in bundle.others )
		{
			trace("one connects");

			var client:Socket = other.accept();
				client.setBlocking( false );

			this.clients.push( client );
		}

		//
		for( read in this.clients )
		{
			trace("one reads");

			var request:Request = this.readRequest( read.input );
			var response:Response = this.handler.respond( request );

			read.custom = response;
		}

		//
		for( write in this.clients )
		{
			trace("one writes");

			//
			var response:Response = cast write.custom;

			while( response != null )
			{
				switch( response.state )
				{
					case ResponseState.IDLE:
						{
							trace( "idle" );
							response.open( write.output );
						}

					case ResponseState.WRITING:
						{
							trace( "writing" );
							response.write( );
						}

					case ResponseState.COMPLETE:
						{
							trace( "closing" );

							response.close( );
							response = null;

							write.close( );
							this.clients.remove( write );
						}
				}

				response = null;
			}
		}
	}

	//
	private function acceptClients():Void
	{
		var client:Socket = this.socket.accept( );
			client.setBlocking( false );

		this.clients.push( client );
	}

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
