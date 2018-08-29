package at.dotpoint.datastructure.graph;

import haxe.Constraints.IMap;

/**
 *
 */
class TreeTable<TNode> extends EdgeTable<TNode>
{


	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( table:IMap<TNode,Array<TNode>> )
	{
		super( table );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	override private function validate( k:TNode ):Void
	{
		super.validate( k );

		if( !this.exists( k ) )	 // deleted ...
			return;

		//
		var references:Int = 0;

		for( connections in this.iterator() )
		{
			if( connections.indexOf( k ) != -1 )
				references++;

			if( references > 1 )
				throw "tree-graphs are not allowed to have cycles";
		}
	}
}
