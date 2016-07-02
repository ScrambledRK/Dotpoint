package haxe.at.dotpoint.display.camera;

import haxe.at.dotpoint.math.Axis.AxisDirection;
import haxe.at.dotpoint.math.geom.IPlane;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class CameraFrustum implements ICameraFrustum
{

	/**
	 *
	 */
	public var planes:Vector<IPlane>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		this.planes = new Vector<IPlane>( 6 );
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	orientation
	 * @return
	 */
	public function getPlane( direction:AxisDirection ):IPlane
	{
		switch( direction )
		{
			case AxisDirection.LEFT:	return this.planes[0];
			case AxisDirection.RIGHT:	return this.planes[1];
			case AxisDirection.UP:		return this.planes[2];
			case AxisDirection.DOWN:	return this.planes[3];
			case AxisDirection.FRONT:	return this.planes[4];
			case AxisDirection.BACK:	return this.planes[5];
		}

		return null;
	}
}