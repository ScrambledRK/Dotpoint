package at.dotpoint.spatial.geometry.primitive.cube;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.geometry.IGeometry;

/**
 * min, max representation of an axis aligned cube, useful for bounding box. <br/>
 */
interface ICube
{

	/**
	 * minimum values in euler coordinate system (TOP_LEFT_FRONT corner of the cube).
	 * components (x,y,z) can never be bigger than maximum components, unless the cube is set as empty
	 */
	public var min(get, null):IVector3;

	/**
	 * maximum values in euler coordinate system (BOTTOM_RIGHT_BACK corner of the cube).
	 * components (x,y,z) can never be smaller than minimum components, unless the cube is set as empty.
	 */
	public var max(get, null):IVector3;

}