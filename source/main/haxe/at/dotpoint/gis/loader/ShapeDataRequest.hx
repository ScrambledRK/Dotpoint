package at.dotpoint.gis.loader;

import at.dotpoint.loader.DataRequest;
import at.dotpoint.loader.URLRequest;
import at.dotpoint.loader.format.BinaryFormat;
import at.dotpoint.loader.processor.IDataRequest;
import at.dotpoint.loader.processor.loader.BinaryLoader;

/**
 * ...
 * @author RK
 */
class ShapeDataRequest extends DataRequest
{

	public function new( request:URLRequest ) 
	{
		super( request, BinaryFormat.instance );
		
		this.loader = new BinaryLoader();
		this.parser = new ShapeParser();
	}
	
}