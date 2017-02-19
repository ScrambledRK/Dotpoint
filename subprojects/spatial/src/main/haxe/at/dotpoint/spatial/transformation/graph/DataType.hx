package at.dotpoint.spatial.transformation.graph;
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
enum DataType 
{
	TRANSLATION; 
	ROTATION; 
	SCALE; 
	MATRIX;
}

class DataTypeHelper
{
	private static var translation:ByteFormat 	= new ByteFormat( ByteType.FLOAT, 3 );	
	private static var rotation:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 4 );		
	private static var scale:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 3 );		
	private static var matrix:ByteFormat 		= new ByteFormat( ByteType.FLOAT, 16 );	
	
	//
	public static function getByteFormat( type:DataType ):ByteFormat
	{
		switch( type )
		{
			case DataType.TRANSLATION: 	return translation;
			case DataType.ROTATION: 	return rotation;
			case DataType.SCALE: 		return scale;
			case DataType.MATRIX: 		return matrix;
		}
	}
	
	//
	public static function createTensor( type:DataType ):ITensor
	{
		var format:ByteFormat = DataTypeHelper.getByteFormat( type );
		
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