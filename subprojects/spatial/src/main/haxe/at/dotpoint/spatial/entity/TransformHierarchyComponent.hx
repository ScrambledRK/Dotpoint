package at.dotpoint.spatial.entity;

import at.dotpoint.spatial.transform.ITransform;
import at.dotpoint.datastructure.entity.Component;
import at.dotpoint.datastructure.graph.TreeNode;

/**
 * 2016-08-12
 * @author RK
 */
class TransformHierarchyComponent extends Component
{

	//
	public var tree(default,null):TreeNode<ITransform>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( )
	{
		this.tree = new TreeNode<ITransform>( this );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //


}
