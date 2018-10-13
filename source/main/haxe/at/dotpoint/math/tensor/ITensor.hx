package at.dotpoint.math.tensor;

typedef TTensor = {
	public var numComponents(get,never):Float;
	public function get( index:Int ):Float;
	public function set( index:Int, value:Float ):Float;
}

/**
 *
 */
interface ITensor<T:ITensor<T>>
{

	/**
	 * @return number of component values stored in this tensor
	 */
	public var numComponents(get,never):Float;

	/**
	 * get the component value of the given index
	 */
	public function get( index:Int ):Float;

	/**
	 * set the component value of the given index, to the given value
	 */
	public function set( index:Int, value:Float ):Float;

	/**
	 * reset all values to zero
	 * @return self for chain-method calling
	 */
	public function zero():T;

	/**
	 * copy values from this into new tensor
	 * @return new tensor
	 */
	public function clone( ?into:T):T;
	
	/**
	 * copy values from given vector into this
	 * @return new tensor
	 */
	public function from( from:T):T;

	/**
	 * copy values from given tensor into this
	 * @return self for chain-method calling
	 */
	public function copy( from:TTensor ):T;

	/**
	 * compare this tensor with a given one
	 * @return true if each component value is within tolerable equality
	 */
	public function equals( b:T):Bool;

	/**
	 * adds each component together (a+b*scale). 'this' will change.
	 * @return self for chain-method calling
	 */
	public function add( b:T, scale:Float = 1 ):T;

	/**
	 * substracts component values from a with values from b (a-b*scale). 'this' will change.
	 * @return self for chain-method calling
	 */
	public function sub( b:T, scale:Float = 1 ):T;

	/**
	 * multiplies component values from a with a scalar value. 'this' will change.
	 * @return self for chain-method calling
	 */
	public function scale( scale:Float ):T;

}
