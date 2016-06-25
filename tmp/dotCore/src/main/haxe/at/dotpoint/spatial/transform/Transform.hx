package haxe.at.dotpoint.spatial.transform;

import haxe.at.dotpoint.core.datastructure.graph.event.TreeNodeEvent;
import haxe.at.dotpoint.core.datastructure.graph.TreeNode;
import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.datastructure.entity.Component;
import haxe.at.dotpoint.core.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.math.geom.Space;
import haxe.at.dotpoint.math.lazy.LazyQuaternion;
import haxe.at.dotpoint.math.lazy.LazyVector3;
import haxe.at.dotpoint.math.vector.IMatrix44;
import haxe.at.dotpoint.math.vector.IQuaternion;
import haxe.at.dotpoint.math.vector.IVector3;
import haxe.at.dotpoint.math.vector.Matrix44;
import haxe.at.dotpoint.spatial.event.SpatialEvent;
import haxe.at.dotpoint.spatial.ISpatialEntity;

/**
 * Component handling the Transformation-Matrix used by Spatial-Entities and its Transformation-Hierachy.
 * Transform is composed of independent position (IVector3), scale (IVector3) and rotation (IQuaternion) objects
 * in local space (relative to its parent) as well as a 4x4 Transformation-Matrix (IMatrix44) in local space as well
 * as one in world space (relative to root). The 3 local transformation components (position, scale, rotation) and
 * the 2 Transformations-Matrix objects are automatically updated using lazy evaluation.
 */
@:access(haxe.at.dotpoint.math.lazy.LazyVector3)
@:access(haxe.at.dotpoint.math.lazy.LazyQuaternion)
//
class Transform<TEntity:IASpatialEntity<TEntity>> extends Component<TEntity> implements ITransform
{

	/**
	 * IVector3 transform-component for translation in localSpace
	 */
	private var m_position(default,null):LazyVector3;

	/**
	 * IQuaternion transform-component for m_rotation in localSpace
	 */
	private var m_rotation(default,null):LazyQuaternion;

	/**
	 * IVector3 transform-component for scaling in localSpace
	 */
	private var m_scale(default,null):LazyVector3;

	// ------------ //

	/**
	 * Matrix44 in localSpace - directly related to components
	 */
	private var localMatrix(default,null):TransformationMatrix;

	/**
	 * Matrix44 in worldSpace - indirectly related to localMatrix and scene hierachy
	 */
	private var worldMatrix(default,null):TransformationMatrix;

	// ------------ //

	/**
	 * indicates validation status of the localSpace Matrix
	 */
	private var statusLocalMatrix:LazyStatus;

	/**
	 * indicates validation status of the worldSpace Matrix
	 */
	private var statusWorldMatrix:LazyStatus;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * constructs a default Transform object.
	 *
	 * position	( 0, 0, 0, 1 )
	 * rotation	( 0, 0, 0, 1 )
	 * scale	( 1, 1, 1, 1 )
	 */
	public function new()
	{
		super();

		this.m_position   = new LazyVector3( 0, 0, 0 );
		this.m_rotation   = new LazyQuaternion( 0, 0, 0 );
		this.m_scale      = new LazyVector3( 1, 1, 1 );

		this.localMatrix = new TransformationMatrix();
		this.worldMatrix = new TransformationMatrix();

		this.statusLocalMatrix = LazyStatus.VALID;
		this.statusWorldMatrix = LazyStatus.VALID;
	}

	// ************************************************************************ //
	// onEntity added/removed
	// ************************************************************************ //

	/**
	 * when this component has been removed from an entity; the new entity
	 * is accessable and you can use this methode to gather time consuming data
	 * from other components or the entity itself.
	 */
	override private function onEntityAdded():Void
	{
		this.assertRequiredComponents( [TreeNode] );

		// -------------- //

		this.m_position.lazy.onUpdate     = this.onUpdateComponent;
		this.m_position.lazy.onValidate   = this.validateLP;

		this.m_rotation.lazy.onUpdate     = this.onUpdateComponent;
		this.m_rotation.lazy.onValidate   = this.validateLR;

		this.m_scale.lazy.onUpdate        = this.onUpdateComponent;
		this.m_scale.lazy.onValidate      = this.validateLS;

		// -------------- //

		this.entity.getSpatialNode().addListener( TreeNodeEvent.REMOVED_FROM_NODE, this.onSpatialTreeChanged );
	}

