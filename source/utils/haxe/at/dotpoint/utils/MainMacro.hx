package at.dotpoint.utils;

import haxe.macro.Context;
import haxe.macro.Expr;

/**
 * ...
 * @author RK
 */
class MainMacro
{

	/**
	 *
	 */
	public static var buildDate:String = getBuildDate();

	/**
	 *
	 * @return
	 */
	macro public static function getBuildDate():Expr
	{
        return Context.makeExpr( Date.now().toString(), Context.currentPos() );
    }

}