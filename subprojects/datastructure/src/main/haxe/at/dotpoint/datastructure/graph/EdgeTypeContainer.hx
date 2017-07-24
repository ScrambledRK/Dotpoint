package at.dotpoint.datastructure.graph;

/**
 *
 */
class EdgeTypeContainer
{

	public var edgeTypes(default,null):Array<Int>;
	public var edgeTypesSize(default,null):Array<Int>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		this.edgeTypes = new Array<Int>();
		this.edgeTypesSize = new Array<Int>();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function addEdgeType( type:Int ):Void
	{
		var typeIndex:Int = this.edgeTypes.indexOf( type );

		if( typeIndex == -1 )
		{
			typeIndex = this.edgeTypes.length;

			this.edgeTypes.push( typeIndex );
			this.edgeTypesSize.push( 0 );
		}

		this.edgeTypesSize[typeIndex]++;
	}

	//
	public function removeEdgeType( type:Int ):Void
	{
		var typeIndex:Int = this.edgeTypes.indexOf( type );

		if( typeIndex != -1 )
		{
			this.edgeTypesSize[typeIndex]--;

			if( this.edgeTypesSize[typeIndex] <= 0 )
			{
				this.edgeTypes.splice( typeIndex, 1 );
				this.edgeTypesSize.splice( typeIndex, 1 );
			}
		}
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	public function getNumEdges( edgeType:Int ):Int
	{
		var typeIndex:Int = this.edgeTypes.indexOf( edgeType );

		if( typeIndex == -1 )
			return 0;

		return this.edgeTypesSize[typeIndex];
	}

	//
	public function getNumTypes():Int
	{
		return this.edgeTypes.length;
	}
}
