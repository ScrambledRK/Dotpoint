package at.dotpoint.remote.http;

import at.dotpoint.exception.NullArgumentException;
import at.dotpoint.remote.http.header.Protocol;
import at.dotpoint.remote.http.header.Host;
import haxe.ds.StringMap;
using StringTools;

/**
 *
 */
class Header implements haxe.Constraints.IMap<String,String>
{

	//
	private var table:StringMap<String>;

	//
	public var host(get,set):Host;
	public var protocol(get,set):Protocol;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		this.table = new StringMap<String>();
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	//
	inline private function get_host():Host
	{
		return this.getValue( "host", Host.fromString );
	}

	inline private function set_host( value:Host ):Host
	{
		return this.setValue( "host", value );
	}

	//
	inline private function get_protocol( ):Protocol
	{
		return this.getValue( "protocol", Protocol.fromString );
	}

	inline private function set_protocol( value:Protocol ):Protocol
	{
		return this.setValue( "protocol", value );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	@:generic inline private function setValue<T>( key:String, value:T ):T
	{
		if( value != null )
		{
			this.set( key, Std.string( value ) );
		}
		else
		{
			this.remove( key );
		}

		return value;
	}

	//
	@:generic inline private function getValue<T>( key:String, transform:String->T ):T
	{
		var value:String = this.get( key );

		if( value == null )
			return null;

		return transform( value );
	}

	//
	@:generic inline private function setArray<T>( key:String, value:Array<T> ):Array<T>
	{
		if( value != null && value.length > 0 )
		{
			var result:String = "";

			for( v in value )
				result += v + ",";

			this.set( key, result.substring( 0, result.length - 1 ) );
		}
		else
		{
			this.remove( key );
		}

		return value;
	}

	//
	@:generic inline private function getArray<T>( key:String, transform:String->T ):Array<T>
	{
		var value:String = this.get( key );

		if( value != null && value.length > 0 )
		{
			var result:Array<T> = new Array<T>();

			for( type in value.split( "," ) )
				result.push( transform( type ) );

			return result;
		}

		return null;
	}

	// ************************************************************************ //
	// overrides
	// ************************************************************************ //

	//
	public function set( key:String, value:String ):Void
	{
		if( key == null )
			throw new NullArgumentException("header key");

		this.table.set( key.toLowerCase(), value );
	}

	//
	public function get( key:String ):Null<String>
	{
		if( key == null )
			throw new NullArgumentException("header key");

		return this.table.get( key.toLowerCase() );
	}

	//
	public function exists( key:String ):Bool
	{
		if( key == null )
			throw new NullArgumentException("header key");

		return this.table.exists( key.toLowerCase() );
	}

	//
	public function remove( key:String ):Bool
	{
		if( key == null )
			throw new NullArgumentException("header key");

		return this.table.remove( key.toLowerCase() );
	}

	//
	public function keys( ):Iterator<String>
	{
		return this.table.keys();
	}

	//
	public function iterator( ):Iterator<String>
	{
		return this.table.iterator();
	}

	//
	public function toString( ):String
	{
		return this.table.toString();
	}

	// ************************************************************************ //
	// encode/decode
	// ************************************************************************ //

	//
	public static function decode( input:String, ?output:Header ):Header
	{
		if( output == null )
			output = new Header();

		//
		var lines:Array<String> = input.split( "\r\n" );

		for( line in lines )
		{
			var idxColon:Int = line.indexOf( ":" );

			var param:String = line.substring( 0, idxColon ).trim( );
			var value:String = line.substring( idxColon + 1 ).trim( );

			//
			output.set( param, value );
		}

		return output;
	}

	//
	public static function encode( input:Header ):String
	{
		var result = new Array<String>();

		for( key in input.keys() )
		{
			result.push( key + ":" + input.get( key ) );
		}

		return result.join( "\r\n" );
	}
}