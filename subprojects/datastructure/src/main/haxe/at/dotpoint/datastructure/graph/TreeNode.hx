package at.dotpoint.datastructure.graph;

import at.dotpoint.dispatcher.event.IEventDispatcher;
import at.dotpoint.datastructure.graph.event.TreeNodeDispatcher;
import at.dotpoint.datastructure.graph.event.TreeNodeEvent;

/**
 * ...
 * @author RK
 */
class TreeNode<T> extends TreeNodeDispatcher
{

	/**
	 *
	 */
	@:isVar public var element(get,set):T;

	/**
	 *
	 */
	@:isVar public var children(get,null):Array<TreeNode<T>>;

	/**
	 *
	 */
	@:isVar public var parent(get,null):TreeNode<T>;

	/**
	 *
	 */
	@:isVar public var root(get,null):TreeNode<T>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher )
	{
		super( proxy );

		this.children = new Array<TreeNode<T>>();
		this.root = this;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	private function get_element():T { return this.element; }

	private function set_element( value:T ):Void
	{
		this.element = value;
	}

	/**
	 *
	 * @return
	 */
	private function get_children():Array<TreeNode<T>> { return this.children; }

	/**
	 *
	 * @return
	 */
	private function get_parent():TreeNode<T> { return this.parent; }

	private function setParent( value:TreeNode<T> ):Void
	{
		this.parent = value;
	}

	/**
	 *
	 * @return
	 */
	private function get_root():TreeNode<T> { return this.root; }

	private function setRoot( value:TreeNode<T> ):Void
	{
		var previous:TreeNode<T> = this.root;
		var current:TreeNode<T>  = value;

		this.root = current;

		// -------------- //

		if( previous == null && current != null )
		{
			this.dispatch( new TreeNodeEvent( TreeNodeEvent.ADDED_TO_ROOT, true, false ) );
		}
		else if( previous != null && current == null )
		{
			this.dispatch( new TreeNodeEvent( TreeNodeEvent.REMOVED_FROM_ROOT, true, false ) );
		}

		// -------------- //

		for( child in this.children )
		{
			child.setRoot( this.root );
		}
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	child
	 */
	public function addChildNode( child:TreeNode<T> ):Void
	{
		if( child == null )
			throw "cannot add null-child";

		if( child.parent != null )
			child.parent.removeChildNode( child );

		// --------------- //

		this.children.push( child );

		child.setParent( this );
		child.setRoot( this.root );

		// --------------- //

		child.dispatch( new TreeNodeEvent( TreeNodeEvent.ADDED_TO_NODE, true, false ) );
	}

	/**
	 *
	 * @param	child
	 */
	public function removeChildNode( child:TreeNode<T> ):Bool
	{
		var success:Bool = this.children.remove( child );

		if( success )
		{
			child.dispatch( new TreeNodeEvent( TreeNodeEvent.REMOVED_FROM_NODE, true, false ) );

			// --------------- //

			child.setParent( null );
			child.setRoot( null );
		}

		return success;
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function traverseToRoot():TreeNode<T>
	{
		var node:TreeNode<T> = this;

		while( node.parent != null )
			node = node.parent;

		return node;
	}

}