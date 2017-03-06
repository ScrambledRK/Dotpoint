package at.dotpoint.spatial.geometry.complex.basic;

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
class VertexType 
{
	public static var POSITION(default,never) = 0;
	public static var NORMAL(default,never) = 1;
	public static var UV(default,never) = 2;
	public static var COLOR(default, never) = 3;
	
	//
	public static function getTypeSize():Int
	{
		return 4;
	}
	
	// --------------------------- //
	// --------------------------- //
	
	private static var f_position:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 3 );
	private static var f_normal:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 3 );
	private static var f_uv:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 2 );
	private static var f_color:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 3 );
	
	//
	public static function getByteFormat( type:Int ):ByteFormat
	{
		switch( type )
		{
			case VertexType.POSITION:	return f_position;
			case VertexType.NORMAL:		return f_normal;
			case VertexType.UV:			return f_uv;
			case VertexType.COLOR:		return f_color;
		}
		
		return null;
	}
	
	//
	public static function createTensor( type:Int ):ITensor
	{
		var format:ByteFormat = VertexType.getByteFormat( type );
		
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