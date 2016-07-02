package flash.at.dotpoint.loader.processor.loader;

import flash.at.dotpoint.loader.processor.loader.AURLLoader;
import flash.net.URLLoaderDataFormat;

/**
 * ...
 * @author RK
 */
class StringLoader extends AURLLoader<String>
{

	public function new()
	{
		super( URLLoaderDataFormat.TEXT );
	}

}