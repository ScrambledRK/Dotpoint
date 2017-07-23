package at.dotpoint.datastructure.graph.iterator;

import at.dotpoint.datastructure.graph.iterator.ANeighbors;
import at.dotpoint.datastructure.iterator.IIterator;

/**
*
**/
class NeighborEdges extends ANeighbors<GraphEdge> implements IIterator<GraphEdge>
{

	//
	public function new( container:GraphContainer, node:GraphNode, edgeType:Int = -1 )
	{
		super( container, node, edgeType );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function next():GraphEdge
	{
		if( !this.hasNext() )
			return null;

		return this.container.getEdgeByID( node.edges[ this.index++ ] );
	}

}