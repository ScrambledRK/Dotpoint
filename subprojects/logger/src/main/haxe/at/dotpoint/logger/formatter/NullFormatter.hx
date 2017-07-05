package at.dotpoint.logger.formatter;

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
		return "";
	}

	//
	public function prefix( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		return "";
	}

	//
	public function message( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		return "";
	}

	//
	public function postfix( type:LogType, msg:Dynamic, info:PosInfos ):String
	{
		return "";
	}
}
