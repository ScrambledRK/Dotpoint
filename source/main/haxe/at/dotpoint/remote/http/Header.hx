package at.dotpoint.remote.http;

import at.dotpoint.remote.http.header.Host;
import at.dotpoint.remote.http.header.Protocol;
import haxe.ds.StringMap;
using StringTools;

/**

 */
class Header extends StringMap<String>
{

	//
	public var host(get,set):Host;
	public var protocol(get,set):Protocol;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		super();
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	//
	inline private function get_host():Host
	{
		return this.get( "host" );
	}

	inline private function set_host( value:Host ):Host
	{
		if( value != null )
		{
			this.set( "host", value );
		}
		else
		{
			this.remove( "host" );
		}

		return value;
	}

	//
	inline private function get_protocol( ):Protocol
	{
		return this.get( "protocol" );
	}

	inline private function set_protocol( value:Protocol ):Protocol
	{
		if( value != null )
		{
			this.set( "protocol", value );
		}
		else
		{
			this.remove( "protocol" );
		}

		return value;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public static function decode( input:Array<String>, ?output:Header ):Header
	{
		if( output == null )
			output = new Header();

		for( line in input )
		{
			var idxColon:Int = line.indexOf( ":" );

			var param:String = line.substring( 0, idxColon ).trim().toLowerCase();
			var value:String = line.substring( idxColon + 1 ).trim( );

			//
			output.set( param, value );
		}

		return output;
	}

	//
	public static function encode( input:Header ):Array<String>
	{
		var result:Array<String> = new Array<String>();

		for( key in input.keys() )
		{
			result.push( key + ":" + input.get( key ) );
		}

		return result;
	}

}
