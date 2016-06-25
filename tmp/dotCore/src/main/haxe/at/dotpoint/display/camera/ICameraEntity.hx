package haxe.at.dotpoint.display.camera;
import haxe.at.dotpoint.spatial.ISpatialEntity;

/**
 * @author RK
 */

interface ICameraEntity<TNode:IASpatialEntity<TNode>> extends IASpatialEntity<TNode>
{
	public function getCamera():ICameraComponent<TNode>;
}