package haxe.at.dotpoint.display.renderable.register.type;

import haxe.at.dotpoint.display.renderable.register.type.RegisterContext;
import haxe.at.dotpoint.display.renderable.register.type.RegisterFormat;
import haxe.at.dotpoint.display.renderable.register.RegisterHelper;

/**
 * used to uniquely identify RegisterData, specify the size a single entry consumes (amount of floats/ints/bytes)
 * and in which order they should be stored (importend for shaders). Use the register.cfg to define new RegisterTypes
 * and reference them instead of creating new Types all over again. Types might be referenced and compared directly
 * without using ID. Make sure each RegisterType is unique ...
 */
class RegisterType
{

	/**
	 * ID: unique within material or vertexdata of a mesh
	 */
	public var ID(default,null):String;

	// ----------------- //

	/**
	 * size it will take to store the data is derived from it
	 */
	public var format:RegisterFormat;

	/**
	 * context this RegisterType is managed (and provided) by
	 */
	public var context:RegisterContext;

	/**
	 * amount of individual components the data is composed of. e.g.: vertex position: 3 (floats)
	 */
	public var size(get, null):Int;

	/**
	 * entry index of all avaible RegisterTypes (set automatically)
	 */
	public var index(default, null):Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ID:String, format:RegisterFormat, context:RegisterContext, index:Int )
	{
		this.ID         = ID;
		this.format     = format;
		this.context	= context;
		this.index 		= index;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * @return num of values (byteSize) of the used format. e.g.: vertex position: 3 (floats)
	 */
	private function get_size():Int
	{
		return RegisterHelper.getFormatSize( this.format );
	}

	/**
	 *
	 * @return
	 */
	public function toString():String
	{
		return "[RegisterType;" + this.ID + ":" + this.format + "]";
	}

}