	/**
	 * when this component has been removed from an entity; the old entity
	 * is still accessable and you have to remove all pointers in this methode
	 * that might prevent the garbage collector from removing this or other components
	 */
	override private function onEntityRemoved():Void
	{
		this.m_position.lazy.onUpdate     = null;
		this.m_position.lazy.onValidate   = null;

		this.m_rotation.lazy.onUpdate     = null;
		this.m_rotation.lazy.onValidate   = null;

		this.m_scale.lazy.onUpdate        = null;
		this.m_scale.lazy.onValidate      = null;

		// -------------- //

		this.entity.getSpatialNode().removeListener( TreeNodeEvent.REMOVED_FROM_NODE, this.onSpatialTreeChanged );
	}

	// ************************************************************************ //
	// get/set Components
	// ************************************************************************ //

	/**
	 * IVector3 transform-component for translation in local space (relative to its parent).
	 * any change of the position vector will invalidate both transformation matrices (local and world).
	 * the other way around, a change in any transformation matrix will invalidate the position vector.
	 * when the position vector has been previously invalidated and any of its values are read, an
	 * update will be triggered to ensure a valid position vector.
	 */
	public var position(get, set):IVector3;
	//
	private function get_position():IVector3 { return this.m_position; }
	//
	private function set_position( value:IVector3 ):IVector3
	{
		this.m_position.set( value.x, value.y, value.z, value.w );
		return m_position;
	}

	/**
	 * IQuaternion transform-component for rotation in local space (relative to its parent)
	 * any change of the rotation quaternion will invalidate both transformation matrices (local and world).
	 * the other way around, a change in any transformation matrix will invalidate the rotation quaternion.
	 * when the rotation quaternion has been previously invalidated and any of its values are read, an
	 * update will be triggered to ensure a valid rotation quaternion.
	 */
	public var rotation(get,set):IQuaternion;
	//
	private function get_rotation():IQuaternion { return this.m_rotation; }
	//
	private function set_rotation( value:IQuaternion ):IQuaternion
	{
		this.m_rotation.set( value.x, value.y, value.z, value.w );
		return m_rotation;
	}

	/**
	 * IVector3 transform-component for scaling in local space (relative to its parent)
	 * any change of the scale vector will invalidate both transformation matrices (local and world).
	 * the other way around, a change in any transformation matrix will invalidate the scale vector.
	 * when the scale vector has been previously invalidated and any of its values are read, an
	 * update will be triggered to ensure a valid scale vector.
	 */
	public var scale(get, set):IVector3;
	//
	private function get_scale():IVector3 { return this.m_scale; }
	//
	private function set_scale( value:IVector3 ):IVector3
	{
		this.m_scale.set( value.x, value.y, value.z, value.w );
		return m_scale;
	}

	// ************************************************************************ //
	// get/set Matrix
	// ************************************************************************ //

	/**
	 *
	 */
	public function setMatrix( value:IMatrix44, ?space:Space ):Void
	{
		switch( space )
		{
			case Space.WORLD:
				this.setWorldMatrix( value );               // sets world matrix as well as local matrix

			default:
				this.setLocalMatrix( value );               // sets local matrix only
		}
	}

	/**
	 *
	 */
	public function getMatrix( ?output:IMatrix44, ?space:Space ):IMatrix44
	{
		if( output == null )
			output = new Matrix44();

		// --------- //

		switch( space )
		{
			case Space.WORLD:
				output.set44( this.getWorldMatrix() );      // might use parent to validate world matrix

			default:
				output.set44( this.getLocalMatrix() );      // uses local components only to validate
		}

		return output;
	}

