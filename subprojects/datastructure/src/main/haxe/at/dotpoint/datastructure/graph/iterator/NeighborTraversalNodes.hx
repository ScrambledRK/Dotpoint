package at.dotpoint.datastructure.graph.iterator;

import at.dotpoint.datastructure.iterator.IIterator;
import Bool;

/**
*
**/
class NeighborTraversalNodes extends ANeighborsTraversal<GraphNode> implements IIterator<GraphNode>
{

	//
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
		super.reset();

		//
		this.visit( this.node.ID );
	}

	//
	public function next():GraphNode
	{
		if( !this.hasNext() )
			return null;

		return this.bufferNext();
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function bufferNext():GraphNode
	{
		if( !this.hasNext() )
			return null;

		//
		var node:GraphNode = this.pullNextNode();
		var iter:IIterator<GraphNode> = this.container.iterNeighborNodes( node, this.edgeType );

		while( iter.hasNext() )
			this.visit( iter.next().ID );

		return node;
	}

	//
	private function visit( ID:Int ):Void
	{
		if( !this.beenVisited( ID ) )
		{
			this.buffered.push( ID );
			this.visited.push( ID );
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
		var id:Int = this.isBreathFirst ? this.buffered.shift() : this.buffered.pop();
		return this.container.getNodeByID( id );
	}

}