package at.dotpoint.datastructure.graph;

import at.dotpoint.remote.http.Header;
import at.dotpoint.exception.NullArgumentException;
import haxe.Constraints.IMap;

/**
 *
 */
class GraphEdgeTable<TNode> implements IMap<TNode, Array<TNode>>
{

	//
	private var table:IMap<TNode, Array<TNode>>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( table:IMap<TNode, Array<TNode>> )
	{
		if( table == null )
			throw new NullArgumentException("table");

		this.table = table;
		this.clear( );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	//
	private function clear( ):Void
	{
		for( k in this.table.keys( ) )
			this.table.remove( k );
	}

	//
	public function add( k:TNode, v:TNode ):Void
	{
		if( k == null )
			throw new NullArgumentException('source');

		if( v == null )
			throw new NullArgumentException('target');

		//
		if( !this.exists( k ) )
			this.set( k, null );

		if( !this.exists( v ) )
			this.set( v, null );

		this.get( k ).push( v );
		this.validate( k );
	}

	//
	public function set( k:TNode, v:Array<TNode> ):Void
	{
		if( k == null )
			throw new NullArgumentException('node');

		if( this.exists( k ) )
			throw 'node $k already exists';

		if( v == null )
			v = new Array<TNode>();

		//
		this.table.set( k, v );

		for( node in v )
		{
			if( !this.exists( node ) )
				this.set( k, null );
		}

		this.validate( k );
	}

	//
	public function remove( k:TNode ):Bool
	{
		if( k == null )
			throw new NullArgumentException('node');

		if( !this.exists( k ) )
			return false;

		for( connections in this.iterator( ) )
			connections.remove( k );

		this.table.remove( k );
		this.validate( k );

		return true;
	}

	//
	public function reverse( output:GraphEdgeTable<TNode> ):GraphEdgeTable<TNode>
	{
		output.clear( );

		for( key in this.keys( ) )
			output.set( key, null );

		//
		for( key in this.keys( ) )
		{
			var connections:Array<TNode> = this.get( key );

			for( node in connections )
				output.get( node ).push( key );

			output.validate( key );
		}

		return output;
	}

	//
	private function validate( k:TNode ):Void
	{
		//
	}

	// ************************************************************************ //
	// IMap
	// ************************************************************************ //

	//
	public function get( k:TNode ):Null<Array<TNode>>
	{
		return this.table.get( k );
	}

	//
	public function exists( k:TNode ):Bool
	{
		return this.table.exists( k );
	}

	//
	public function copy( ):GraphEdgeTable<TNode>
	{
		return new GraphEdgeTable<TNode>(this.table.copy() );
	}

	//
	public function keys( ):Iterator<TNode>
	{
		return this.table.keys( );
	}

	//
	public function iterator( ):Iterator<Array<TNode>>
	{
		return this.table.iterator( );
	}

	//
	public function toString( ):String
	{
		return this.table.toString( );
	}
}
