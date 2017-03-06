package at.dotpoint.spatial.geometry.complex.basic;

/**
 * @author RK
 */
class FaceType 
{
	public static var TRIANGLE(default, never) = 0;
	
	//
	public static function getNumVertices( type:Int ):Int
	{
		return 3;
	}
	
	//
	public static function getType( numVertices:Int ):Int
	{
		if( numVertices == 3 )
			return FaceType.TRIANGLE;
		
		return -1;
	}
}