package haxe.at.dotpoint.display.camera;
import haxe.at.dotpoint.core.dispatcher.lazy.LazyComponent;
import haxe.at.dotpoint.math.vector.IMatrix44;

/**
 * @author RK
 */

interface ICameraLens
{
	/**
	 * notifies ICamera in case the ProjectionMatrix changed
	 */
	private var lazy:LazyComponent;

	/**
	 * "Model-Space" ProjectionMatrix (just projection without camera transformation)
	 * @return
	 */
	public function getProjectionMatrix():IMatrix44;
}