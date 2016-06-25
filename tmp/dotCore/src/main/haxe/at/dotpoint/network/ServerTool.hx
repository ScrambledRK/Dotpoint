package haxe.at.dotpoint.network;

import haxe.at.dotpoint.loader.URLRequest;
import haxe.crypto.Md5;
import haxe.Json;

/**
 * helpful tool to create url requests for Client to Server communication and
 * creating RequestResult objects for Server to Client communication
 *
 * @author RK
 */
class ServerTool
{

	/**
	 * URL
	 */
	public var hostURL(default,null):String;

	/**
	 * Authentification Name
	 */
	public var authName(default, null):String;

	/**
	 * Authentification Password
	 */
	public var authKey(default, null):String;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( hostURL:String, authName:String, authKey:String )
	{
		this.hostURL  = hostURL;

		this.authName = authName;
		this.authKey  = Md5.encode( authKey );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * data is stored in the URLRequest.data field as URLVariables (?foo=bar&so=on&...)
	 * by default there is always the following data: action, authName and authKey.
	 * first to specify the communication type; the last 2 to make sure the client is
	 * allowed to communicate with the server. additional data provided with the second
	 * argument is parsed as a JSON string.
	 *
	 * @param	action 	main identifier for the server what kind of communication it is
	 * @param	?data 	optinal additional data, will be parsed as JSON
	 * @return
	 */
	public function createRequest( action:String, ?data:Dynamic = null ):URLRequest
	{
		if( action == null )
			throw "must provide a non-null action";

		var url:URLRequest = new URLRequest();
			url.url = this.hostURL;
			url.data = "action=" + action + "&authName=" + this.authName + "&authKey=" + this.authKey;

		if( data != null )
		{
			try
			{
				url.data += "&data=" + Json.stringify(data);
			}
			catch( error:Dynamic )
			{
				throw "can't parse data to Json: " + error;
			}
		}

		return url;
	}

	/**
	 * always returns a RequestResult object even if the result
	 * is not valid or an error occured. in those cases it tries to find
	 * the reason and ResultRequest.success will be false and a message
	 * explains why. in case the Server responded the result will be parsed.
	 *
	 * @param	result
	 * @return
	 */
	public function parseResult( result:String ):RequestResult
	{
		if( result == null || result.length == 0 )
		{
			return new RequestResult( false, "result is empty" );
		}

		// ---------------------------- //

		var parsed:Dynamic = null;

		try
		{
			parsed = Json.parse( result );
		}
		catch( error:Dynamic )
		{
			return new RequestResult( false, "result is not valid JSON: " + error );
		}

		// ---------------------------- //

		if( parsed != null && Reflect.hasField( parsed, "success" ) && Reflect.hasField( parsed, "message" ) )
		{
			return new RequestResult( parsed.success, parsed.message );
		}
		else
		{
			return new RequestResult( false, "result is not a valid RequestResult" );
		}
	}
}