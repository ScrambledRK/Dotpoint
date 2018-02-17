package at.dotpoint.remote.socket;

import sys.net.Host;

/**
 *
 */
class Connection
{
	public var host:Host;
	public var port:Int;

	//
	public var numConnections:Int;
	public var useBlocking:Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( host:Host, port:Int, connections:Int = 10 )
	{
		this.host = host;
		this.port = port;

		this.numConnections = connections;
		this.useBlocking = true;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function toString():String
	{
		return '$host:$port';
	}
}
