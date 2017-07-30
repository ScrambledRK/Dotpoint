package at.dotpoint.datastructure.graph;

import at.dotpoint.datastructure.iterator.ArrayIterator;
import at.dotpoint.datastructure.graph.iterator.TraversalNodes;
import at.dotpoint.datastructure.graph.iterator.TraversalEdges;
import at.dotpoint.datastructure.graph.iterator.NeighborEdges;
import at.dotpoint.datastructure.graph.iterator.NeighborNodes;
import at.dotpoint.datastructure.iterator.IIterator;

/**
 * TODO: use ObjectPoolRegister for IDs ...
 */
class GraphContainer
{

	//
	private var nodes(default,null):Array<GraphNode>;
	private var edges(default,null):Array<GraphEdge>;
	private var types(default,null):EdgeTypeContainer;

	//
	public var numNodes(default,null):Int;
	public var numEdges(default,null):Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		this.nodes = new Array<GraphNode>();
		this.edges = new Array<GraphEdge>();

		this.types = new EdgeTypeContainer();

		//
		this.numNodes = 0;
		this.numEdges = 0;
	}

	// ************************************************************************ //
	// LISTENER
	// ************************************************************************ //

	//
	private function onCreateNode( node:GraphNode ):Bool
	{
		return true;
	}

	//
	private function onCreateEdge( node:GraphEdge ):Bool
	{
		return true;
	}

	//
	private function onRemoveNode( node:GraphNode ):Bool
	{
		return true;
	}

	//
	private function onRemoveEdge( node:GraphEdge ):Bool
	{
		return true;
	}

	// ************************************************************************ //
	// CREATE
	// ************************************************************************ //

	/**
	 *
	 */
	public function createNode():GraphNode
	{
		var node:GraphNode = new GraphNode( this.nodes.length );

		if( !this.onCreateNode( node ) )
			throw 'failed to create node $node';

		//
		this.nodes[node.ID] = node;
		this.numNodes++;

		return node;
	}

	/**
	 *
	 */
	public function createEdge( typeID:Int, a:GraphNode, b:GraphNode ):GraphEdge
	{
		var type:GraphEdgeType = this.getEdgeTypeByID( typeID );

		if( type == null )
			throw 'invalid edge type $type';

		//
		var edge:GraphEdge = this.getEdgeByNodes( type, a, b );

		if( edge != null )
			throw 'edge of type $type between $a and $b exists already';

		// -------------- //

		edge = new GraphEdge( this.edges.length, typeID, a.ID, b.ID );

		if( !this.onCreateEdge( edge ) )
			throw 'failed to create edge $edge';

		//
		this.edges[edge.ID] = edge;
		this.numEdges++;

		type.size++;

		//
		a.edges.push( edge.ID );

		if( !type.isDirected )
			b.edges.push( edge.ID );

		//
		return edge;
	}

	//
	// should be called in extending class
	//
	private function addEdgeType( type:GraphEdgeType ):Bool
	{
		return this.types.addEdgeType( type );
	}

	// ************************************************************************ //
	// REMOVE
	// ************************************************************************ //

	/**
	 *
	 */
	public function removeNode( node:GraphNode ):Bool
	{
		if( !this.onRemoveNode( node ) )
			throw 'failed to remove node $node';

		//
		var toRemove:Array<GraphEdge> = new Array<GraphEdge>();

		for( edge in this.edges )
		{
			if( edge == null )
				continue;

			if( edge.aNodeID == node.ID || edge.bNodeID == node.ID )
				toRemove.push( edge );
		}

		//
		for( edge in toRemove )
			this.removeEdge( edge );

		//
		this.nodes[node.ID] = null;
		this.numNodes--;

		//
		return true; // must be last, because removeEdge may need it ...
	}

	/**
	 *
	 */
	public function removeEdge( edge:GraphEdge ):Bool
	{
		if( !this.onRemoveEdge( edge ) )
			throw 'failed to remove edge $edge';

		//
		var type:GraphEdgeType = this.getEdgeTypeByID( edge.type );

		if( type == null )
			throw 'invalid edge type $type';

		//
		this.edges[edge.ID] = null;
		this.numEdges--;

		//
		var a:GraphNode = this.getNodeByID( edge.aNodeID );
		var b:GraphNode = this.getNodeByID( edge.bNodeID );

		a.edges.remove( edge.ID );
		b.edges.remove( edge.ID );

		type.size--;

		//
		return true;
	}

	//
	// should be called in extending class; TODO: remove edge type safly
	//
	private function removeEdgeType( type:GraphEdgeType ):Bool
	{
		return this.types.removeEdgeType( type );
	}

	// ************************************************************************ //
	// GET
	// ************************************************************************ //

	//
	public function getNodeByID( ID:Int ):GraphNode
	{
		var guess:GraphNode = this.guessNodeByID( ID );

		if( guess != null )
			return guess;

		//
		for( node in this.nodes )
		{
			if( node == null )
				continue;

			if( node.ID == ID )
				return node;
		}

		return null;
	}

	//
	private function guessNodeByID( ID:Int ):GraphNode
	{
		if( this.nodes.length > ID )
		{
			var guess:GraphNode = this.nodes[ID];

			if( guess.ID == ID )
				return guess;
		}

		return null;
	}

	//
	public function getEdgeByID( ID:Int ):GraphEdge
	{
		var guess:GraphEdge = this.guessEdgeByID( ID );

		if( guess != null )
			return guess;

		//
		for( edge in this.edges )
		{
			if( edge == null )
				continue;

			if( edge.ID == ID )
				return edge;
		}

		return null;
	}

	//
	private function guessEdgeByID( ID:Int ):GraphEdge
	{
		if( this.edges.length > ID )
		{
			var guess:GraphEdge = this.edges[ID];

			if( guess.ID == ID )
				return guess;
		}

		return null;
	}

	//
	private function getEdgeByNodes( type:GraphEdgeType, a:GraphNode, b:GraphNode ):GraphEdge
	{
		for( edge in this.edges )
		{
			if( edge == null || edge.type != type.ID )
				continue;

			if( edge.aNodeID == a.ID && edge.bNodeID == b.ID )
				return edge;

			//
			if( type.isDirected )
				continue;

			if( edge.aNodeID == b.ID && edge.bNodeID == a.ID )	// not directed ...
				return edge;
		}

		return null;
	}

	//
	public function getEdgeTypeByID( ID:Int ):GraphEdgeType
	{
		return this.types.getType( ID );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getNumNodes():Int
	{
		return this.numNodes;
	}

	//
	public function getNumEdges( ?node:GraphNode, type:Int = -1 ):Int
	{
		if( node != null )
		{
			var result:Int = 0;

			for( edge in this.iterNeighborEdges( node, type ) )
				result++;

			return result;
		}
		else
		{
			if( type == -1 )
				return this.numEdges;

			var type:GraphEdgeType = this.getEdgeTypeByID( type );

			if( type == null )
				return 0;

			return type.size;
		}
	}

	//
	public function getNumTypes():Int
	{
		return this.types.getNumTypes();
	}

	// ************************************************************************ //
	// ITERATOR
	// ************************************************************************ //

	//
	public function iterNeighborNodes( node:GraphNode, edgeType:Int = -1 ):IIterator<GraphNode>
	{
		return new NeighborNodes( this, node, edgeType );
	}

	//
	public function iterNeighborEdges( node:GraphNode, edgeType:Int = -1 ):IIterator<GraphEdge>
	{
		return new NeighborEdges( this, node, edgeType );
	}

	//
	public function iterTraversalNodes( node:GraphNode, edgeType:Int = -1 ):IIterator<GraphNode>
	{
		return new TraversalNodes( this, node, edgeType );
	}

	//
	public function iterTraversalEdges( node:GraphNode, edgeType:Int = -1 ):IIterator<GraphEdge>
	{
		return new TraversalEdges( this, node, edgeType );
	}

	//
	public function iterNodes():IIterator<GraphNode>
	{
		var iter:ArrayIterator<GraphNode> = new ArrayIterator<GraphNode>( this.nodes );
			iter.filter = function( node:GraphNode ):Bool
			{
				return node != null;
			};

		return iter;
	}

	//
	public function iterEdges( ):IIterator<GraphEdge>
	{
		var iter:ArrayIterator<GraphEdge> = new ArrayIterator<GraphEdge>( this.edges );
			iter.filter = function( edge:GraphEdge ):Bool
		{
			return edge != null;
		};

		return iter;
	}
}