	// ************************************************************************ //
	// local Matrix
	// ************************************************************************ //

	/**
	 *
	 */
	inline private function setLocalMatrix( value:IMatrix44 ):Void
	{
		this.localMatrix.set44( value );

		this.statusLocalMatrix = LazyStatus.VALID;

		this.invalidateComponents();                        // components invalid, do not dispatch updates
		this.invalidateWorldMatrix();                       // world matrix and (all) children wms are invalid (dispatches)

		this.dispatchLocalChange();                         // no way to tell if redundant dispatch
	}

	/**
	 *
	 */
	inline private function getLocalMatrix():TransformationMatrix
	{
		if( this.statusLocalMatrix == LazyStatus.INVALID )
			this.validateLocalMatrix();

		return this.localMatrix;
	}

	/**
	 *
	 */
	inline private function validateLocalMatrix():Void
	{
		this.localMatrix.setComponents( this.m_rotation, this.m_scale, this.m_position );

		this.statusLocalMatrix = LazyStatus.VALID;
		this.resetComponentUpdate();                        // components still valid, need to dispatch update again
	}

	// ************************************************************************ //
	// world Matrix
	// ************************************************************************ //

	/**
	 *
	 */
	inline private function setWorldMatrix( value:IMatrix44 ):Void
	{
		this.worldMatrix.set44( value );
		this.localMatrix.set44( this.calculateLocalMatrix() );

		this.statusWorldMatrix = LazyStatus.VALID;
		this.statusLocalMatrix = LazyStatus.VALID;

		this.invalidateComponents();                        // components invalid, do not dispatch updates

		this.dispatchLocalChange();                         // no way to tell if redundant dispatch
		this.dispatchWorldChange();                         // also no way to tell ...

		this.invalidateChildren();                          // only (all) children wms are invalid (this.wm is valid)
	}

	/**
	 *
	 */
	inline private function getWorldMatrix():TransformationMatrix
	{
		if( this.statusWorldMatrix == LazyStatus.INVALID )
			this.validateWorldMatrix();

		return this.worldMatrix;
	}

