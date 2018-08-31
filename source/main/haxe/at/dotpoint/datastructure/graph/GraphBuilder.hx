package at.dotpoint.datastructure.graph;

import at.dotpoint.exception.AbstractMethodException;
import haxe.Constraints.IMap;

/**
 *
 */
class GraphBuilder<TInput, TOutput>
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?create:TInput->TOutput, ?connect:TOutput->TOutput->Void )
	{
		if( create != null )
			this.createNode = create;

		if( connect != null )
			this.connectNodes = connect;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	public function build( table:GraphEdgeTable<TInput>, ?cache:IMap<TInput, TOutput> ):Void
	{
		for( key in table.keys( ) )
		{
			var connections:Array<TInput> = table.get( key );
			var node:TOutput = this.getNode( key, cache );

			for( neighbor in connections )
				this.connectNodes( node, this.getNode( neighbor, cache ) );
		}
	}

	//
	public dynamic function createNode( input:TInput ):TOutput
	{
		throw new AbstractMethodException();
	}

	//
	public dynamic function connectNodes( a:TOutput, b:TOutput ):Void
	{
		throw new AbstractMethodException();
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	//
	private function getNode( input:TInput, ?cache:IMap<TInput, TOutput> ):TOutput
	{
		var output:TOutput = cache == null ? null : cache.get( input );

		if( output == null )
		{
			output = this.createNode( input );

			if( cache != null )
				cache.set( input, output );
		}

		return output;
	}


}
