package at.dotpoint.logging.formatter;

import haxe.PosInfos;

/**
 *
 */
class NullFormatter implements ILoggerFormatter
{
	public function new( ){}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function format( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		return this.message(type,msg,info);
	}

	//
	public function prefix( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		return "";
	}

	//
	public function message( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		var result:String = Std.string( msg );

		//
		if( info.customParams != null )
		{
			for( param in info.customParams )
				result += "," + Std.string( param );
		}

		return result;
	}

	//
	public function postfix( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		return "";
	}
}
