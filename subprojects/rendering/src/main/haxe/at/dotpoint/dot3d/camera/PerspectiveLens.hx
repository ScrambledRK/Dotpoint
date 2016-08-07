package haxe.at.dotpoint.dot3d.camera;

import haxe.at.dotpoint.dispatcher.event.Event;
import haxe.at.dotpoint.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.display.camera.CameraLens;
import haxe.at.dotpoint.display.camera.ICameraFrustum;
import haxe.at.dotpoint.display.event.DisplayEvent;
import haxe.at.dotpoint.display.rendering.context.RenderViewport;
import haxe.at.dotpoint.math.MathUtil;
import haxe.at.dotpoint.math.vector.IMatrix44;

/**
 * ...
 * @author RK
 */
class PerspectiveLens extends CameraLens
{

	/**
	 * dimension of the screen the scene shall be rendered on
	 */
	public var viewport(default, null):RenderViewport;

	/**
	 * nearest visible distance in world units
	 */
	public var zNear(default, set):Float;

	/**
	 * farthest visible distance in world units
	 */
	public var zFar(default, set):Float;

	/**
	 * field of view (in regards to RenderViewport.ratio Y-Axis)
	 */
	public var yFOV(default, set):Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( viewport:RenderViewport, ?yFOV:Float )
	{
		super();

		this.viewport = viewport;
		this.viewport.addListener( DisplayEvent.VIEWPORT_RESIZE, this.onProjectionChanged );

		this.zNear 	= 1;
		this.zFar 	= 1000;
		this.yFOV 	= yFOV != null ? yFOV : 45 * MathUtil.DEG_RAD;
	}

	// ************************************************************************ //
	// getter/setter
	// ************************************************************************ //

	//
	private function set_zNear( value:Float ):Float
	{
		this.zNear = value;
		this.onProjectionChanged( null );

		return value;
	}

	//
	private function set_zFar( value:Float ):Float
	{
		this.zFar = value;
		this.onProjectionChanged( null );

		return value;
	}

	//
	private function set_yFOV( value:Float ):Float
	{
		this.yFOV = value;
		this.onProjectionChanged( null );

		return value;
	}

	// ************************************************************************ //
	// onChange/onUpdate
	// ************************************************************************ //

	/**
	 *
	 */
	private function onProjectionChanged( event:Event ):Void
	{
		if( this.lazy.status == LazyStatus.VALID )
		{
			this.lazy.status = LazyStatus.INVALID;
			this.lazy.dispatchUpdate();
		}
	}

	/**
	 *
	 */
	private function validateProjectionMatrix():Void
	{
		var cotan:Float = 1 / Math.tan( this.yFOV * 0.5 );
		var depth:Float = this.zNear - this.zFar;
		var ratio:Float = this.viewport.width / this.viewport.height;

		// -------------------- //

		this.projectionMatrix.toIdentity();

		this.projectionMatrix.m11 = cotan / ratio;			// opengl
		this.projectionMatrix.m22 = cotan;
		this.projectionMatrix.m33 = (this.zFar + this.zNear) / depth;

		this.projectionMatrix.m34 = (2 * this.zFar * this.zNear) / depth;
		this.projectionMatrix.m43 = -1;
		this.projectionMatrix.m44 = 0;

		/*this.projectionMatrix.m11 = cotan / this.viewport.ratio;			// directx
		this.projectionMatrix.m22 = cotan;
		this.projectionMatrix.m33 = this.zFar / depth;

		this.projectionMatrix.m43 = - ((this.zFar * this.zNear) / depth);
		this.projectionMatrix.m34 = 1;
		this.projectionMatrix.m44 = 0;*/

		//this.projectionMatrix.transpose();
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * "Model-Space" ProjectionMatrix (just projection without camera transformation)
	 * @return
	 */
	override public function getProjectionMatrix():IMatrix44
	{
		if( this.lazy.status == LazyStatus.INVALID )
		{
			this.validateProjectionMatrix();
			this.lazy.status = LazyStatus.VALID;
		}

		return this.projectionMatrix;
	}

	/**
	 * "Model-Space" Frustum (without camera transformation)
	 * @return
	 */
	override public function getCameraFrustum():ICameraFrustum
	{
		return null;
	}
}