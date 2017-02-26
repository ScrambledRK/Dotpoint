package at.dotpoint.spatial.geometry.complex.mesh.vertex;

import at.dotpoint.datastructure.ITensor;
import at.dotpoint.datastructure.bytes.ByteFormat;
import at.dotpoint.datastructure.bytes.ByteType;
import at.dotpoint.math.tensor.matrix.Matrix33;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.Vector2;
import at.dotpoint.math.tensor.vector.Vector3;

/**
 * @author RK
 */
enum VertexType 
{
	POSITION;
	NORMAL;
	UV;
	COLOR;
}

class VertexTypeHelper
{
	private static var position:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 3 );
	private static var normal:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 3 );
	private static var uv:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 2 );
	private static var color:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 3 );
	
	//
	public static function getByteFormat( type:VertexType ):ByteFormat
	{
		switch( type )
		{
			case VertexType.POSITION:	return position;
			case VertexType.NORMAL:		return normal;
			case VertexType.UV:			return uv;
			case VertexType.COLOR:		return color;
		}
	}
	
	//
	public static function createTensor( type:VertexType ):ITensor
	{
		var format:ByteFormat = VertexTypeHelper.getByteFormat( type );
		
		//
		switch( format.numValues )
		{
			case 2:	return new Vector2();
			case 3: return new Vector3();
			case 4: return new Quaternion();
			case 9: return new Matrix33();
			
			default:
				return new Matrix44();
		}
	}
}