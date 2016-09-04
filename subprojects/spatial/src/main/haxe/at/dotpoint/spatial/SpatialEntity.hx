package at.dotpoint.spatial;

import at.dotpoint.datastructure.graph.TreeNode;
import at.dotpoint.datastructure.entity.Entity;
import at.dotpoint.datastructure.entity.IComponent;
import at.dotpoint.math.vector.IVector3;
import at.dotpoint.spatial.boundings.Boundings;
import at.dotpoint.spatial.boundings.IBoundings;
import at.dotpoint.spatial.ISpatialEntity;
import at.dotpoint.spatial.transform.ITransform;
import at.dotpoint.spatial.transform.LazyTransform;

/**
 * Entity for Spatial-Objects with Transformation Component for translation, scaling and rotation,
 * in local and world space; a Boundings Component for Axis Aligned Bounding Boxes in local and world space;
 * as well as a TreeNode Component for hierachical transformation composition (children transformations
 * depending on their parent transformation, parent boundings composed of the bounds of their children)
 * <br/><br/>
 *
 * This entity is mostly used for display objects, but can also be used for non-renderable objects like
 * collission boxes, marker, or anything else that has a spatial representation. <br/>
 *
 * transform, boundings and tree node components are dependent on each other and cannot be removed
 * without breaking the others. you can manually set and change their values and the other components
 * update accordingly (e.g. rotating the object, boundings update; changing the parent, world space
 * transformation updates; etc)
 *
 * @author RK
 */
class SpatialEntity extends ASpatialEntity<SpatialEntity>
{

	//
	public function new( ?numComponents:Int = 3, ?pivot:IVector3 = null )
	{
		super( numComponents, pivot );
	}

}

/**
 *
 */
class ASpatialEntity<TNode:IASpatialEntity<TNode>> extends Entity implements IASpatialEntity<TNode>
{

	/**
	 * translation, scaling, rotation in both local and world space
	 */
	public var transform(default,null):ITransform;

	/**
	 * axis aligned bounding box in both local and world space
	 */
	public var boundings(default,null):IBoundings;

	/**
	 * hierachical composition of spatial entities (transform, boundings)
	 */
	private var spatialNode:TreeNode<TNode>;

	// ----------------- //

	public var x(get,set):Float;
	public var y(get,set):Float;
	public var z(get,set):Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?numComponents:Int = 3, ?pivot:IVector3 = null )
	{
		super( numComponents );

		var transform:LazyTransform<TNode> = new LazyTransform<TNode>();
		var boundings:Boundings<TNode> = new Boundings<TNode>( pivot );

		this.spatialNode = new TreeNode<TNode>();
		this.transform = transform;
		this.boundings = boundings;

		this.addComponent( this.spatialNode );
		this.addComponent( transform );
		this.addComponent( boundings );
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 * you can override this method to return a more specific treenode component;
	 * eg. one containing IDisplayObjects (and not just SpatialEntities)
	 *
	 * @return hierachical composition of spatial entities (transform, boundings)
	 */
	inline public function getSpatialNode():TreeNode<TNode>
	{
		return this.spatialNode;
	}

	// ----------------- //

	/**
	 * this.transform.position.x
	 */
	inline private function get_x():Float { return this.transform.position.x; }

	inline private function set_x( value:Float ):Float
	{
		return this.transform.position.x = value;
	}

	/**
	 * this.transform.position.y
	 */
	inline private function get_y():Float { return this.transform.position.y; }

	inline private function set_y( value:Float ):Float
	{
		return this.transform.position.y = value;
	}

	/**
	 * this.transform.position.z
	 */
	inline private function get_z():Float { return this.transform.position.z; }

	inline private function set_z( value:Float ):Float
	{
		return this.transform.position.z = value;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	component
	 * @param	destroy
	 * @return
	 */
	public override function removeComponent( component:IComponent<Dynamic>, ?destroy:Bool = true ):Bool
	{
		if( component == cast this.transform )
			throw "cannot remove Transform Component from SpatialEntity";

		if( component == cast this.boundings )
			throw "cannot remove Boundings Component from SpatialEntity";

		if( component == this.spatialNode )
			throw "cannot remove TreeNode Component from SpatialEntity";

		return super.removeComponent(component, destroy);
	}

}
