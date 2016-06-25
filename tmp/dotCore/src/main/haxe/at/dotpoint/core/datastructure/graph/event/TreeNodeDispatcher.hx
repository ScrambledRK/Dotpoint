package haxe.at.dotpoint.core.datastructure.graph.event;

import haxe.at.dotpoint.core.datastructure.graph.event.TreeNodeEvent.EventBubblePhase;
import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.core.dispatcher.event.IEventDispatcher;
import haxe.at.dotpoint.core.datastructure.entity.IEntity;

/**
 * 12.02.15
 * @author RK
 */
@:access( haxe.at.dotpoint.core.datastructure.graph.event.TreeNodeEvent )
//
class TreeNodeDispatcher extends EventDispatcher
{

	/**
	 *
	 */
	public var node:TreeNode<IEntity>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher )
	{
		super( proxy );

		if( Std.is( proxy, TreeNode ) )
			this.node = cast proxy;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	value
	 * @return
	 */
	public override function dispatch( value:Event ):Bool
	{
		if( this.node != null && Std.is( value, TreeNodeEvent ) )
		{
			var event:TreeNodeEvent = cast value;

			if( event.bubbleToLeaf || event.bubbleToRoot )
			{
				return this.bubbleEvent( event );
			}
		}

		return super.dispatch( value );
	}

	/**
	 *
	 * @param	value
	 */
	private function bubbleEvent( event:TreeNodeEvent ):Bool
	{
		if( event.bubblePhase == null )
			event.bubblePhase = EventBubblePhase.AT_TARGET;

		var success:Bool = super.dispatch( event );

		// --------------- //

		switch( event.bubblePhase )
		{
			case EventBubblePhase.AT_TARGET:
			{
				if( event.bubbleToRoot ) this.bubbleToRoot( event );
				else                     this.bubbleToLeaf( event );
			}

			case EventBubblePhase.TO_ROOT:
			{
				this.bubbleToRoot( event );
			}

			case EventBubblePhase.TO_LEAF:
			{
				this.bubbleToLeaf( event );
			}
		}

		return success;
	}

	/**
	 *
	 * @param	value
	 */
	private function bubbleToRoot( event:TreeNodeEvent ):Void
	{
		event.bubblePhase = EventBubblePhase.TO_ROOT;

		if( this.node.parent != null )  this.node.parent.dispatch( event );
		else if( event.bubbleToLeaf )   this.bubbleToLeaf( event );
	}

	/**
	 *
	 * @param	value
	 */
	private function bubbleToLeaf( event:TreeNodeEvent ):Void
	{
		var current:TreeNode<IEntity> = this.node;

		if( event.bubblePhase != EventBubblePhase.TO_LEAF )
		{
			event.bubblePhase = EventBubblePhase.TO_LEAF;
			current = cast event.target;
		}

		// --------------- //

		for( child in current.children )
		{
			child.dispatch( event );
		}
	}
}
