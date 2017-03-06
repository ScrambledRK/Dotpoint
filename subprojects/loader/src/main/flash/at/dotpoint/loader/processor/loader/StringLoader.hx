package at.dotpoint.loader.processor.loader;

import at.dotpoint.loader.processor.loader.AURLLoader;
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