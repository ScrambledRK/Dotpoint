package at.dotpoint.datastructure.graph;

/**
 *
 */
class GraphEdge
{

	//
	public var ID(default,null):Int;
	public var type(default,null):Int;

	//
	public var aNodeID:Int;
	public var bNodeID:Int;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ID:Int, type:Int, a:Int = -1, b:Int = -1 )
	{
		this.ID = ID;
		this.type = type;

		this.aNodeID = a;
		this.bNodeID = b;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //


}
