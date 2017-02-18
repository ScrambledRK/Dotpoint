package at.dotpoint.spatial.transformation;
import at.dotpoint.math.tensor.MathMatrix33;
import at.dotpoint.math.tensor.MathMatrix44;
import at.dotpoint.math.tensor.MathQuaternion;
import at.dotpoint.math.tensor.matrix.IMatrix33;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.matrix.Matrix33;
import at.dotpoint.math.tensor.matrix.Matrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.quaternion.Quaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;

/**
 * ...
 * @author RK
 */
class MathTransformation 
{

	// ------------------------------------------------ //
	// ------------------------------------------------ //
	// Translation:

	/**
	 *
	 */
	public static function getTranslation( matrix:IMatrix44, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		output.x = matrix.m41;
		output.y = matrix.m42;
		output.z = matrix.m43;

		return output;
	}

	/**
	 *
	 */
	public static function setTranslation( matrix:IMatrix44, input:IVector3 ):IMatrix44
	{
		matrix.m41 = input.x;
		matrix.m42 = input.y;
		matrix.m43 = input.z;
		
		return matrix;
	}

	// ------------------------------------------------ //
	// ------------------------------------------------ //
	// Scale:

	/**
	 *
	 */
	public static function getScale( matrix:IMatrix33, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		output.x = Math.sqrt( matrix.m11 * matrix.m11 + matrix.m12 * matrix.m12 + matrix.m13 * matrix.m13 );
		output.y = Math.sqrt( matrix.m21 * matrix.m21 + matrix.m22 * matrix.m22 + matrix.m23 * matrix.m23 );
		output.z = Math.sqrt( matrix.m31 * matrix.m31 + matrix.m32 * matrix.m32 + matrix.m33 * matrix.m33 );

		return output;
	}

	/**
	 * FIXME: looks very wrong! why can't I set to 1:1:1? this looks like scaleBy not setScale
	 */
	public static function setScale( matrix:IMatrix33, input:IVector3 ):IMatrix33
	{
		if ( input.x != 1 || input.y != 1 || input.z != 1 )
		{
			var scale:IMatrix33 = new Matrix33();
				scale.m11 = input.x;
				scale.m22 = input.y;
				scale.m33 = input.z;

			MathMatrix33.multiply( matrix, scale, matrix );
		}
		
		return matrix;
	}

	// ------------------------------------------------ //
	// ------------------------------------------------ //
	// Rotation:

	/**
	 *
	 */
	public static function getRotation( matrix:IMatrix44, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		return MathQuaternion.setMatrix( matrix, output );
	}

	/**
	 *
	 */
	public static function setRotation( matrix:IMatrix33, input:IQuaternion ):IMatrix33
	{
		return MathQuaternion.toMatrix( input, matrix );
	}
	
}