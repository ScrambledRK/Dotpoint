package haxe.at.dotpoint.display.camera;

import haxe.at.dotpoint.datastructure.entity.IComponent;
import haxe.at.dotpoint.math.vector.IMatrix44;
import haxe.at.dotpoint.spatial.ISpatialEntity;

/**
 * @author RK
 */

interface ICameraComponent<TEntity:IASpatialEntity<TEntity>> extends IComponent<TEntity>
{
	/**
	 *
	 * @return
	 */
	public function getProjectionMatrix():IMatrix44;

	/**
	 *
	 * @return
	 */
	public function getCameraFrustum():ICameraFrustum;

	/**
	 *
	 * @return
	 */
	public function getCameraLens():ICameraLens;
}