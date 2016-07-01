package haxe.at.dotpoint.core.dispatcher.event;

/**
 *
 */
class Event
{

	/**
	 * identifier what this event is about, must be unique for its purpose as this is the only way
	 * to distinguish between multiple events
	 */
	@:isVar public var type(get,set):String;

	/**
	 * initial IEventDispatcher and does not change no matter how often dispatched
	 */
	@:isVar public var target(get,set):IEventDispatcher;

	/**
	 * currently processing IEventDispatcher. might change when the same Event-Instance gets dispatched
	 * multiple times - it does not stay the original dispatcher
	 */
	@:isVar public var currentTarget(get,set):IEventDispatcher;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String )
	{
		this.type = type;
	}

	public function clone( ?instance:Event ):Event
	{
		var clone:Event 		= instance != null ? instance : new Event( this.type );
			clone.target 		= this.target;
			clone.currentTarget = this.currentTarget;

		return clone;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_type():String { return this.type; };

	private function set_type( value:String ):String
	{
		#if dotLogger
			if( this.type != null )
				haxe.at.dotpoint.logger.Log.warn( "Event.type already set! " + this );
		#end

		return this.type = value;
	}

	/**
	 *
	 * @return
	 */
	private function get_target():IEventDispatcher { return this.target; };

	private function set_target( value:IEventDispatcher ):IEventDispatcher
	{
		#if dotLogger
			if( this.target != null )
				haxe.at.dotpoint.logger.Log.warn( "Event.target already set! " + this );
		#end

		return this.target = value;
	}

	/**
	 *
	 * @return
	 */
	private function get_currentTarget():IEventDispatcher { return this.currentTarget; };

	private function set_currentTarget( value:IEventDispatcher ):IEventDispatcher
	{
		return this.currentTarget = value;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	public function toString():String
	{
		return "[Event:" + this.type + "]";
	}
}
