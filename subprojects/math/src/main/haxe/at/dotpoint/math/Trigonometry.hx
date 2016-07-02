package haxe.at.dotpoint.math;

import haxe.at.dotpoint.math.geom.Rectangle;
import haxe.at.dotpoint.math.vector.IVector2;
import haxe.at.dotpoint.math.vector.IVector3;
import haxe.at.dotpoint.math.vector.Vector2;
import haxe.at.dotpoint.math.vector.Vector3;
import haxe.ds.Vector;

/**
 *
 * @author RK
 */
class Trigonometry
{

	/**
	 * @param a normal
	 * @param b vector to project
	 */
	public static function project<T:IVector3>( a:IVector3, b:IVector3, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();

		var l:Float = a.x * a.x + a.y * a.y + a.z * a.z;
		if( l == 0 ) throw "undefined result";

		var d:Float = Vector3.dot( a, b );
		var div:Float = d / l;

		return Vector3.scale( a, div, output );
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
				var projected:Vector3 = Trigonometry.project( vectors[i], vectors[j] );
				Vector3.add( sum, projected, sum );
			}

			Vector3.subtract( vectors[i], sum, vectors[i] ).normalize();
		}
	}

	/**
	 *
	 * @param	a
	 * @param	b
	 * @return
	 */
	public static function getRadianAngle( a:IVector3, b:IVector3, ?n:IVector3 ):Float
	{
		var fc:Vector3  = Vector3.cross( a, b );
		var fd:Float 	= Vector3.dot( a, b );

		var angle:Float = Math.atan2( fc.length(), fd );

		if( n != null )
		{
			angle *= MathUtil.getSign( Vector3.dot( n, fc ) );
		}

		return angle;
	}

	/**
	 *
	 */
	public static function calculatetNormal( v1:IVector3, v2:IVector3, v3:IVector3  ):Vector3
	{
		var sub1:Vector3 = Vector3.subtract( v2, v1 );
		var sub2:Vector3 = Vector3.subtract( v3, v1 );

		var cross:Vector3 = Vector3.cross( sub1, sub2 );
			cross.normalize();

		return cross;
	}

	/**
	 *
	 */
	public static function calculatetArea( v1:IVector3, v2:IVector3, v3:IVector3  ):Float
	{
		var sub1:Vector3 = Vector3.subtract( v2, v1 );
		var sub2:Vector3 = Vector3.subtract( v3, v1 );

		var cross:Vector3 = Vector3.cross( sub1, sub2 );

		return cross.length() * 0.5;
	}

	/**
	 *
	 * @param	v1
	 * @param	v2
	 * @param	mode
	 * @return
	 */
	public static function calculateDistanceVector2( v1:IVector2, v2:IVector2, ?mode:DistanceMethod ):Float
	{
		if( mode == null )
			mode = DistanceMethod.EULER;

		// ------------- //

		var x:Float = Math.abs( v1.x - v2.x );
		var y:Float = Math.abs( v1.y - v2.y );

		switch( mode )
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
	 * @param	r1
	 * @param	r2
	 * @param	mode
	 * @return
	 */
	public static function calculateDistanceRectangle( r1:Rectangle, r2:Rectangle, ?mode:DistanceMethod ):Float
	{
		if( mode == null )
			mode = DistanceMethod.EULER;

		// ------------- //

		var closest:Vector<Vector2> = Trigonometry.calculateClosestRectangleVertices( r1, r2, mode );

		if( closest == null )
			return 0;

		return Trigonometry.calculateDistanceVector2( closest[0], closest[1], mode );
	}

	/**
	 *
	 * @param	r1
	 * @param	r2
	 * @param	mode
	 */
	public static function calculateClosestRectangleVertices( r1:Rectangle, r2:Rectangle, ?mode:DistanceMethod,
															  ?output:Vector<Vector2> ):Vector<Vector2>
	{
		if( Rectangle.isRectangleIntersect( r1, r2, false ) )
			return null;

		if( mode == null )
			mode = DistanceMethod.EULER;

		var a:Vector2 = new Vector2();
		var b:Vector2 = new Vector2();

		// ------------------- //

		var min_x:Float = Math.max( r1.min.x, r2.min.x );
		var max_x:Float = Math.min( r1.max.x, r2.max.x );
		var min_y:Float = Math.max( r1.min.y, r2.min.y );
		var max_y:Float = Math.min( r1.max.y, r2.max.y );

		var span_x:Float = max_x - min_x;
		var span_y:Float = max_y - min_y;

		if( span_x > 0 )									// overlap x-axis?
		{
			if( r2.min.y >= r1.max.y ) 						// r2 is below r1
			{
				a.y = r1.max.y;
				b.y = r2.min.y;
			}
			else											// r2 is above r1
			{
				a.y = r1.min.y;
				b.y = r2.max.y;
			}

			a.x = b.x = min_x + span_x * 0.5;
		}
		else if( span_y > 0 )								// overlap y-axis?
		{
			if( r2.min.x >= r1.max.x ) 						// r2 is right to r1
			{
				a.x = r1.max.x;
				b.x = r2.min.x;
			}
			else											// r2 is left to r1
			{
				a.x = r1.min.x;
				b.x = r2.max.x;
			}

			a.y = b.y = min_y + span_y * 0.5;
		}
		else												// no overlap
		{
			var c_distance_min:Float = Limit.FLOAT_MAX;

			var c1_min:Vector2 = new Vector2();
			var c2_min:Vector2 = new Vector2();

			var c1r:Vector2 = new Vector2( 0, 0 );
			var c2r:Vector2 = new Vector2( 1, 1 );

			for( j in 0...4 )
			{
				if( j % 2 == 0 )
				{
					c1r.x = (c1r.x + 1) % 2;
					c1r.y = (c1r.y + 1) % 2;
					c2r.x = (c2r.x + 1) % 2;
					c2r.y = (c2r.y + 1) % 2;
				}

				if( j % 2 == 1 )
				{
					c1r.y = (c1r.y + 1) % 2;
					c2r.y = (c2r.y + 1) % 2;
				}

				a = r1.getPoint( c1r, a );
				b = r2.getPoint( c2r, b );

				var distance:Float = Trigonometry.calculateDistanceVector2( a, b, mode );

				if( distance < c_distance_min )
				{
					c_distance_min = distance;

					c1_min = Vector2.clone( a, c1_min );
					c2_min = Vector2.clone( b, c2_min );
				}
			}

			a = c1_min;
			b = c2_min;
		}

		// ------------------- //

		if( output == null || output.length < 2 )
			output = new Vector<Vector2>( 2 );

		var result:Vector<Vector2> = output;
			result[0] = a;
			result[1] = b;

		return result;
	}
}

/**
 *
 */
enum DistanceMethod
{
	EULER;
	MANHATTEN;
}
