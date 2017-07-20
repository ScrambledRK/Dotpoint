package at.dotpoint.logger.formatter;

import haxe.PosInfos;

/**
 *
 */
class IndentationFormatter implements ILoggerFormatter
{
	/**
	 *
	 */
	private var step:Int;
	private var isIncludingPosInfo:Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( isIncludingPosInfo:Bool = false )
	{
		this.step = 0;
		this.isIncludingPosInfo = false;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	public function format( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		return this.prefix( type, msg, info ) + this.message( type, msg, info );
	}

	/**
	 *
	 */
	public function prefix( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		if( this.step < 0 )
			this.step = 0;

		var result:String = this.getPrefix();

		// ----------------- //

		//
		if( Std.is( msg, String ) )
		{
			var code:String = Std.string( msg ).substring( 0, 2 );

			if( code == ">>" )
			{
				this.step++;
			}

			if( code == "<<" )
			{
				this.step--;
				result = this.getPrefix();
			}
		}

		//
		if( this.isIncludingPosInfo )
			result = Std.string( info ) + ":" + result;

		return result;
	}

	/**
	 *
	 */
	public function message( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		var result:String = Std.string( msg );

		if( type == LogType.INFO )
			return result;

		return type + " :: " + result;
	}

	/**
	 *
	 */
	public function postfix( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		return "";
	}

	// ------------------------------------------------------ //
	// ------------------------------------------------------ //

	/**
	 *
	 * @return
	 */
	private function getPrefix():String
	{
		var prefix:String = "";

		for( j in 0...this.step )
			prefix += "\t";

		return prefix;
	}
}
