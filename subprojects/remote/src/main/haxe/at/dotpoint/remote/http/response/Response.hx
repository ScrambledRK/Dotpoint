package at.dotpoint.remote.http.response;

import haxe.io.Bytes;
import haxe.io.Output;

/**
 *
 */
class Response implements IResponse
{
	//
	public var state(default, null):ResponseState;

	//
	public var status(default, null):Status;
	public var header(default, null):Header;

	//
	private var output:Output;

	//
	public var onWrite:Output->Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( status:Status, header:Header )
	{
		this.state = ResponseState.IDLE;

		this.status = status;
		this.header = header;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function open( output:Output ):Void
	{
		if( this.state != ResponseState.IDLE )
			throw "response state invalid";

		var status:Bytes = Bytes.ofString( 'HTTP/1.1. $status\r\n\r\n' );
		var header:Bytes = Bytes.ofString( Header.encode( this.header ).join( "\r\n" ) );

		//
		output.write( status );
		output.write( header );

		//
		this.output = output;

		//
		this.state = ResponseState.WRITING;
	}

	//
	public function write(  ):Void
	{
		if( this.state != ResponseState.WRITING )
			throw "response state invalid";

		if( this.onWrite == null )
			throw "must have onWrite callback set";

		//
		var isDone:Bool = this.onWrite( this.output );

		if( isDone )
			this.state = ResponseState.COMPLETE;
	}

	//
	public function close( ):Void
	{
		if( this.state != ResponseState.COMPLETE )
			throw "response state invalid";

		this.output = null;
	}
}
