package at.dotpoint.logging.formatter;

import haxe.PosInfos;

/**
 *
 */
interface ILoggerFormatter
{
	public function format( type:LogType, msg:Dynamic, info:PosInfos ):String;
	public function prefix( type:LogType, msg:Dynamic, info:PosInfos ):String;
	public function message( type:LogType, msg:Dynamic, info:PosInfos ):String;
	public function postfix( type:LogType, msg:Dynamic, info:PosInfos ):String;
}
