package haxe.at.dotpoint.display.camera;
import haxe.at.dotpoint.core.dispatcher.lazy.LazyComponent;
import haxe.at.dotpoint.core.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.math.vector.IMatrix44;
import haxe.at.dotpoint.math.vector.Matrix44;

/**
 * ...
 * @author RK
 */
class CameraLens implements ICameraLens
{

	/**
	 * notifies ICamera in case the ProjectionMatrix changed
	 */
	private var lazy:LazyComponent;

	/**
	 *
	 */
	private var projectionMatrix:IMatrix44;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?projectionMatrix:IMatrix44 )
	{
		this.lazy = new LazyComponent();
		this.projectionMatrix = projectionMatrix != null ? projectionMatrix : new Matrix44();

		this.lazy.status = LazyStatus.INVALID;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 * "Model-Space" ProjectionMatrix (just projection without camera transformation)
	 * @return
	 */
	public function getProjectionMatrix():IMatrix44
	{
		return this.projectionMatrix;
	}

	/**
	 * "Model-Space" Frustum (without camera transformation)
	 * @return
	 */
	public function getCameraFrustum():ICameraFrustum
	{
		return null;
	}

}