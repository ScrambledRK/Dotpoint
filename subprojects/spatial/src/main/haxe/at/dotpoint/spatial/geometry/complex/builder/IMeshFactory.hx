package at.dotpoint.spatial.geometry.complex.builder;

import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.spatial.geometry.complex.mesh.face.IFace;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertex;
import at.dotpoint.spatial.geometry.complex.mesh.vertex.IVertexData;

/**
 * @author RK
 */
interface IMeshFactory
{
	public function getTypesSize():Int;

	public function createFace():IFace;
	public function createVertexData():IVertexData;
	public function createVertex():IVertex;

	public function getByteFormat( type:Int ):ByteFormat;
}