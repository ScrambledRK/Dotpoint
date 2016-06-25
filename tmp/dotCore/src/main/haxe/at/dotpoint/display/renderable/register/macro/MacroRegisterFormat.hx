package haxe.at.dotpoint.display.renderable.register.macro;

#if !doc
import haxe.Json;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.TypeTools;
import sys.io.File;


/**
 *  kind: FVar(macro : String, { expr: EConst(CString( value )), pos:Context.currentPos() } ),
 * @author RK
 */
class MacroRegisterFormat
{
	/**
	 *
	 * @param	configPath
	 * @return
	 */
	macro static public function build( configPath:String ):Array<Field>
	{
		trace( Context.getLocalClass() );

		//var c = Context.getLocalClass().get();
		//
		//if (c.meta.has(":processed")) 	return null;
		//else 							c.meta.add(":processed",[],c.pos);

		// ----------- //

		var fields:Array<Field> = Context.getBuildFields();

		var config:Dynamic = Json.parse( File.getContent( configPath ) );

		var formatList:Array<Dynamic> = cast config.formats;

		for( format in formatList )
		{
			fields.push( MacroRegisterFormat.createRegisterFormatField( format ) );
		}

		// ----------- //

		return fields;
	}

	/**
	 *
	 * @param	format
	 * @return
	 */
	static function createRegisterFormatField( format:Dynamic ):Field
	{
		return
		{
			name: 	format.ID,
			doc: 	null,
			meta: 	[],
			access: [],
			kind: 	FVar(null, null),
			pos: 	Context.currentPos()
		};
	}
}

#end