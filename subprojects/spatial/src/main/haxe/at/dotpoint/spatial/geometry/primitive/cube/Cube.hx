package at.dotpoint.spatial.geometry.primitive.cube;
import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.GeometryType;
import at.dotpoint.math.tensor.vector.IVector3;

/**
 * min, max representation of an axis aligned cube, useful for bounding box. <br/>
 */
class Cube implements ICube
{

	/**
	 * minimum values in euler coordinate system (TOP_LEFT_FRONT corner of the cube).
	 * components (x,y,z) can never be bigger than maximum components, unless the cube is set as empty
	 */
	@:isVar public var min(get, null):IVector3;

	/**
	 * maximum values in euler coordinate system (BOTTOM_RIGHT_BACK corner of the cube).
	 * components (x,y,z) can never be smaller than minimum components, unless the cube is set as empty.
	 */
	@:isVar public var max(get, null):IVector3;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * creates a new empty cube (`min` component values > `max` component values) </br>
	 *
	 * an empty cube does not have a valid dimension (e.g. width/height/length values are negative). use `setDimensions()`,
	 * `setExtensions()` or the getter/setter `width`/`height`/`length` directly to setup a valid cube.
	 */
	public function new()
	{
		this.min = new Vector3(  1,  1,  1 );
		this.max = new Vector3( -1, -1, -1 );
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 */
	inline private function get_min():IVector3 { return this.min; }

	/**
	 *
	 */
	inline private function get_max():IVector3 { return this.max; }

	// ************************************************************************ //
	// toString
	// ************************************************************************ //

	/**
	 * prints min components followed by width/height/length
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		return "{min:" + this.min + ";max:" + this.max + "}";
	}
}