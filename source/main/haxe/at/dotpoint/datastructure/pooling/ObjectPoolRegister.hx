package at.dotpoint.datastructure.pooling;
import haxe.ds.Vector;

/**
 * object pool for indices that can be used in combination with proper object pools or
 * other forms of random access memory managment. use it to get the next free index
 * of your random access datastructure. will fill gaps first.
 * 
 * for the sake of performance does almost no checks to ensure that recieved/returned
 * indices have anything to do with the datastructure you might use it with. does not
 * automatically grow or shrink and has to be done manually.
 * 
 * @author RK
 */
class ObjectPoolRegister implements IObjectPoolRegister 
{
	
	private var pool:Vector<Int>;
	
	private var total:Int;
	private var next:Int;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	/**
	 * @param	size initial total size of the pool
	 */
	public function new( size:Int ) 
	{
		this.resize( size );
		this.next = 0;
	}
	
	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	/**
	 * @return total pool size that can be allocated (but are not necessarily)
	 */
	public function getSizeTotal():Int
	{
		return this.total;
	}
	
	/**
	 * @return amount of indices still possible to allocate
	 */
	public function getSizeFree():Int
	{
		return this.total - this.next;
	}
	
	// ************************************************************************ //
	// allocate/return
	// ************************************************************************ //	
	
	/**
	 * gives you a free index position to store data in according to the current pool status
	 * might not be incremental since empty gaps are tried to be filled.
	 * 
	 * will return an index outside of its pool size if pool is full; you must
	 * ensure to resize the pool if this is the case.
	 * 
	 * @return (next) free index in the pool
	 */
	public function recieveIndex():Int
	{
		if( this.next < this.total )		
			return this.pool[this.next++];

		return this.next++;
	}
	
	/**
	 * return and free up a previously occupied index position. this index can 
	 * then be recieved again. 
	 * 
	 * throws an error if the given index is not in bounds or unable to return
	 * because the pool is empty. only checks in debug mode if the given index
	 * is already a free index in the pool
	 * 
	 * @return (next) free index in the pool
	 */
	public function returnIndex( index:Int ):Void
	{
		if( index < 0 || index >= this.total )
			throw "cannot return index as it is outside bounds: " + index + "(max:" + this.total + ")";
		
		if( this.next <= 0 )
			throw "cannot return index because pool is already full";
		
		#if debug
			for( i in this.next...this.total )
			{
				if( index == this.pool[i] )
					throw "given index " + index + " is already a free index";
			}
		#end
		
		this.pool[--this.next] = index;
	}	
	
	/**
	 * @param size new total size of the pool ( throw errors if smaller than getSizeFull() )
	 */
	public function resize( size:Int ):Void
	{
		if( size < this.next )
			throw "cannot resize to " + size + " because currently allocated " + this.next + " indices";
		
		var current:Vector<Int> = this.pool;
		var next:Vector<Int> = new Vector<Int>( size );
		
		if( current != null )
		{
			for( i in 0...current.length )				// copy existing
				next[i] = current[i];
				
			for( j in current.length...next.length )	// fill rest with new indices	
				next[j] = j;
		}
		else
		{
			for( i in 0...next.length )
				next[i] = i;
		}
		
		this.pool = next;
		this.total = size;
	}
	
	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	/**
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		return "[ObjectPoolRegister;" + this.next + "/" + this.total + "]";
	}	
}