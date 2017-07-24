package at.dotpoint.datastructure.graph;

import at.dotpoint.datastructure.graph.iterator.TraversalNodes;
import at.dotpoint.datastructure.graph.iterator.TraversalEdges;
import at.dotpoint.datastructure.graph.iterator.NeighborEdges;
import at.dotpoint.datastructure.graph.iterator.NeighborNodes;
import at.dotpoint.datastructure.iterator.IIterator;

/**
 *
 */
class GraphContainer
{

	//
	public var nodes(default,null):Array<GraphNode>;
	public var edges(default,null):Array<GraphEdge>;

	public var types(default,null):EdgeTypeContainer;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		this.nodes = new Array<GraphNode>();
		this.edges = new Array<GraphEdge>();

		this.types = new EdgeTypeContainer();
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
		this.nodes.push( node );

		return node;
	}

	/**
	 *
	 */
	public function createEdge( type:Int, a:GraphNode, b:GraphNode ):GraphEdge
	{
		var edge:GraphEdge = this.getEdgeByNodes( type, a, b );

		if( edge != null )
			return edge;

		//
		edge = new GraphEdge( this.edges.length, type, a.ID, b.ID );

		a.edges.push( edge.ID );
		b.edges.push( edge.ID );

		this.edges.push( edge );
		this.types.addEdgeType( type );

		return edge;
	}

	// ************************************************************************ //
	// GET
	// ************************************************************************ //

	//
	public function getNodeByID( ID:Int ):GraphNode
	{
		for( node in this.nodes )
		{
			if( node.ID == ID )
				return node;
		}

		return null;
	}

	//
	public function getEdgeByID( ID:Int ):GraphEdge
	{
		for( edge in this.edges )
		{
			if( edge.ID == ID )
				return edge;
		}

		return null;
	}

	//
	private function getEdgeByNodes( edgeType:Int, a:GraphNode, b:GraphNode ):GraphEdge
	{
		for( edge in this.edges )
		{
			if( edge.type != edgeType )
				continue;

			if( edge.aNodeID == a.ID && edge.bNodeID == b.ID )
				return edge;

			if( edge.aNodeID == b.ID && edge.bNodeID == a.ID )	// not directed ...
				return edge;
		}

		return null;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getNumNodes():Int
	{
		return this.nodes.length;
	}

	//
	public function getNumEdges( edgeType:Int = -1 ):Int
	{
		if( edgeType == -1 )
			return this.edges.length;

		return this.types.getNumEdges( edgeType );
	}

	//
	public function getNumTypes():Int
	{
		return this.types.getNumTypes();
	}

	// ************************************************************************ //
	// REMOVE
	// ************************************************************************ //

	/**
	 *
	 */
	public function removeNode( node:GraphNode ):Void
	{
		var toRemove:Array<GraphEdge> = new Array<GraphEdge>();

		for( edge in this.edges )
		{
			if( edge.aNodeID == node.ID || edge.bNodeID == node.ID )
				toRemove.push( edge );
		}

		//
		for( edge in toRemove )
			this.removeEdge( edge );

		//
		this.nodes.remove( node );	// must be last, because removeEdge may need it ...
	}

	/**
	 *
	 */
	public function removeEdge( edge:GraphEdge ):Void
	{
		this.edges.remove( edge );

		var a:GraphNode = this.getNodeByID( edge.aNodeID );
		var b:GraphNode = this.getNodeByID( edge.bNodeID );

		a.edges.remove( edge.ID );
		b.edges.remove( edge.ID );

		this.types.removeEdgeType( edge.type );
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
}


