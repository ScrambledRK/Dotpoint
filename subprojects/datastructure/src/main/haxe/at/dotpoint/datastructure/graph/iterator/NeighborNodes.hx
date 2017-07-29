package at.dotpoint.datastructure.graph.iterator;

import at.dotpoint.datastructure.graph.iterator.ANeighbors;
import at.dotpoint.datastructure.iterator.IIterator;

/**
*
**/
class NeighborNodes extends ANeighbors<GraphNode> implements IIterator<GraphNode>
{

	//
	public function new( container:GraphContainer, node:GraphNode, edgeType:Int = -1 )
	{
		super( container, node, edgeType );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function next():GraphNode
	{
		if( !this.hasNext() )
			return null;

		var edge:GraphEdge = this.container.getEdgeByID( this.edges[ this.index++ ] );
		return this.container.getNodeByID( edge.getNeighborNode( this.node.ID ) );
	}

}