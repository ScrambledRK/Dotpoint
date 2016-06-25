package haxe.at.dotpoint.display.renderable.register;

import haxe.at.dotpoint.core.datastructure.VectorUtil;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;
import haxe.at.dotpoint.math.Limit;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class RegisterSignature
{

	/**
	 * sorted list of RegisterTypes
	 */
	#if flash
	private var registerTypes:Array<RegisterType>;
	#else
	private var registerTypes:Vector<RegisterType>;
	#end

	/**
	 *
	 */
	public var numRegisters(default,null):Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( numRegisters:Int )
	{
		if( numRegisters < 0 ) // massive, catastrophic crash if negative
	        numRegisters = 0;

		#if flash
        this.registerTypes = new Array<RegisterType>();
		#else
		this.registerTypes = new Vector<RegisterType>( numRegisters );
		#end
	}

	// ************************************************************************ //
	// RegisterSignatures
	// ************************************************************************ //

	/**
	 *
	 */
	public function hasRegisterType( type:RegisterType ):Bool
	{
		return this.indexOfType( type ) != -1;
	}

	/**
	 *
	 */
	public function addRegisterType( type:RegisterType, ?numEntries:Int = 1 ):Bool
	{
		if( this.hasRegisterType( type ) )
			return false;

		// ---- //

		this.registerTypes[ this.numRegisters ] = type;
		this.numRegisters++;

		this.sortRegisters();

		// ---- //

		return true;
	}

	/**
	 *
	 */
	public function removeRegisterType( type:RegisterType ):Bool
	{
		var index:Int = this.indexOfType( type );

		if( index == -1 )
			return false;

		// ---- //

		this.registerTypes[ index ] = null;
		this.numRegisters--;

		this.sortRegisters();

		// ---- //

		return true;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 */
	public function hasRegisterTypeByIndex( index:Int ):Bool
	{
		return index >= 0 && index < this.numRegisters && this.registerTypes[ index ] != null;
	}

	/**
	 *
	 */
	public function getRegisterTypeByIndex( index:Int ):Null<RegisterType>
	{
		if( !this.hasRegisterTypeByIndex( index ) )
			return null;

		return this.registerTypes[ index ];
	}

    // ************************************************************************ //
	// Array-esque
	// ************************************************************************ //

	/**
	 *
	 */
	public function toArray():Array<RegisterType>
	{
		#if flash
		return this.registerTypes.copy();
		#else
		return this.registerTypes.toArray();
		#end
	}

	/**
	 *
	 */
	public function iterator():Iterator<RegisterType>
	{
		return this.toArray().iterator();
	}

    // ************************************************************************ //
	// Helper
	// ************************************************************************ //

	/**
	 *
	 */
	public function indexOfType( type:RegisterType ):Int
	{
		for( i in 0...this.numRegisters )
		{
			var register:RegisterType = this.registerTypes[i];

			if( register != null && register.ID == type.ID )
				return i;
		}

		return -1;
	}

	/**
	 *
	 */
	private function sortRegisters():Void
	{
		function sortRegisters( a:RegisterType, b:RegisterType ):Int
		{
			if( a == null ) return Limit.INT32_MAX;
			if( b == null ) return Limit.INT32_MIN;

			return  a.index - b.index;
		}

		#if flash
		this.registerTypes.sort( sortRegisters );
		#else
		VectorUtil.sort( this.registerTypes, sortRegisters );
		#end
	}

    // ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 *
	 */
	public function toString():String
	{
		return "[RegisterSignature: r" + this.numRegisters + "]";
	}
}