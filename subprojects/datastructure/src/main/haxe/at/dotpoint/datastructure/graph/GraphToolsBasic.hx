package at.dotpoint.datastructure.graph;

/**
 *
 */
class GraphToolsBasic
{

	/**
	 *
	 */
	public static function getEdgesAsArray( container:GraphContainer, ?node:GraphNode, type:Int = -1 ):Array<GraphEdge>
	{
		var result:Array<GraphEdge> = new Array<GraphEdge>();

		if( node != null )
		{
			for( edge in container.iterNeighborEdges( node, type ) )
				result.push( edge );
		}
		else
		{
			for( edge in container.iterEdges() )
			{
				if( type == -1 || edge.type == type )
					result.push( edge );
			}
		}

		return result;
	}

	/**
	 *
	 */
	public static function getNodesAsArray( container:GraphContainer, node:GraphNode, type:Int = -1 ):Array<GraphNode>
	{
		var result:Array<GraphNode> = new Array<GraphNode>();

		//
		for( node in container.iterNeighborNodes( node, type ) )
			result.push( node );

		return result;
	}

}
