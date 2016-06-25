package haxe.at.dotpoint.display.renderable;

import haxe.at.dotpoint.spatial.ISpatialEntity;

/**
 * @author RK
 */

interface IDisplayObject extends IASpatialEntity<IDisplayObject>
{

	/**
	 * axis aligned bounding box in both local and world space
	 */
	public var renderable(default,null):IRenderable;

}