package at.dotpoint.datastructure.graph;

/**
 *
 */
class GraphContainer
{

	//
	public var nodes(default,null):List<GraphNode>;
	public var edges(default,null):List<GraphEdge>;

	public var edgeTypes(default,null):Array<Int>;
	public var edgeTypesSize(default,null):Array<Int>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		this.nodes = new List<GraphNode>();
		this.edges = new List<GraphEdge>();

		this.edgeTypes = new Array<Int>();
		this.edgeTypesSize = new Array<Int>();
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
		var edge:GraphEdge = new GraphEdge( this.edges.length, type, a.ID, b.ID );

		this.edges.push( edge );
		this.addEdgeType( type );

		return edge;
	}

	//
	private function addEdgeType( type:Int ):Void
	{
		var typeIndex:Int = this.edgeTypes.indexOf( type );

		if( typeIndex == -1 )
		{
			typeIndex = this.edgeTypes.length;

			this.edgeTypes.push( typeIndex );
			this.edgeTypesSize.push( 0 );
		}

		this.edgeTypesSize[typeIndex]++;
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
	public function getNumEdges( edgeType:Int ):Int
	{
		var typeIndex:Int = this.edgeTypes.indexOf( edgeType );

		if( typeIndex == -1 )
			return 0;

		return this.edgeTypesSize[typeIndex];
	}

	// ************************************************************************ //
	// REMOVE
	// ************************************************************************ //

	/**
	 *
	 */
	public function removeNode( node:GraphNode, validateGraph:Bool = true ):Void
	{
		this.nodes.remove( node );

		if( !validateGraph )
			return;

		//
		var toRemove:Array<GraphEdge> = new Array<GraphEdge>();

		for( edge in this.edges )
		{
			if( edge.aNodeID == node.ID || edge.bNodeID == node.ID )
				toRemove.push( edge );
		}

		//
		for( edge in toRemove )
			this.removeEdge( edge );
	}

	/**
	 *
	 */
	public function removeEdge( edge:GraphEdge ):Void
	{
		this.edges.remove( edge );
		this.removeEdgeType( edge.type );
	}

	//
	private function removeEdgeType( type:Int ):Void
	{
		var typeIndex:Int = this.edgeTypes.indexOf( type );

		if( typeIndex != -1 )
		{
			this.edgeTypesSize[typeIndex]--;

			if( this.edgeTypesSize[typeIndex] <= 0 )
			{
				this.edgeTypes.splice( typeIndex, 1 );
				this.edgeTypesSize.splice( typeIndex, 1 );
			}
		}
	}
}
