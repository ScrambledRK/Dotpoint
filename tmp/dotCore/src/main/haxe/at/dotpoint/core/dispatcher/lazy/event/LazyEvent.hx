package haxe.at.dotpoint.core.dispatcher.lazy.event;

import haxe.at.dotpoint.core.dispatcher.event.Event;

/**
 * 12.02.15
 * @author RK
 */
class LazyEvent extends Event
{

	/**
	 *
	 */
	public static var CHANGED:String 	    = "LazyEvent.CHANGED";

	/**
	 *
	 */
	public static var VALIDATED:String 	    = "LazyEvent.VALIDATED";

	/**
	 *
	 */
	public static var INVALIDATED:String 	= "LazyEvent.INVALIDATED";

	// --------------------- //

	/**
	 * what changed? optional ...
	 */
	public var propertyID:String;

	// ************************************************************************ //
	// static
	// ************************************************************************ //

	/**
	 *
	 */
	private static var instance:LazyEvent;

	/**
	 *
	 */
	public static function getInstance( type:String, ?property:String ):LazyEvent
	{
		if( LazyEvent.instance == null )
			LazyEvent.instance = new LazyEvent( type );

		var event:LazyEvent     = LazyEvent.instance;
			event.propertyID    = property;
			event.currentTarget = null;
			event.target        = null;
			event.type          = type;

		return event;
	}

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String, ?property:String )
	{
		super( type );
		this.propertyID = property;
	}



}
