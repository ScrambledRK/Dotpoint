package haxe.at.dotpoint.core.datastructure.graph.event;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.datastructure.entity.event.EntityEvent;

/**
 * 12.02.15
 * @author RK
 */
class TreeNodeEvent extends EntityEvent
{

	/**
	 * TreeNodeEvent children changed
	 */
	public static var ADDED_TO_NODE:String 		= "TreeNodeEvent.ADDED_TO_NODE";
	public static var REMOVED_FROM_NODE:String 	= "TreeNodeEvent.REMOVED_FROM_NODE";

	/**
	 * TreeNodeEvent children changed
	 */
	public static var ADDED_TO_ROOT:String 		= "TreeNodeEvent.ADDED_TO_ROOT";
	public static var REMOVED_FROM_ROOT:String 	= "TreeNodeEvent.REMOVED_FROM_ROOT";

	// ************************************************************************ //
	// ************************************************************************ //

	/**
	 * should this Event be dispatched up the tree using .parent.dispatch()?
	 */
	public var bubbleToRoot(default,null):Bool;

	/**
	 * should this Event be dispatched down the tree using .children().dispatch()?
	 */
	public var bubbleToLeaf(default,null):Bool;

	/**
	 * current phase, does it come from root? is it at target? does it traverse to the leafs?
	 */
	public var bubblePhase(default,null):EventBubblePhase;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( type:String, bubbleToRoot:Bool = false, bubbleToLeaf:Bool = false )
	{
		super( type );

		this.bubbleToRoot = bubbleToRoot;
		this.bubbleToLeaf = bubbleToLeaf;
	}

	/**
	 *
	 */
	public override function clone( ?instance:Event ):Event
	{
		if( instance != null && !Std.is( instance, TreeNodeEvent ) )
			throw "must provide TreeNodeEvent instance for clone";

		if( instance == null )
			instance = new TreeNodeEvent( this.type );

		var event:TreeNodeEvent = cast super.clone( instance );
			event.bubbleToRoot  = this.bubbleToRoot;
			event.bubbleToLeaf 	= this.bubbleToLeaf;

		return event;
	}

}

enum EventBubblePhase
{
	TO_ROOT;
	AT_TARGET;
	TO_LEAF;
}