package haxe.at.dotpoint.controls;

import haxe.at.dotpoint.controls.InputType;

/**
 * ...
 * @author RK
 */
class InputRequest
{

	/**
	 *
	 */
	public var ID(default, null):String;

	/**
	 *
	 */
	public var type(default, null):InputType;

	/**
	 *
	 */
	public var code(default, null):Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ID:String, type:InputType, code:Int )
	{
		this.ID	  = ID;
		this.type = type;
		this.code = code;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function toString():String
	{
		return "[" + this.ID + ":" + this.code + "]";
	}
}