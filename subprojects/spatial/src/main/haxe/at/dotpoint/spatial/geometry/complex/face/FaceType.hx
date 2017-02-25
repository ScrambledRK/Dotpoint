package at.dotpoint.spatial.geometry.complex.face;

/**
 * @author RK
 */
enum FaceType 
{
	TRIANGLE;
}

class FaceTypeHelper
{
	public static function getNumVertices( type:FaceType ):Int
	{
		return 3;
	}
}