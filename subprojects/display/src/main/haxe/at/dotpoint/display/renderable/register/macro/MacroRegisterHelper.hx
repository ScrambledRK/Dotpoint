package haxe.at.dotpoint.display.renderable.register.macro;

import haxe.at.dotpoint.display.renderable.register.type.RegisterContext;
import haxe.at.dotpoint.display.renderable.register.type.RegisterFormat;
import haxe.at.dotpoint.display.renderable.register.type.RegisterType;

#if macro
import haxe.Json;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.TypeTools;
import sys.io.File;
#end

/**
 *  kind: FVar(macro : String, { expr: EConst(CString( value )), pos:Context.currentPos() } ),
 * @author RK
 */
class MacroRegisterHelper
{
	#if macro
	/**
	 *
	 * @param	configPath
	 * @return
	 */
	macro static public function build( ?configPath:String ):Array<Field>
	{
		var fields:Array<Field> = Context.getBuildFields();

		// ----------- //
        // config:

        var config:Dynamic = null;

        if( configPath != null )    config = Json.parse( File.getContent( configPath ) );
        else                        config = Json.parse( haxe.Resource.getString("register.cfg") );

        // ------------ //
        // types:

		var typeList:Array<Dynamic> = cast config.types;

		for( t in 0...typeList.length )
		{
			fields.push( MacroRegisterHelper.createRegisterTypeField( typeList[t], t ) );
		}

		// ----------- //

		return fields;
	}

	/**
	 *
	 * @param	register
	 * @return
	 */
	static function createRegisterTypeField( register:Dynamic, index:Int ):Field
	{
		return
		{
			  name: 	register.ID,
			  doc: 		null,
			  meta: 	[],
			  access:  	[AStatic,APublic],
			  kind: 	FVar(macro:haxe.at.dotpoint.display.renderable.register.type.RegisterType, MacroRegisterHelper.getRegisterType( register, index ) ),
			  pos: 		Context.currentPos()
		};
	}

	/**
	 *
	 * @param	register
	 * @return
	 */
	static function getRegisterType( register:Dynamic, index:Int  ):Expr
	{
		var type:TypePath 	 = { pack:["haxe", "at", "dotpoint", "display", "renderable", "register", "type"], name:"RegisterType" };

		var typeID:Expr 	= { expr: EConst( CString( register.ID ) ), pos:Context.currentPos() };
		var format:Expr 	= MacroRegisterHelper.getRegisterFormat( register.format );
		var context:Expr 	= MacroRegisterHelper.getRegisterContext( register.context );
		var index:Expr		= { expr: EConst( CInt( "" + index ) ), pos:Context.currentPos() };

		var args:Array<Expr> = [ typeID, format, context, index ];

		return
		{
			expr: ENew( type, args ),
			pos:Context.currentPos()
		}
	}

	/**
	 *
	 * @param	value
	 * @param	params
	 * @return
	 */
	static function getRegisterFormat( value:String, ?params:Null<Array<Dynamic>> ):Expr
	{
		var format:RegisterFormat = RegisterFormat.createByName( value, params );

		if( format == null )
			throw "unknown RegisterFormat: " + value + ", params: " + params;

		return Context.makeExpr( format, Context.currentPos() );
	}

	/**
	 *
	 * @param	value
	 * @param	params
	 * @return
	 */
	static function getRegisterContext( value:String, ?params:Null<Array<Dynamic>> ):Expr
	{
		var context:RegisterContext = RegisterContext.createByName( value, params );

		if( context == null )
			throw "unknown RegisterContext: " + value + ", params: " + params;

		return Context.makeExpr( context, Context.currentPos() );
	}
	#end
}


