package at.dotpoint.remote.socket.connection;

import haxe.Json;
import at.dotpoint.remote.socket.connection.Protocol;
import sys.net.Host;

/**
 *
 */
class Connection
{

	//
	public var host:Host;
	public var port:Int;

	//
	public var numConnections:Int;
	public var protocol:Protocol;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( host:Host, port:Int, connections:Int = 10, ?protocol:Protocol )
	{
		this.host = host;
		this.port = port;

		this.numConnections = connections;
		this.protocol = protocol != null ? protocol : Protocol.TCP;
	}

	//
	public static function fromJson( value:String ):Connection
	{
		var json:Dynamic = Json.parse( value );

		var num:Int = json.numConnections != null ? json.numConnections : 10;
		var host:Host = new Host(json.host);
		var port:Int = json.port;

		return new Connection( host, port, num );
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
