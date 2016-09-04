package at.dotpoint.datastructure ;

/**
 * ...
 * @author RK
 */
class SingleIterator<T:Dynamic>
{

	private var value:T;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new( value:T ) 
	{
		this.value = value;
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	/**
	 * 
	 * @return
	 */
	public function hasNext():Bool
	{
		return this.value != null;
	}

	/**
	 * 
	 * @return
	 */
	public function next():T
	{
		var result:T = this.value;
		this.value	 = null;
		
		return result;
	}
	
}