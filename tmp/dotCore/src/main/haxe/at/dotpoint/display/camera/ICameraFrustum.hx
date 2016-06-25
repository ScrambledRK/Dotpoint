package haxe.at.dotpoint.display.camera;

import haxe.at.dotpoint.math.Axis.AxisDirection;
import haxe.at.dotpoint.math.geom.IPlane;


/**
 * @author RK
 */

interface ICameraFrustum
{
	public function getPlane( direction:AxisDirection ):IPlane;
}