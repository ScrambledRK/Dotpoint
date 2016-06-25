package haxe.core.ds;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.datastructure.graph.event.TreeNodeEvent;
import haxe.at.dotpoint.core.datastructure.graph.TreeNode;
import haxe.at.dotpoint.core.entity.Entity;
import massive.munit.Assert;

/**
 * ...
 * @author RK
 */
class TreeNodeTest
{

	private var eventLog:Array<Event>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() 
	{

	}

	// ------------------------------------------------------------------ //
	// ------------------------------------------------------------------ //

	/**
	 * This will run before every test
	 */
	@Before
	public function construct():Void
	{
		this.eventLog = new Array<Event>();
	}

	/**
	 * This will run after every test
	 */
	@After
	public function destruct():Void
	{
		this.eventLog = null;
	}
	
	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //
	
	/**
	 * 
	 */
	@Test
	//
	public function testTreeNode():Void
	{
		var root:TreeNode<EntityID> = this.createTreeNode( "root", true );
		
		var n1_1:TreeNode<EntityID> = this.createTreeNode("n1_1");
		var n1_2:TreeNode<EntityID> = this.createTreeNode("n1_2");
		var n1_3:TreeNode<EntityID> = this.createTreeNode("n1_3");
		
		var n2_1:TreeNode<EntityID> = this.createTreeNode("n2_1");
		var n2_2:TreeNode<EntityID> = this.createTreeNode("n2_2");
		
		// ------------ //
		
		this.addListeners( root );
		this.addListeners( n1_1 );
		this.addListeners( n1_2 );
		this.addListeners( n1_3 );
		this.addListeners( n2_1 );
		this.addListeners( n2_2 );
		
		// ------------ //
		
		root.addChildNode( n1_1 );
		root.addChildNode( n1_2 );
		root.addChildNode( n1_3 );
		
		n1_2.addChildNode( n2_1 );
		n1_2.addChildNode( n2_2 );
		
		//trace("---");
		
		root.removeChildNode( n1_2 );
		n1_2.removeChildNode( n2_1 );
		n1_2.removeChildNode( n2_2 );
		
		// ------------ //
		
		var expected:Array<ExpectedEvent> = new Array<ExpectedEvent>();
		
		// root.addChildNode( n1_1 );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n1_1, n1_1 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n1_1, root ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n1_1, n1_1 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n1_1, root ) );
		
		// root.addChildNode( n1_2 );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n1_2, n1_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n1_2, root ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n1_2, n1_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n1_2, root ) );
		
		// root.addChildNode( n1_3 );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n1_3, n1_3 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n1_3, root ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n1_3, n1_3 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n1_3, root ) );
		
		// n1_2.addChildNode( n2_1 );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n2_1, n2_1 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n2_1, n1_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n2_1, root ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n2_1, n2_1 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n2_1, n1_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n2_1, root ) );
		
		// n1_2.addChildNode( n2_2 );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n2_2, n2_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n2_2, n1_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_ROOT, n2_2, root ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n2_2, n2_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n2_2, n1_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.ADDED_TO_NODE, n2_2, root ) );
		
		// root.removeChildNode( n1_2 );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_NODE, n1_2, n1_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_NODE, n1_2, root ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_ROOT, n1_2, n1_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_ROOT, n2_1, n2_1 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_ROOT, n2_1, n1_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_ROOT, n2_2, n2_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_ROOT, n2_2, n1_2 ) );
		
		// n1_2.removeChildNode( n2_1 );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_NODE, n2_1, n2_1 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_NODE, n2_1, n1_2 ) );
		
		// n1_2.removeChildNode( n2_2 );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_NODE, n2_2, n2_2 ) );
		expected.push( new ExpectedEvent( TreeNodeEvent.REMOVED_FROM_NODE, n2_2, n1_2 ) );
		
		// ------------ //
		
		Assert.areEqual( expected.length, this.eventLog.length );
		
		for( j in 0...this.eventLog.length )
		{
			var logged:Event    = this.eventLog[j];
			var expect:ExpectedEvent = expected[j];
			
			Assert.isTrue( logged.type == expect.type );
			Assert.areSame( expect.target, logged.target);
			Assert.areSame( expect.current, logged.currentTarget);
		}
	}

	/**
	 *
	 */
	private function addListeners( node:TreeNode<EntityID> ):Void
	{
		node.addListener( TreeNodeEvent.ADDED_TO_ROOT,      this.onRootEvent );
		node.addListener( TreeNodeEvent.ADDED_TO_NODE,      this.onRootEvent );
		node.addListener( TreeNodeEvent.REMOVED_FROM_ROOT,  this.onRootEvent );
		node.addListener( TreeNodeEvent.REMOVED_FROM_NODE,  this.onRootEvent );
	}

	/**
	 *
	 */
	private function createTreeNode( ID:String, isRoot:Bool = false ):TreeNode<EntityID>
	{
		var node:TreeNode<EntityID> = new TreeNode<EntityID>( isRoot );

		var entity:EntityID = new EntityID( ID );
			entity.addComponent( node );

		return node;
	}

	/**
	 *
	 */
	private function onRootEvent( event:Event ):Void
	{
		var target:TreeNode<EntityID>   = cast event.target;
		var current:TreeNode<EntityID>  = cast event.currentTarget;

		//trace( event.type, target.entity, current.entity );

		this.eventLog.push( event.clone() );
	}
}

// ----------------------- //
// ----------------------- //

private class EntityID extends Entity
{
	public var ID:String;

	public function new( ID:String )
	{
	super();
		this.ID = ID;
	}

	public function toString():String
	{
		return "[Entity:"+ this.ID + "]";
	}
}

private class ExpectedEvent
{
	public var type:String;
	public var target:TreeNode<EntityID>;
	public var current:TreeNode<EntityID>;

	public function new ( type:String, target:TreeNode<EntityID>, current:TreeNode<EntityID> )
	{
		this.type = type;
		this.target = target;
		this.current = current;
	}
}