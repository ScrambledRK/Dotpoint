package haxe.at.dotpoint.spatial;

import haxe.at.dotpoint.datastructure.entity.IEntity;
import haxe.at.dotpoint.datastructure.graph.TreeNode;
import haxe.at.dotpoint.spatial.boundings.IBoundings;
import haxe.at.dotpoint.spatial.transform.ITransform;

/**
 * Entity for Spatial-Objects with Transformation Component for translation, scaling and rotation,
 * in local and world space; a Boundings Component for Axis Aligned Bounding Boxes in local and world space;
 * as well as a TreeNode Component for hierachical transformation composition (children transformations
 * depending on their parent transformation, parent boundings composed of the bounds of their children)
 */
interface ISpatialEntity extends IASpatialEntity<ISpatialEntity>
{

}

interface IASpatialEntity<TNode:IASpatialEntity<TNode>> extends IEntity
{

	/**
	 * translation, scaling, rotation in both local and world space
	 */
	public var transform(default, null):ITransform;

	/**
	 * axis aligned bounding box in both local and world space
	 */
	public var boundings(default,null):IBoundings;

	/**
	 * hierachical composition of spatial entities (transform, boundings)
	 */
	public function getSpatialNode():TreeNode<TNode>;

}