	/**
	 *
	 */
	inline private function validateWorldMatrix():Void
	{
		var wm:IMatrix44 = this.getLocalMatrix();           // validates only via components
		var pm:IMatrix44 = this.getParentWorldMatrix();     // validates if necessary

		if( pm != null )
			wm = Matrix44.multiply( pm, wm );

		// ------------- //

		this.worldMatrix.set44( wm );

		this.statusWorldMatrix = LazyStatus.VALID;
		this.resetComponentUpdate();                        // not necessary: getLocalMatrix does it in case its needed
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 */
	private function calculateLocalMatrix():IMatrix44
	{
		var lm:IMatrix44 = this.worldMatrix;                // already valid since its only called via setWorldMatrix
		var pm:IMatrix44 = this.getParentWorldMatrix();     // validates if necessary

		if( pm != null )
		{
			pm.inverse();
			lm = Matrix44.multiply( pm, lm );
		}

		return lm;
	}

	/**
	 *
	 */
	inline private function getParentWorldMatrix():IMatrix44
	{
		if( this.entity.getSpatialNode().parent != null && this.entity.getSpatialNode().parent.entity != null )
			return this.entity.getSpatialNode().parent.entity.transform.getWorldMatrix();

		return null;
	}

	// ************************************************************************ //
	// local Components
	// ************************************************************************ //

	/**
	 *
	 */
	inline private function onUpdateComponent():Void
	{
		this.m_position.lazy.allowDispatchUpdate  = false;
		this.m_rotation.lazy.allowDispatchUpdate  = false;
		this.m_scale.lazy.allowDispatchUpdate     = false;

		this.invalidateLocalMatrix();                       // components valid, local matrix invalid
		this.invalidateWorldMatrix();                       // world matrix and (all) children wms are invalid
	}

	/**
	 *
	 */
	inline private function resetComponentUpdate():Void
	{
		this.m_position.lazy.allowDispatchUpdate  = true;
		this.m_rotation.lazy.allowDispatchUpdate  = true;
		this.m_scale.lazy.allowDispatchUpdate     = true;
	}

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 */
	inline private function validateLP():Void
	{
		this.localMatrix.getPosition( this.m_position.value );
		this.m_position.lazy.status = LazyStatus.VALID;
	}

	/**
	 *
	 */
	inline private function validateLS():Void
	{
		this.localMatrix.getScale( this.m_scale.value );
		this.m_scale.lazy.status = LazyStatus.VALID;
	}

	/**
	 *
	 */
	inline private function validateLR():Void
	{
		this.localMatrix.getRotation( this.m_rotation.value );
		this.m_rotation.lazy.status = LazyStatus.VALID;
	}

	// ************************************************************************ //
	// onInvalidate
	// ************************************************************************ //

	/**
	 *
	 */
	inline private function invalidateComponents():Void
	{
		this.m_position.lazy.status   = LazyStatus.INVALID;
		this.m_rotation.lazy.status   = LazyStatus.INVALID;
		this.m_scale.lazy.status      = LazyStatus.INVALID;

		this.m_position.lazy.allowDispatchUpdate  = false;
		this.m_rotation.lazy.allowDispatchUpdate  = false;
		this.m_scale.lazy.allowDispatchUpdate     = false;
	}

	/**
	 *
	 */
	inline private function invalidateLocalMatrix():Void
	{
		if( this.statusLocalMatrix == LazyStatus.VALID )    // only dispatch change once
		{
			this.statusLocalMatrix = LazyStatus.INVALID;
			this.dispatchLocalChange();
		}
	}

	/**
	 *
	 */
	inline private function invalidateWorldMatrix():Void
	{
		if( this.statusWorldMatrix == LazyStatus.VALID )    // only invalidateChildren once
		{
			this.statusWorldMatrix = LazyStatus.INVALID;
			this.dispatchWorldChange();

			this.invalidateChildren();
		}
	}

	/**
	 *
	 */
	private function invalidateChildren():Void
	{
		if( this.entity == null )
			return;

		// -------------- //

		var tree:TreeNode<TEntity> = this.entity.getSpatialNode();

		for( child in tree.children )
		{
			var transform:ITransform = child.entity.transform;
				transform.invalidateWorldMatrix();
		}
	}

	/**
	 *
	 */
	private function onSpatialTreeChanged( event:Event ):Void
	{
		if( event.target != this.entity.getSpatialNode() )       // ignore bubbling events
			return;

		this.invalidateWorldMatrix();
	}

	// ************************************************************************ //
	// dispatch changes
	// ************************************************************************ //

	/**
	 *
	 */
	inline private function dispatchLocalChange():Void
	{
		this.dispatch( SpatialEvent.getInstance( SpatialEvent.TRANSFORM_CHANGED, Space.LOCAL ) );
	}

	/**
	 *
	 */
	inline private function dispatchWorldChange():Void
	{
		this.dispatch( SpatialEvent.getInstance( SpatialEvent.TRANSFORM_CHANGED, Space.WORLD ) );
	}

	// ************************************************************************ //
	// Helper
	// ************************************************************************ //

	/**
	 *
	 */
	public function hasRotation( ?space:Space ):Bool
	{
		if( space == null )
			space = Space.LOCAL;

		var m_rotation:IQuaternion = space == Space.LOCAL ? this.m_rotation : this.worldMatrix.getRotation();

		if( m_rotation.x != 0 )  return true;
		if( m_rotation.y != 0 )  return true;
		if( m_rotation.z != 0 )  return true;
		if( m_rotation.w != 1 )  return true;

		return false;
	}

	/**
	 *
	 */
	public function hasScaling( ?space:Space ):Bool
	{
		if( space == null )
			space = Space.LOCAL;

		var m_scale:IVector3 = space == Space.LOCAL ? this.m_scale : this.worldMatrix.getScale();

		if( m_scale.x != 1 )  return true;
		if( m_scale.y != 1 )  return true;
		if( m_scale.z != 1 )  return true;

		return false;
	}

}
