package at.dotpoint.remote.socket.http;

import at.dotpoint.remote.http.Request;
import haxe.io.Input;

/**
 *
 */
class HttpRequestProcess implements ISocketProcess<Input>
{

	//
	public var request(default, null):Request;

	//
	private var resolve:Void->Void;
	private var reject:Dynamic->Void;

	//
	private var buffer:Array<String>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		this.buffer = new Array<String>();
		this.request = new Request("");
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function process( stream:Input ):Void
	{
		while( true )
		{
			var line:String = null;

			try
			{
				line = stream.readLine( );
			}
			catch( error:Dynamic )
			{
				return;
			}


			if( this.isHeaderLine( line ) )
			{
				this.buffer.push( line );
			}
			else
			{
				break;
			}
		}

		Request.decode( this.buffer, this.request );
		this.resolve();
	}

	//
	private function isHeaderLine( line:String ):Bool
	{
		return line != null && line != "" && line != "\r\n" && line != "\n";
	}

	//
	private function isHeaderComplete():Bool
	{
		return this.buffer.length > 0 && this.buffer[ this.buffer.length - 1 ] == "\r\n\r\n";
	}

	//
	public function then( resolve:Void->Void, ?reject:Dynamic->Void ):Void
	{
		this.resolve = resolve;
		this.reject = reject;
	}
}
