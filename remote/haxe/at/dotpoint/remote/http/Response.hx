package at.dotpoint.remote.http;

import haxe.io.BytesOutput;
import haxe.io.Output;
import haxe.io.BytesBuffer;
import haxe.io.Bytes;

/**
 *
 */
class Response
{
	//
	private var state:ResponseState;
	private var onCloseCallback:Void->Void;

	//
	public var status:Status;
	public var header:Header;
	public var output:Output;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?status:Status, ?header:Header, ?body:Bytes )
	{
		this.state = ResponseState.OPEN;

		this.status = status;
		this.header = header;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function open( output:Output, onClose:Void->Void ):Void
	{
		var status:Bytes = Bytes.ofString( 'HTTP/1.1. $status\r\n\r\n' );
		var header:Bytes = Bytes.ofString( Header.encode( this.header ).join( "\r\n" ) );

		//
		output.write( status );
		output.write( header );

		if( this.output != null )
		{
			if( this.state == ResponseState.OPEN )
				output.flush();

			//
			output.write( cast( this.output, BytesOutput ).getBytes() );

			this.output.close();
			this.output = output;
		}

		//
		this.onCloseCallback = onClose;

		if( this.state == ResponseState.CLOSED )
			this.onCloseCallback();
	}

	//
	public function close():Void
	{
		if( this.state != ResponseState.CLOSED )
			this.onCloseCallback();

		this.state = ResponseState.CLOSED;
		this.output = null;
	}
}
