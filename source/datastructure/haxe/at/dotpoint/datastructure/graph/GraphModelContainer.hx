package at.dotpoint.datastructure.graph;

import at.dotpoint.datastructure.iterator.ArrayIterator;
import at.dotpoint.datastructure.iterator.IIterator;

/**
 *
 */
class GraphModelContainer<TNode:Dynamic, TEdge:Dynamic> extends GraphContainer
{

	//
	public var modelNodes:Array<TNode>;
	public var modelEdges:Array<TEdge>;

	//
	public var onCreateNodeModel:GraphNode->TNode;
	public var onCreateEdgeModel:GraphEdge-> TEdge;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?modelNodes:Array<TNode>, ?modelEdges:Array<TEdge> )
	{
		super();

		this.modelNodes = modelNodes;
		this.modelEdges = modelEdges;
	}

	// ************************************************************************ //
	// LISTENER
	// ************************************************************************ //

	//
	override private function onCreateNode( node:GraphNode ):Bool
	{
		this.modelNodes[node.ID] = this.createNodeModel( node );

		//
		return true;
	}

	//
	override private function onCreateEdge( edge:GraphEdge ):Bool
	{
		this.modelEdges[edge.ID] = this.createEdgeModel( edge );

		//
		return true;
	}

	//
	override private function onRemoveNode( node:GraphNode ):Bool
	{
		this.modelNodes[node.ID] = null;

		//
		return true;
	}

	//
	override private function onRemoveEdge( edge:GraphEdge ):Bool
	{
		this.modelEdges[edge.ID] = null;

		//
		return true;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function createNodeModel( node:GraphNode ):TNode
	{
		if( this.onCreateNodeModel == null )
			throw 'no callback set for onCreateNodeModel';

		return this.onCreateNodeModel( node );
	}

	//
	private function createEdgeModel( edge:GraphEdge ):TEdge
	{
		if( this.onCreateEdgeModel == null )
			throw 'no callback set for onCreateEdgeModel';

		return this.onCreateEdgeModel( edge );
	}

	// ************************************************************************ //
	// METHODS
	// ************************************************************************ //

	//
	public function getModelByNode( node:GraphNode ):TNode
	{
		return this.modelNodes[node.ID];
	}

	//
	public function getModelByEdge( edge:GraphEdge ):TEdge
	{
		return this.modelEdges[edge.ID];
	}

	// ************************************************************************ //
	// ITERATOR
	// ************************************************************************ //

	//
	public function iterNodeModels( ):IIterator<TNode>
	{
		var iter:ArrayIterator<TNode> = new ArrayIterator<TNode>( this.modelNodes );
			iter.filter = function( node:TNode ):Bool
		{
			return node != null;
		};

		return iter;
	}

	//
	public function iterEdgeModels( ):IIterator<TEdge>
	{
		var iter:ArrayIterator<TEdge> = new ArrayIterator<TEdge>( this.modelEdges );
			iter.filter = function( edge:TEdge ):Bool
		{
			return edge != null;
		};

		return iter;
	}
}
