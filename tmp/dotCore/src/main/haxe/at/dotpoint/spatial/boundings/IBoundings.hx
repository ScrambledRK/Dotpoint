package haxe.at.dotpoint.spatial.boundings;
import haxe.at.dotpoint.math.geom.Cube;
import haxe.at.dotpoint.math.geom.Space;

/**
 * @author RK
 */

interface IBoundings
{
	/**
	 * ModelSpace BoundingBox: RenderObject only, no Children, no Transform
	 */
	public var modelSpace(default, null):AABB;

	/**
	 * LocalSpace BoundingBox: RenderObject, Children, local Transform
	 */
	public var localSpace(default, null):AABB;

	/**
	 * WorldSpace BoundingBox: RenderObject, Children, world Transform
	 */
	public var worldSpace(default, null):AABB;

	// ---------------------- //

	/**
	 * on local/world dimension change: change transform or model?
	 */
	public var changePolicy:BoundingChangePolicy;

	/**
	 * whether or not to include children into boundings calculations
	 */
	public var measureChildren:Bool;

	// ---------------------- //
	// ---------------------- //

	/**
	 *
	 * @param	space
	 * @return
	 */
	public function getBounds( ?space:Space ):AABB;

	/**
	 *
	 * @param	output
	 * @param	space
	 * @return
	 */
	public function getChildrenBounds( ?output:Cube, space:Space ):Cube;

	// ---------------------- //
	// ---------------------- //

	private function invalidateLocalBounds():Void;
	private function invalidateWorldBounds():Void;
}