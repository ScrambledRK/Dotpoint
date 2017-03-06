package at.dotpoint.loader.event;

import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.loader.DataRequest;

/**
 * ...
 * @author RK
 */
class DataLoaderEvent extends StatusEvent
{

	public static var ITEM_STARTED:String 	= "DataLoaderEvent.ITEM_STARTED";
	public static var ITEM_COMPLETE:String 	= "DataLoaderEvent.ITEM_COMPLETE";

	// --------------- //

	public var request:DataRequest;
	public var result(get, null):Dynamic;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String )
	{
		super( type );
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	inline private function get_result():Dynamic
	{
		if( this.request != null )
			return this.request.result;

		return null;
	}

}