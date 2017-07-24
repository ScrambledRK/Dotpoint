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
	public function createEdge( typeID:Int, a:GraphNode, b:GraphNode ):GraphEdge
	{
		var type:GraphEdgeType = this.getEdgeTypeByID( typeID );

		if( type == null )
			throw 'invalid edge type $type';

		//
		var edge:GraphEdge = this.getEdgeByNodes( type, a, b );

		if( edge != null )
			return edge;

		// -------------- //

		edge = new GraphEdge( this.edges.length, typeID, a.ID, b.ID );

		this.edges.push( edge );
		type.size++;

		//
		a.edges.push( edge.ID );

		if( !type.isDirected )
			b.edges.push( edge.ID );

		//
		return edge;
	}

	//
	public function addEdgeType( type:GraphEdgeType ):Bool
	{
		return this.types.addEdgeType( type );
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
	private function getEdgeByNodes( type:GraphEdgeType, a:GraphNode, b:GraphNode ):GraphEdge
	{
		for( edge in this.edges )
		{
			if( edge.type != type.ID )
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
		return this.nodes.length;
	}

	//
	public function getNumEdges( edgeType:Int = -1 ):Int
	{
		if( edgeType == -1 )
			return this.edges.length;

		var type:GraphEdgeType = this.getEdgeTypeByID( edgeType );

		if( type == null )
			return -1;

		return type.size;
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
	public function removeNode( node:GraphNode ):Bool
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
		return this.nodes.remove( node );	// must be last, because removeEdge may need it ...
	}

	/**
	 *
	 */
	public function removeEdge( edge:GraphEdge ):Bool
	{
		var type:GraphEdgeType = this.getEdgeTypeByID( edge.type );

		if( type == null )
			throw 'invalid edge type $type';

		//
		var success:Bool = this.edges.remove( edge );

		//
		var a:GraphNode = this.getNodeByID( edge.aNodeID );
		var b:GraphNode = this.getNodeByID( edge.bNodeID );

		a.edges.remove( edge.ID );
		b.edges.remove( edge.ID );

		type.size--;

		//
		return success;
	}

	//
	public function removeEdgeType( type:GraphEdgeType ):Bool
	{
		return this.types.removeEdgeType( type );
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


