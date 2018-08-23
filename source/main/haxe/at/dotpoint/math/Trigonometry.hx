package at.dotpoint.math;

import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.IVector2;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector3;

/**
 *
 * @author RK
 */
class Trigonometry
{

	/**
	 * interpolate
	 */
	public static function interpolate( a:IVector3, b:IVector3, delta:Float, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		output.x = a.x + (b.x - a.x) * delta;
		output.y = a.y + (b.y - a.y) * delta;
		output.z = a.z + (b.z - a.z) * delta;

		return output;
	}

	/**
	 * normal of a triangle
	 */
	public static function calculatetNormal( v1:IVector3, v2:IVector3, v3:IVector3 ):IVector3
	{
		return MathVector3.normalize( Trigonometry.crossTriangle( v1, v2, v3 ) );
	}

	/**
	 * area of a triangle
	 */
	public static function calculatetArea( v1:IVector3, v2:IVector3, v3:IVector3 ):Float
	{
		return MathVector3.length( Trigonometry.crossTriangle( v1, v2, v3 ) ) * 0.5;
	}

	//
	inline private static function crossTriangle( v1:IVector3, v2:IVector3, v3:IVector3 ):IVector3
	{
		var sub1:IVector3 = MathVector3.subtract( v2, v1 );
		var sub2:IVector3 = MathVector3.subtract( v3, v1 );

		return MathVector3.cross( sub1, sub2 );
	}

	//
	public static function getWinding( v1:IVector3, v2:IVector3, v3:IVector3 ):Int
	{
		return MathBasic.getSign( Trigonometry.calculatetNormal( v1, v2, v3 ).z );
	}

	// ************************************************************************ //
	// ************************************************************************ //

	/**
	 *
	 * @param	v1
	 * @param	v2
	 * @param	mode
	 * @return
	 */
	public static function calculateDistance( v1:IVector2, v2:IVector2, ?mode:DistanceMethod ):Float
	{
		if( mode == null )
			mode = DistanceMethod.EULER;

		// ------------- //

		var x:Float = Math.abs( v1.x - v2.x );
		var y:Float = Math.abs( v1.y - v2.y );

		switch ( mode )
		{
			case DistanceMethod.EULER:
				return Math.sqrt( x * x + y * y );

			case DistanceMethod.MANHATTEN:
				return x + y;
		}

		return -1;
	}

	/**
	 *
	 * @param	a
	 * @param	b
	 * @param	n optional normal
	 * @return
	 */
	public static function getRadianAngle( a:IVector3, b:IVector3, ?n:IVector3 ):Float
	{
		var fc:IVector3 = MathVector3.cross( a, b );
		var fd:Float = MathVector3.dot( a, b );

		var angle:Float = Math.atan2( MathVector3.length( fc ), fd );

		if( n != null )
			angle *= MathBasic.getSign( MathVector3.dot( n, fc ) );

		return angle;
	}

	// ************************************************************************ //
	// Projection
	// ************************************************************************ //

	/**
	 * @param a normal
	 * @param b vector to project
	 */
	public static function project( a:IVector3, b:IVector3, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		var l:Float = a.x * a.x + a.y * a.y + a.z * a.z;
		if( l == 0 ) throw "undefined result";

		var d:Float = MathVector3.dot( a, b );
		var div:Float = d / l;

		return MathVector3.scale( a, div, output );
	}

	/**
	 * Applies Gram-Schmitt Ortho-normalization to the given set of input objects.
	 */
	public static function orthoNormalize( vectors:Array<IVector3> ):Void
	{
		for( i in 0...vectors.length )
		{
			var sum:Vector3 = new Vector3();

			for( j in 0...i )
			{
				var projected:IVector3 = Trigonometry.project( vectors[i], vectors[j] );
				MathVector3.add( sum, projected, sum );
			}

			MathVector3.subtract( vectors[i], sum, vectors[i] );
			MathVector3.normalize( vectors[i] );
		}
	}

	// ************************************************************************ //
	// etc
	// ************************************************************************ //

	//
	public static function isPointInTriangle( p:IVector3, a:IVector3, b:IVector3, c:IVector3 ):Bool
	{
		return Trigonometry.areSameSide( p, a, b, c )
			&& Trigonometry.areSameSide( p, b, a, c )
			&& Trigonometry.areSameSide( p, c, a, b );
	}

	//
	private static function areSameSide( p1:IVector3, p2:IVector3, a:IVector3, b:IVector3 ):Bool
	{
		var cp1:IVector3 = Trigonometry.crossTriangle( a, p1, b );
		var cp2:IVector3 = Trigonometry.crossTriangle( a, p2, b );

		var result:Float = MathVector3.dot( cp1, cp2 );

		if( MathBasic.isEqual( result, 0 ) )
			return false;

		return result > 0;
	}
}