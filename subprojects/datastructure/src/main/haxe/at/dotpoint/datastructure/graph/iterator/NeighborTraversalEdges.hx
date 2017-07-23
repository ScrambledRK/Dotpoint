package at.dotpoint.datastructure.graph.iterator;

import at.dotpoint.datastructure.iterator.IIterator;

/**
*
**/
class NeighborTraversalEdges extends ANeighborsTraversal implements IIterator<GraphEdge>
{

	//
	private var nodes:Array<Int>;

	/**
	 *
	 */
	public function new( container:GraphContainer, node:GraphNode, edgeType:Int = -1 )
	{
		super( container, node, edgeType );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	override public function reset():Void
	{
		super.reset( );

		//
		this.nodes = new Array<Int>();
		this.visit( this.node );
	}

	//
	public function next():GraphEdge
	{
		if( !this.hasNext() )
			return null;

		return this.bufferNext();
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function bufferNext():GraphEdge
	{
		if( !this.hasNext() )
			return null;

		//
		var node:GraphNode = this.pullNextNode();
		var edge:GraphEdge = this.pullNextEdge();

		this.visit( node );

		return edge;
	}

	//
	private function visit( node:GraphNode ):Void
	{
		var iter:IIterator<GraphEdge> = this.container.iterNeighborEdges( node, this.edgeType );

		//
		while( iter.hasNext( ) )
		{
			var edge:GraphEdge = iter.next( );

			if( !this.beenVisited( edge.ID ) )
			{
				this.nodes.push( edge.getNeighborNode( node.ID ) );

				this.buffered.push( edge.ID );
				this.visited.push( edge.ID );
			}
		}
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function beenVisited( ID:Int ):Bool
	{
		return this.visited.indexOf( ID ) != -1;
	}

	//
	private function pullNextNode():GraphNode
	{
		var id:Int = this.isBreathFirst ? this.nodes.shift() : this.nodes.pop();
		return this.container.getNodeByID( id );
	}

	//
	private function pullNextEdge():GraphEdge
	{
		var id:Int = this.isBreathFirst ? this.buffered.shift() : this.buffered.pop();
		return this.container.getEdgeByID( id );
	}
}