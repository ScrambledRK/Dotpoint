package at.dotpoint.datastructure.graph.iterator;

import at.dotpoint.datastructure.iterator.IIterator;

class IterGraphNodeNeighbors implements IIterator<GraphNode>
{
	private var container:GraphContainer;

	private var node:GraphNode;
	private var edgeType:Int;

	private var index:Int;

	//
	public function new( container:GraphContainer, node:GraphNode, edgeType:Int = -1 )
	{
		this.container = container;

		this.node = node;
		this.edgeType = edgeType;

		this.reset();
	}

	public function reset():Void
	{
		this.index = 0;
	}

	//
	public function hasNext():Bool
	{
		var list:Array<Int> = this.node.edges;

		if( list.length < this.index )
			return false;

		if( this.edgeType == -1 )
			return true;

		//
		// TODO: could reuse ArrayIterator?
		//
		for( j in 0...(list.length - this.index) )
		{
			var isMatch:Bool = this.filter( list[ this.index + j ] );

			if( isMatch )
			{
				this.index += j;	// only set first time, second time j == 0;
				return true;		// unless list or its items are tempered with ...
			}
		}

		return false;
	}

	//
	public function next():GraphNode
	{
		if( !this.hasNext() )
			return null;

		var edge:GraphEdge = this.container.getEdgeByID( node.edges[ this.index++ ] );

		if( edge.aNodeID != this.node.ID )
			return this.container.getNodeByID( edge.aNodeID );

		if( edge.bNodeID != this.node.ID )
			return this.container.getNodeByID( edge.bNodeID );

		return null;
	}

	//
	private function filter( edgeID:Int ):Bool
	{
		var edge:GraphEdge = this.container.getEdgeByID( edgeID );

		if( edgeID == null )
			return false;

		return edge.type == this.edgeType;
	}
}