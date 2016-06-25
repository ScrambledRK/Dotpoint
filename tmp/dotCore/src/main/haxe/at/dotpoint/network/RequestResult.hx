package haxe.at.dotpoint.network;

import haxe.Json;

/**
 * simple base object for JSON Server-Client communication storing server results
 * @author RK
 */
class RequestResult
{

	/**
	 * whether or not the request worked
	 */
	public var success:Bool;

	/**
	 * if successful - the result msg to echo/send back
	 */
	public var message:Dynamic;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( success:Bool = true, ?message:Dynamic )
	{
		this.success 	= success;
		this.message 	= message;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function getJSON():String
	{
		var obj:Dynamic = { };
			obj.success = this.success;
			obj.message = this.message;

		return Json.stringify( obj );
	}

	public function toString():String
	{
		return  "[Result;" + this.success + " - " + Std.string(this.message) + "]";
	}
}