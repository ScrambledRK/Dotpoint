package at.dotpoint.datastructure.graph.iterator;

/**
 *
 */
class ANeighborsTraversal
{
	//
	private var container:GraphContainer;

	//
	private var node:GraphNode;
	private var edgeType:Int;

	//
	private var buffered:Array<Int>;
	private var visited:Array<Int>;

	//
	public var isBreathFirst(default,null):Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	//
	public function new( container:GraphContainer, node:GraphNode, edgeType:Int = -1, isBreathFirst:Bool = true )
	{
		this.container = container;

		this.edgeType = edgeType;
		this.node = node;

		this.isBreathFirst = isBreathFirst;

		//
		this.reset();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function reset():Void
	{
		this.buffered = new Array<Int>();
		this.visited = new Array<Int>();
	}

	//
	public function hasNext():Bool
	{
		if( this.buffered.length == 0 )
			return false;
	}

}
