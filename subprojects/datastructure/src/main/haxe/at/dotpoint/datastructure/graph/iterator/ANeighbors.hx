package at.dotpoint.datastructure.graph.iterator;

/**
*
**/
class ANeighbors<T>
{
	//
	private var container:GraphContainer;

	//
	private var node:GraphNode;
	private var edgeType:Int;

	//
	private var index:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( container:GraphContainer, node:GraphNode, edgeType:Int = -1 )
	{
		this.container = container;

		this.node = node;
		this.edgeType = edgeType;

		this.reset();
	}

	// ************************************************************************ //
	// Basic
	// ************************************************************************ //

	//
	public function reset():Void
	{
		this.index = 0;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function hasNext():Bool
	{
		var list:Array<Int> = this.node.edges;

		if( this.index >= list.length )
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
	private function filter( edgeID:Int ):Bool
	{
		var edge:GraphEdge = this.container.getEdgeByID( edgeID );

		if( edgeID == null )
			return false;

		return edge.type == this.edgeType;
	}

}