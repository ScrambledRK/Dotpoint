package at.dotpoint.datastructure.graph;

/**
 *
 */
class GraphEdgeType
{
	//
	public var ID(default,null):Int;

	public var size:Int;
	public var isDirected:Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ID:Int, isDirected:Bool = false )
	{
		this.ID = ID;

		this.isDirected = isDirected;
		this.size = 0;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //


}
