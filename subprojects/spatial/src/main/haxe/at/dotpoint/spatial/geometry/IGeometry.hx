package at.dotpoint.spatial.geometry;

/**
 * @author RK
 */
interface IGeometry 
{
	/** figure out if and what primitive or complexe type this is */
	public var geometryType(get,null):GeometryType;
}