package haxe.at.dotpoint.display.camera;

import haxe.at.dotpoint.core.dispatcher.event.Event;
import haxe.at.dotpoint.core.datastructure.entity.Component;
import haxe.at.dotpoint.core.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.display.camera.ICameraComponent;
import haxe.at.dotpoint.display.camera.ICameraFrustum;
import haxe.at.dotpoint.display.camera.ICameraLens;
import haxe.at.dotpoint.math.Axis.AxisDirection;
import haxe.at.dotpoint.math.geom.IPlane;
import haxe.at.dotpoint.math.geom.Space;
import haxe.at.dotpoint.math.vector.IMatrix44;
import haxe.at.dotpoint.math.vector.Matrix44;
import haxe.at.dotpoint.math.vector.Vector3;
import haxe.at.dotpoint.spatial.event.SpatialEvent;
import haxe.at.dotpoint.spatial.ISpatialEntity;

/**
 * ...
 * @author RK
 */
@:access(haxe.at.dotpoint.display.camera.ICameraLens)
 //
class CameraComponent<TEntity:IASpatialEntity<TEntity>> extends Component<TEntity> implements ICameraComponent<TEntity>
{

	/**
	 * combined projectionMatrix from lense and transformation matrix
	 */
	private var projectionMatrix:Matrix44;

	/**
	 * 6 planes defining the view frustum in worldspace
	 */
	private var frustum:ICameraFrustum;

	/**
	 * combined projectionMatrix from lense and transformation matrix
	 */
	private var cameraLens:ICameraLens;

	/**
	 * is ProjectionMatrix invalid (combination of camera transform and lense projection matrix)
	 */
	private var status:LazyStatus;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( cameraLens:ICameraLens )
	{
		super();

		this.cameraLens = cameraLens;

		this.projectionMatrix = new Matrix44();
		this.frustum = new CameraFrustum();

		this.status = LazyStatus.INVALID;
	}

	// ************************************************************************ //
	// Entity/Component
	// ************************************************************************ //

	/**
	 *
	 */
	private override function onEntityAdded():Void
	{
		this.entity.transform.addListener( SpatialEvent.TRANSFORM_CHANGED, this.onTransformChanged );
		this.cameraLens.lazy.onUpdate = this.onLensUpdate;	// TODO: check CameraLens is only set once per camera; (no sharing) changing Lens on the fly
	}

	/**
	 *
	 */
	private override function onEntityRemoved():Void
	{
		this.entity.transform.removeListener( SpatialEvent.TRANSFORM_CHANGED, this.onTransformChanged );
		this.cameraLens.lazy.onUpdate = null;
	}

	// ************************************************************************ //
	// onChange/onUpdate
	// ************************************************************************ //

	/**
	 *
	 */
	private function onTransformChanged( value:Event ):Void
	{
		this.onLensUpdate();
	}

	/**
	 *
	 */
	inline private function onLensUpdate():Void
	{
		this.status = LazyStatus.INVALID;
	}

	// ************************************************************************ //
	// ICamera
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function getProjectionMatrix():IMatrix44
	{
		if( this.status == LazyStatus.INVALID )
		{
			this.validateProjectionMatrix();
			this.status = LazyStatus.VALID;
		}

		return this.projectionMatrix;
	}

	/**
	 *
	 * @return
	 */
	public function getCameraFrustum():ICameraFrustum
	{
		var projection:IMatrix44 = this.getProjectionMatrix();

		var l_plane:IPlane = this.frustum.getPlane( AxisDirection.LEFT );
			l_plane.a = projection.m41 + projection.m11;
			l_plane.b = projection.m42 + projection.m12;
			l_plane.c = projection.m43 + projection.m13;
			l_plane.d = projection.m44 + projection.m14;

		var r_plane:IPlane = this.frustum.getPlane( AxisDirection.RIGHT );
			r_plane.a = projection.m41 - projection.m11;
			r_plane.b = projection.m42 - projection.m12;
			r_plane.c = projection.m43 - projection.m13;
			r_plane.d = projection.m44 - projection.m14;

		var t_plane:IPlane = this.frustum.getPlane( AxisDirection.UP );
			t_plane.a = projection.m41 + projection.m21;
			t_plane.b = projection.m42 + projection.m22;
			t_plane.c = projection.m43 + projection.m23;
			t_plane.d = projection.m44 + projection.m24;

		var b_plane:IPlane = this.frustum.getPlane( AxisDirection.DOWN );
			b_plane.a = projection.m41 - projection.m21;
			b_plane.b = projection.m42 - projection.m22;
			b_plane.c = projection.m43 - projection.m23;
			b_plane.d = projection.m44 - projection.m24;

		var n_plane:IPlane = this.frustum.getPlane( AxisDirection.FRONT );
			n_plane.a = projection.m41 + projection.m31;
			n_plane.b = projection.m42 + projection.m32;
			n_plane.c = projection.m43 + projection.m33;
			n_plane.d = projection.m44 + projection.m34;

		var f_plane:IPlane = this.frustum.getPlane( AxisDirection.BACK );
			f_plane.a = projection.m41 - projection.m31;
			f_plane.b = projection.m42 - projection.m32;
			f_plane.c = projection.m43 - projection.m33;
			f_plane.d = projection.m44 - projection.m34;

		return null;
	}

	/**
	 *
	 * @return
	 */
	public function getCameraLens():ICameraLens
	{
		return this.cameraLens;
	}

	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //

	/**
	 *
	 */
	private function validateProjectionMatrix():Void
	{
		var transform:IMatrix44 = this.entity.transform.getMatrix( null, Space.WORLD );
		var projection:IMatrix44 = this.cameraLens.getProjectionMatrix();

		// ------------------ //

		var eye:Vector3 = new Vector3();
			eye.x = -this.entity.transform.position.x;
			eye.y = -this.entity.transform.position.y;
			eye.z = -this.entity.transform.position.z;

		var x:Vector3 = new Vector3( transform.m11, transform.m21, transform.m31 );
		var y:Vector3 = new Vector3( transform.m12, transform.m22, transform.m32 );
		var z:Vector3 = new Vector3( transform.m13, transform.m23, transform.m33 );

		var view:Matrix44 = new Matrix44( transform );
			view.m41 = Vector3.dot( x, eye );
			view.m42 = Vector3.dot( y, eye );
			view.m43 = Vector3.dot( z, eye );

		Matrix44.multiply( view, projection, this.projectionMatrix );
	}
}