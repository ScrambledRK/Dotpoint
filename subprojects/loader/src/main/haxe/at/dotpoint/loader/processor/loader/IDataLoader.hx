package at.dotpoint.loader.processor.loader;

import at.dotpoint.loader.processor.IDataProcessor;
import at.dotpoint.loader.URLRequest;

/**
 * ...
 * @author RK
 */
interface IDataLoader<TOutput:Dynamic> extends IDataProcessor<URLRequest,TOutput>
{

}