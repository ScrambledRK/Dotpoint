package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.spatial.geometry.complex.mesh.MeshIndices.MeshIndexData;

/**
 * @author RK
 */
interface IVertexData
{
	public var index:MeshIndexData;
	public var type:Int;
	
	public function getData():Dynamic;
	public function setData( value:Dynamic ):Void;
}