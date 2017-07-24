package at.dotpoint.datastructure.graph;

/**
 *
 */
class EdgeTypeContainer
{

	//
	public var types(default,null):Array<GraphEdgeType>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		this.types = new Array<GraphEdgeType>();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function addEdgeType( type:GraphEdgeType ):Bool
	{
		var existing:GraphEdgeType = this.getType( type.ID );

		if( existing != null )
			return false;

		this.types.push( type );

		//
		return true;
	}

	//
	public function removeEdgeType( type:GraphEdgeType ):Bool
	{
		return this.types.remove( type );
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getType( ID:Int ):GraphEdgeType
	{
		for( type in this.types )
		{
			if( type.ID == ID )
				return type;
		}

		return null;
	}

	//
	public function getNumTypes():Int
	{
		return this.types.length;
	}

}
