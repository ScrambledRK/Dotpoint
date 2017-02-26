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
	//
	public static function getNumVertices( type:FaceType ):Int
	{
		return 3;
	}
	
	//
	public static function getType( numVertices:Int ):FaceType
	{
		if( numVertices == 3 )
			return FaceType.TRIANGLE;
		
		return null;
	}
}