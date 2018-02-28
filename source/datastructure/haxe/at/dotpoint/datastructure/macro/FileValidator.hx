package at.dotpoint.datastructure.macro;

/**
 *
 */
class FileValidator
{

	//
	public static macro function validateJson( path:String )
	{
		if( sys.FileSystem.exists( path ) )
		{
			var content = sys.io.File.getContent( path );

			try
			{
				haxe.Json.parse( content );
			}
			catch( error:String )
			{
				var position = Std.parseInt( error.split( "position" ).pop( ) );

				var pos = haxe.macro.Context.makePosition( {
					min:position,
					max:position + 1,
					file:path
				} );

				haxe.macro.Context.error( path + " is not valid Json. " + error, pos );
			}
		}
		else
		{
			haxe.macro.Context.warning( path + " does not exist", haxe.macro.Context.currentPos( ) );
		}

		return macro null;
	}
}
