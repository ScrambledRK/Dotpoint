package at.dotpoint.loader.format;

import at.dotpoint.loader.DataRequest;
import at.dotpoint.loader.processor.IDataProcessor;
import at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
class SoundFormat extends ABaseDataFormat
{

	@:isVar public static var instance(get, null):SoundFormat;

	private static function get_instance():SoundFormat
	{
		if( SoundFormat.instance == null )
			SoundFormat.instance = new SoundFormat();

		return SoundFormat.instance;
	}

	// ************************************************************************ //
	// Constructor:
	// ************************************************************************ //

	private function new()
	{
		super( [ "mp3" ] );
	}

	/**
	 *
	 * @return
	 */
	public override function createLoader( request:DataRequest ):IDataProcessor<URLRequest,Dynamic>
	{
		#if (flash)
			return new at.dotpoint.loader.processor.loader.SoundLoader();
		#elseif js
			return new at.dotpoint.loader.processor.loader.AudioLoader();
		#end

		return null;
	}
}