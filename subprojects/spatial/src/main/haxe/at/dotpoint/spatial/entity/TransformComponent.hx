package at.dotpoint.spatial.entity;

import at.dotpoint.spatial.transform.TransformationMatrix;
import at.dotpoint.math.vector.Matrix44;
import at.dotpoint.math.vector.IMatrix44;
import at.dotpoint.dispatcher.lazy.LazyStatus;
import at.dotpoint.math.geom.Space;
import at.dotpoint.dispatcher.event.Event;
import at.dotpoint.datastructure.graph.event.TreeNodeEvent;
import at.dotpoint.datastructure.graph.TreeNode;
import at.dotpoint.spatial.transform.LazyTransform;
import at.dotpoint.spatial.transform.ITransform;
import at.dotpoint.entity.IEntity;
import at.dotpoint.entity.Component;

/**
 * 2016-08-13
 * @author RK
 */
@:access(at.dotpoint.spatial.transform.LazyTransform)
@:access(at.dotpoint.spatial.transform.TransformationMatrix)
//
class TransformComponent extends Component
{

	//
	public var transform(default, null):ITransform;

	//
	private var treeNode:TreeNode<ITransform>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?transform:ITransform )
	{
		if( transform == null )
			transform = new LazyTransform();

		this.transform = transform;
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	/**
	 * Matrix44 in localSpace - directly related to components
	 */
	private var localMatrix(get,null):TransformationMatrix;

	//
	inline private function get_localMatrix():TransformationMatrix
	{
		return this.transform.getMatrix( Space.LOCAL );
	}

	/**
	 * Matrix44 in worldSpace - indirectly related to localMatrix and scene hierachy
	 */
	private var worldMatrix(get,null):TransformationMatrix;

	//
	inline private function get_worldMatrix():TransformationMatrix
	{
		return this.transform.getMatrix( Space.WORLD );
	}

	// ************************************************************************ //
	// onEntity added/removed
	// ************************************************************************ //

	/**
	 * when this component has been removed from an entity; the new entity
	 * is accessable and you can use this methode to gather time consuming data
	 * from other components or the entity itself.
	 */
	override private function onEntityAttached( entity:IEntity ):Bool
	{
		this.localMatrix.lazy.onUpdate		= this.validateLocalMatrix;	// validate immediatly
		this.worldMatrix.lazy.onUpdate 		= this.onUpdateWorldMatrix;	// invalidate children
		this.worldMatrix.lazy.onValidate 	= this.validateWorldMatrix;

		// -------------- //

		var hierarchyComponent:TransformHierarchyComponent = entity.getComponent( TransformHierarchyComponent );

		if( hierarchyComponent == null )
			return true;

		this.treeNode = hierarchyComponent.tree;
		this.treeNode.addListener( TreeNodeEvent.REMOVED_FROM_NODE, this.onSpatialTreeChanged );

		// -------------- //

		return true;
	}

	/**
	 * when this component has been removed from an entity; the old entity
	 * is still accessable and you have to remove all pointers in this methode
	 * that might prevent the garbage collector from removing this or other components
	 */
	override private function onEntityDetached( entity:IEntity ):Bool
	{
		if( this.treeNode != null )
		{
			this.treeNode.removeListener( TreeNodeEvent.REMOVED_FROM_NODE, this.onSpatialTreeChanged );
			this.treeNode = null;
		}

		// -------------- //

		return true;
	}

	// ************************************************************************ //
	// upodate
	// ************************************************************************ //

	/**
	 * local matrix has changed, update world matrix
	 */
	inline private function onUpdateWorldMatrix():Void
	{
		if( this.treeNode == null )
			return;

		for( child in this.treeNode.children )
		{
			var transform:ITransform = child.element;
				transform.setMatrix( null, Space.WORLD );
		}
	}

	/**
	 *
	 */
	inline private function validateWorldMatrix():Void
	{
		this.worldMatrix.set44( this.calculateWorldMatrix );
		this.worldMatrix.lazy.status = LazyStatus.VALID;
	}

	/**
	 * world matrix has changed, update local matrix
	 */
	inline private function validateLocalMatrix():Void
	{
		this.localMatrix.set44( this.calculateLocalMatrix() );
		this.localMatrix.lazy.status = LazyStatus.VALID;
	}

	// ************************************************************************ //
	// calculations
	// ************************************************************************ //

	/**
	 *
	 */
	private function calculateWorldMatrix():IMatrix44
	{
		var wm:IMatrix44 = this.localMatrix;           		// validates only via components
		var pm:IMatrix44 = this.getParentWorldMatrix();     // validates if necessary

		if( pm != null )
			wm = Matrix44.multiply( pm, wm );

		return wm;
	}

	/**
	 *
	 */
	private function calculateLocalMatrix():IMatrix44
	{
		var lm:TransformationMatrix = this.worldMatrix;      			// already valid since its only called via setWorldMatrix
		var pm:TransformationMatrix = this.getParentWorldMatrix();     	// validates if necessary

		if( pm != null )
			lm = Matrix44.multiply( pm.inverse(), lm );

		return lm;
	}

	/**
	 *
	 */
	inline private function getParentWorldMatrix():IMatrix44
	{
		if( this.treeNode == null || this.treeNode.parent == null )
			return null;

		return this.treeNode.parent.element.getMatrix( Space.LOCAL );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 */
	private function onSpatialTreeChanged( event:Event ):Void
	{
		if( event.target != this.treeNode )       // ignore bubbling events
			return;

		this.transform.setMatrix( null, Space.WORLD );
	}

}


