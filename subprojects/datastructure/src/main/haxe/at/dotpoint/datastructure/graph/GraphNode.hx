package at.dotpoint.datastructure.graph;

/**
 *
 */
class GraphNode
{
	//
	public var ID(default, null):Int;

	//
	@:isVar public var edges(get, set):Array<Int>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ID:Int )
	{
		this.ID = ID;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	//
	private function get_edges( ):Array<Int>
	{
		if( this.edges == null )
			this.edges = new Array<Int>();

		return this.edges;
	}

	//
	private function set_edges( value:Array<Int> ):Array<Int>
	{
		return this.edges = value;
	}

}
