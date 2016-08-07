package haxe.at.dotpoint;

/**
 * ...
 * @author RK
 */
class StringTool
{

	/**
	 * "explodes" the object recusivly and formatting it in a readable
	 * format similar to JSON.
	 * 
	 * @param	instance
	 * @return
	 */
	public static function dumpObject( instance:Dynamic ):String
	{
		if( instance == null ) 
			return "null";
		
		var output:String = "";
		
		// -------------------- //
		
		try
		{
			output = Type.getClassName( Type.getClass(instance) ) + "\n{";
		}
		catch( error:Dynamic )
		{
			output = "Dynamic\n{";
		}
		
		// -------------------- //
		
		for (n in Reflect.fields(instance))
			output += "\n\t." + n + " = " + Reflect.field(instance, n);
			
		output += "\n}";
		
		return output;
	}
	
}