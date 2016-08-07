package haxe.at.dotpoint.datastructure.collection ;

import haxe.at.dotpoint.datastructure.collection.ICollection;
import haxe.ds.Vector;

#if openfl
	private typedef InternalList<T> = Array<T>;
#else
	private typedef InternalList<T> = Vector<T>;
#end


/**
 * TODO: refactor to make it a usefull and cool one ...
 * like extend Vector or something
 *
 * @author RK
 */
class VectorSet<T:Dynamic> implements ICollection<T>
{

	// actuall container
	private var list:InternalList<T>;

	// amount of entries
	private var numEntries(default, null):Int;
	private var maxEntries(default, null):Int;

	/**
	 * should the internal datastructure resize automatically
	 * if there isn't enough space? (warning: only increases, never decreases)
	 */
	public var autoResize:Bool;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 *
	 */
	public function new( size:Int = 1, autoResize:Bool = true )
	{
		#if openfl
			this.list = new Array<T>();
		#else
			this.list = new Vector<T>( size );
		#end


		this.maxEntries = size;
		this.numEntries = 0;

		this.autoResize = autoResize;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	//
	public function has( obj:T ):Bool
	{
		return this.indexOf( obj ) != -1;
	}

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function add( obj:T ):Bool
	{
		if( obj == null || this.has( obj ) )
			return false;

		this.checkSize( this.numEntries + 1 );

		this.list[ this.numEntries ] = obj;
		this.numEntries++;

		this.sortList();

		return true;
	}

	/**
	 *
	 * @param	type
	 */
	public function remove( obj:T ):Bool
	{
		var index:Int = this.indexOf( obj );

		if( obj == null || index == -1 )
			return false;

		// ------ //

		this.list[index] = null;
		this.numEntries--;

		this.sortList();

		return true;
	}

	// ------------------------------------------------------------------ //
	// ------------------------------------------------------------------ //

	/**
	 *
	 * @param	index
	 * @return
	 */
	public function get( index:Int ):T
	{
		if( index < 0 || index > this.numEntries )
			return null;

		return this.list[index];
	}

	/**
	 *
	 * @param	index
	 * @return
	 */
	public function set( index:Int, obj:T ):Void
	{
		if( index < 0 )
			throw "can't set below zero";

		if( index > this.numEntries + 1 )
			throw "can't have null-gaps";

		this.checkSize( index );

		this.list[index] = obj;

		if( index == this.numEntries + 1 )
			this.numEntries++;
	}

	// ------------------------------------------------------------------ //
	// ------------------------------------------------------------------ //

	/**
	 *
	 */
	public function size():Int
	{
		return this.numEntries;
	}

	/**
	 *
	 */
	public function toArray():Array<T>
	{
		var array:Array<T> = new Array<T>();

		for( j in 0...this.numEntries )
		{
			array.push( this.list[j] );
		}

		return array;
	}

	/**
	 *
	 * @return
	 */
	public function iterator():Iterator<T>
	{
		return new VectorSetIterator<T>( this );
	}

	// ------------------------------------------------------------------ //
	// ------------------------------------------------------------------ //

	/**
	 *
	 * @param	type
	 * @return
	 */
	public function indexOf( obj:T ):Int
	{
		for( i in 0...this.numEntries )
		{
			if( this.list[i] == obj )
				return i;
		}

		return -1;
	}

	/**
	 *
	 */
	private function sortList():Void
	{
		#if !openfl
			VectorUtil.sort( this.list, this.sort );
		#else
			this.list.sort( this.sort );
		#end
	}

	/**
	 * keep null values on the right so numEntries + iterators work
	 *
	 * @param	left
	 * @param	right
	 * @return
	 */
	private function sort( x:T, y:T ):Int
	{
		if( x != null ) return -1;
		if( y != null ) return  1;

		return 0;
	}

	/**
	 *
	 */
	private function checkSize( size:Int ):Void
	{
		#if !openfl
			var requires:Bool = size > this.maxEntries;

			if( requires )
			{
				if( !this.autoResize )
					throw "out of bounds";

				var nList:Vector<T> = new Vector<T>( size );
				Vector.blit( this.list, 0, nList, 0, this.list.length );

				this.list = nList;
				this.maxEntries = size;
			}
		#end
	}


}

/**
 *
 */
@:access(haxe.at.dotpoint.datastructure.collection.VectorSet)
//
class VectorSetIterator<T:Dynamic>
{

	private var set:VectorSet<T>;
	private var count:Int;

	// ------------------------------------------------------------------ //
	// ------------------------------------------------------------------ //

	public function new( set:VectorSet<T> )
	{
		this.set = set;
		this.count = 0;
	}

	// ------------------------------------------------------------------ //
	// ------------------------------------------------------------------ //

	/**
		Returns false if the iteration is complete, true otherwise.

		Usually iteration is considered to be complete if all elements of the
		underlying data structure were handled through calls to next(). However,
		in custom iterators any logic may be used to determine the completion
		state.
	**/
	public function hasNext():Bool
	{
		return this.count < this.set.size();
	}

	/**
		Returns the current item of the Iterator and advances to the next one.

		This method is not required to check hasNext() first. A call to this
		method while hasNext() is false yields unspecified behavior.
	**/
	public function next():T
	{
		return this.set.list[this.count++];
	}
}
