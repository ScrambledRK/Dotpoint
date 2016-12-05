package at.dotpoint.spatial.event;

import at.dotpoint.dispatcher.event.Event;
import at.dotpoint.entity.event.EntityEvent;
import at.dotpoint.math.geom.Space;

/**
 * 17.02.15
 * @author RK
 */

class SpatialEvent extends EntityEvent
{

	public static var TRANSFORM_CHANGED:String = "SpatialEvent.TRANSFORM_CHANGED";
	public static var BOUNDINGS_CHANGED:String = "SpatialEvent.BOUNDINGS_CHANGED";

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	// static "pool":

	/**
	 *
	 */
	private static var instance:SpatialEvent;

	/**
	 *
	 */
	public static function getInstance( type:String, ?space:Space ):SpatialEvent
	{
		if( SpatialEvent.instance == null )
			SpatialEvent.instance = new SpatialEvent( type, space );

		var event:SpatialEvent  = SpatialEvent.instance;
			event.currentTarget = null;
			event.target        = null;
			event.type          = type;
			event.space         = space;

		return event;
	}

	// ************************************************************************ //
	// ************************************************************************ //

	/**
	 * space affected by the event/change: World, Local, Model, ...
	 */
	public var space:Space;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String, ?space:Space )
	{
		super( type );
		this.space = space;
	}

	/**
	 *
	 */
	public override function clone( ?instance:Event ):Event
	{
		if( instance != null && !Std.is( instance, SpatialEvent ) )
			throw "must provide TreeNodeEvent instance for clone";

		if( instance == null )
			instance = new SpatialEvent( this.type );

		var event:SpatialEvent  = cast super.clone( instance );
			event.space = this.space;

		return event;
	}


}
