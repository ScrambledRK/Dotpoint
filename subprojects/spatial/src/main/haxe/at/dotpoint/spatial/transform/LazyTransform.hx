package at.dotpoint.spatial.transform;

import at.dotpoint.math.MathUtil;
import Math;
import at.dotpoint.dispatcher.event.EventDispatcher;
import at.dotpoint.dispatcher.lazy.LazyStatus;
import at.dotpoint.math.geom.Space;
import at.dotpoint.math.lazy.LazyQuaternion;
import at.dotpoint.math.lazy.LazyVector3;
import at.dotpoint.math.vector.IMatrix44;
import at.dotpoint.math.vector.IQuaternion;
import at.dotpoint.math.vector.IVector3;
import at.dotpoint.math.vector.Matrix44;
import at.dotpoint.spatial.event.SpatialEvent;

/**
 * Component handling the Transformation-Matrix used by Spatial-Entities and its Transformation-Hierachy.
 * Transform is composed of independent position (IVector3), scale (IVector3) and rotation (IQuaternion) objects
 * in local space (relative to its parent) as well as a 4x4 Transformation-Matrix (IMatrix44) in local space as well
 * as one in world space (relative to root). The 3 local transformation components (position, scale, rotation) and
 * the 2 Transformations-Matrix objects are automatically updated using lazy evaluation.
 */
@:access(at.dotpoint.math.lazy.LazyVector3)
@:access(at.dotpoint.math.lazy.LazyQuaternion)
@:access(at.dotpoint.spatial.transform.TransformationMatrix)
//
class LazyTransform extends EventDispatcher implements ITransform
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

		this.initialize();
	}

	// ************************************************************************ //
	// onEntity added/removed
	// ************************************************************************ //

	/**
	 *
	 */
	private function initialize():Void
	{
		this.m_position.lazy.onUpdate     = this.onUpdateComponent;
		this.m_position.lazy.onValidate   = this.validateLP;

		this.m_rotation.lazy.onUpdate     = this.onUpdateComponent;
		this.m_rotation.lazy.onValidate   = this.validateLR;

		this.m_scale.lazy.onUpdate        = this.onUpdateComponent;
		this.m_scale.lazy.onValidate      = this.validateLS;

		this.localMatrix.lazy.onValidate  = this.validateLM;
		this.worldMatrix.lazy.onValidate  = this.validateWM;
	}

	/**
	 *
	 */
	private function clear():Void
	{
		this.m_position.lazy.onUpdate     = null;
		this.m_position.lazy.onValidate   = null;

		this.m_rotation.lazy.onUpdate     = null;
		this.m_rotation.lazy.onValidate   = null;

		this.m_scale.lazy.onUpdate        = null;
		this.m_scale.lazy.onValidate      = null;
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
		if( value != null )
		{
			switch( space )
			{
				case Space.WORLD:
					this.setWorldMatrix( value );       // sets world matrix as well as local matrix

				default:
					this.setLocalMatrix( value );       // sets local matrix only
			}
		}
		else
		{
			switch( space )
			{
				case Space.WORLD:
					this.invalidateWorldMatrix();

				default:
					this.setLocalMatrix( new Matrix44() );
			}
		}
	}

	/**
	 *
	 */
	public function getMatrix( ?space:Space ):TransformationMatrix
	{
		var output:TransformationMatrix = null;

		switch( space )
		{
			case Space.WORLD:
				output = this.worldMatrix;      		// might use parent to validate world matrix

			default:
				output = this.localMatrix;      		// uses local components only to validate
		}

		// ---------------- //

		//
		output.lazy.validate();

		return output;
	}

	// ************************************************************************ //
	// world Matrix
	// ************************************************************************ //

	/**
	 *
	 */
	inline private function setWorldMatrix( value:IMatrix44 ):Void
	{
		if( Matrix44.isEqual( value, this.worldMatrix ) )
			return;

		// ------------ //

		this.worldMatrix.set44( value );
		this.worldMatrix.lazy.status = LazyStatus.VALID;

		this.invalidateLocalMatrix();                       // local is invalid (dispatches local change)
		this.invalidateComponents();                        // components invalid, do not dispatch updates

		this.dispatchWorldChange();
	}

	/**
	 *
	 */
	inline private function invalidateLocalMatrix():Void
	{
		if( this.localMatrix.lazy.status == LazyStatus.VALID )    // only dispatch change once
		{
			this.localMatrix.lazy.status = LazyStatus.INVALID;
			this.localMatrix.lazy.dispatchUpdate();
		}
	}

	// ************************************************************************ //
	// local Matrix
	// ************************************************************************ //

	/**
	 *
	 */
	inline private function setLocalMatrix( value:IMatrix44 ):Void
	{
		if( Matrix44.isEqual( value, this.localMatrix ) )
			return;

		// ------------ //

		this.localMatrix.set44( value );
		this.localMatrix.lazy.status = LazyStatus.VALID;

		this.invalidateWorldMatrix();                       // world matrix and (all) children wms are invalid (dispatches)
		this.invalidateComponents();                        // components invalid, do not dispatch updates

		this.dispatchLocalChange();
	}

	/**
	 *
	 */
	inline private function invalidateWorldMatrix():Void
	{
		if( this.worldMatrix.lazy.status == LazyStatus.VALID )    // only invalidateChildren once
		{
			this.worldMatrix.lazy.status = LazyStatus.INVALID;
			this.worldMatrix.lazy.dispatchUpdate();
		}
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

	// ----------------------------------------------------------------------- //
	// ----------------------------------------------------------------------- //

	/**
	 *
	 */
	inline private function validateLP():Void
	{
		this.localMatrix.getPosition( this.m_position.value );	// local matrix always valid
		this.m_position.lazy.status = LazyStatus.VALID;
	}

	/**
	 *
	 */
	inline private function validateLS():Void
	{
		this.localMatrix.getScale( this.m_scale.value );		// local matrix always valid
		this.m_scale.lazy.status = LazyStatus.VALID;
	}

	/**
	 *
	 */
	inline private function validateLR():Void
	{
		this.localMatrix.getRotation( this.m_rotation.value );	// local matrix always valid
		this.m_rotation.lazy.status = LazyStatus.VALID;
	}

	/**
	 *
	 */
	inline private function validateLM():Void
	{
		this.localMatrix.setComponents( this.m_rotation, this.m_scale, this.m_position );
		this.localMatrix.lazy.status = LazyStatus.VALID;

		this.resetComponentUpdate();                        // components still valid, need to dispatch update again
	}

	/**
	 *
	 */
	inline private function validateWM():Void
	{
		this.worldMatrix.set44( this.getMatrix( Space.LOCAL ) );
		this.worldMatrix.lazy.status = LazyStatus.VALID;
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

		var m_rotation:IQuaternion = space == Space.LOCAL ? this.m_rotation : this.getMatrix(space).getRotation();

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

		var m_scale:IVector3 = space == Space.LOCAL ? this.m_scale : this.getMatrix(space).getScale();

		if( !MathUtil.isEqual( m_scale.x, 1 ) )  return true;
		if( !MathUtil.isEqual( m_scale.y, 1 ) )  return true;
		if( !MathUtil.isEqual( m_scale.z, 1 ) )  return true;

		return false;
	}

}
