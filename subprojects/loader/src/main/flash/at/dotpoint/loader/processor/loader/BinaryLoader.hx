package at.dotpoint.loader.processor.loader;

import flash.net.URLLoaderDataFormat;
import flash.utils.ByteArray;

/**
 * ...
 * @author RK
 */
class BinaryLoader extends AURLLoader<ByteArray>
{

	public function new()
	{
		super( URLLoaderDataFormat.BINARY );
	}

}