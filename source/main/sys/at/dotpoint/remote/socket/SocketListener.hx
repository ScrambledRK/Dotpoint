package at.dotpoint.remote.socket;

import haxe.io.Output;
import haxe.io.Input;
import sys.net.Socket;

/**
 * blocking read/write
 */
class SocketListener implements IRemoteListener
{

	private var socket:Socket;
	private var bundle:ClientBundle;

	private var handler:Void->IRemoteHandler<Input,Output>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( socket:Socket, handler:Void->IRemoteHandler<Input,Output> )
	{
		this.socket = socket;
		this.handler = handler;

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

	//
	public function isRunning():Bool
	{
		return true;
	}

	/**
	 * call in while loop
	 */
	public function process():Void
	{
		//var bundle:ClientBundle = Socket.select( this.bundle.read, this.bundle.write, this.bundle.others, 0 );

		for( other in bundle.others )
			this.openClient( other );

		for( read in bundle.read )
			cast( read.custom, IRemoteHandler<Input,Output> ).request.process(read.input );

		for( write in bundle.write )
			cast( write.custom, IRemoteHandler<Input,Output> ).response.process(write.output );
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
	private function setupHandler( socket:Socket ):IRemoteHandler<Input,Output>
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
		var process:IRemoteHandler<Input,Output> = this.handler( );
			process.request.then( onRequestComplete );
			process.response.then( onResponseComplete );

		return process;
	}

}
