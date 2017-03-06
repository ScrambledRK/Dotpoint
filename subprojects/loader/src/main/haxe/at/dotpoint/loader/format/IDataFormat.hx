package at.dotpoint.loader.format;

import at.dotpoint.loader.DataRequest;
import at.dotpoint.loader.processor.IDataProcessor;
import at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
interface IDataFormat
{

	/**
	 * checks if the given URLRequests is of the format this class specifies.
	 * eg. ImageDataFormat gives true for *.png, *.jpeg etc files.
	 *
	 * @param	request
	 * @return
	 */
	public function isFormat( request:DataRequest ):Bool;

	/**
	 * the argument can be used to determine the appropiate loader and/or provide
	 * additional information for the loader depending on the data that should be loaded.
	 *
	 * @return
	 */
	public function createLoader( request:DataRequest ):IDataProcessor<URLRequest,Dynamic>;

	/**
	 * the argument can be used to determine the appropiate parser and/or provide
	 * additional information for the parser depending on the data that should be parsed.
	 *
	 * @return
	 */
	public function createParser( request:DataRequest ):IDataProcessor<Dynamic,Dynamic>;

}