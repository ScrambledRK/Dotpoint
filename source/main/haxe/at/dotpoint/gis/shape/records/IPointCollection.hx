package at.dotpoint.gis.shape.records;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.geometry.primitive.cube.ICube;
import haxe.ds.Vector;

/**
 * @author RK
 */
interface IPointCollection 
{
	public function getPoints():Vector<IVector3>;
	public function getBounds():ICube;
}