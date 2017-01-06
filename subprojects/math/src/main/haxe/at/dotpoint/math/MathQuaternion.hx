package at.dotpoint.math;

import at.dotpoint.math.axis.AxisEuler;
import at.dotpoint.math.matrix.IMatrix33;
import at.dotpoint.math.matrix.Matrix33;
import at.dotpoint.math.quaternion.EulerRotation;
import at.dotpoint.math.quaternion.IQuaternion;
import at.dotpoint.math.quaternion.Quaternion;
import at.dotpoint.math.vector.IVector3;
import at.dotpoint.math.vector.Vector3;

/**
 * ...
 * @author RK
 */
class MathQuaternion 
{

	/**
	 * copies this instance into a new quaternion instance
	 *
	 * @param	from	quaternion to copy all values from (including homogenous w component)
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	inline public static function clone( from:IQuaternion, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		output.x = from.x;
		output.y = from.y;
		output.z = from.z;
		output.w = from.w;

		return output;
	}

	/**
	 * sets the given components to this quaternion
	 *
	 * @param	a	target quaternion
	 * @param	x	imaginary x component
	 * @param	y	imaginary y component
	 * @param	z	imaginary z component
	 * @param	w	real w component
	 * @return 		given quaternion 'a' for chaining
	 */
	inline public static function set( a:IQuaternion, x:Float, y:Float, z:Float, w:Float ):IQuaternion
	{
		a.x = x;
		a.y = y;
		a.z = z;
		a.w = w;

		return a;
	}
	
	// ************************************************************************ //
	// unary operations
	// ************************************************************************ //

	/**
	 * [x:0,y:0,z:0,w:1]
	 * 
	 * @param	a	target quaternion
	 * @return 		given quaternion 'a' for chaining
	 */
	inline public static function toIdentity( a:IQuaternion ):IQuaternion
	{
		a.x = 0;
		a.y = 0;
		a.z = 0;
		a.w = 1;
		
		return a;
	}

	/**
	 * conjungates (*-1) the imaginary components x,y,z of this quaternion
	 * 
	 * @param	a	target quaternion
	 * @return 		given quaternion 'a' for chaining
	 */
	inline public static function conjugate( a:IQuaternion ):IQuaternion
	{
		a.x = -a.x;
		a.y = -a.y;
		a.z = -a.z;
		
		return a;
	}

	/**
	 * conjungates (imaginary components) and normalizes the quaternion
	 * 
	 * @param	a	target quaternion
	 * @return 		given quaternion 'a' for chaining
	 */
	inline public static function invert( a:IQuaternion ):IQuaternion
	{
		var l:Float = MathQuaternion.lengthSq( a );
		
		if( l == 0 ) 
			return a;
 
		var k:Float = 1. / l;

		MathQuaternion.conjugate( a );

		a.x *= k;
		a.y *= k;
		a.z *= k;
		a.w *= k;
		
		return a;
	}
	
	/**
	 * rescales each component between 0 and 1 without changing its ratio to each other so
	 * the length of the quaternion is 1. if the lenght is zero, nothing will happen.
	 * does include real w component.
	 *
	 * @param	a	quaternion to normalize - this will change the given quaternion
	 * @return given quaternion 'a' for chaining
	 */
	inline public static function normalize( a:IQuaternion ):IQuaternion
	{
		var l:Float = MathQuaternion.length( a );

		if ( l == 0 )
			return a;

		var k:Float = 1. / l;

		a.x *= k;
		a.y *= k;
		a.z *= k;
		a.w *= k;

		return a;
	}

	/**
	 * squareroot(x^2 + y^2 + z^2) of the given quaternion.
	 * does include real w component.
	 *
	 * @return length of the quaternion
	 */
	inline public static function length( a:IQuaternion ):Float
	{
		return Math.sqrt( a.x * a.x + a.y * a.y + a.z * a.z + a.w * a.w );
	}

	/**
	 * x^2 + y^2 + z^2 (no squareroot) of the given quaternion.
	 * does include real w component.
	 *
	 * @return squared length of the quaternion
	 */
	inline public static function lengthSq( a:IQuaternion ):Float
	{
		return a.x * a.x + a.y * a.y + a.z * a.z + a.w * a.w;
	}	
	
	// ************************************************************************ //
	// Axis (Euler)
	// ************************************************************************ //

	/**
	 * 
	 */
	@:dox(hide)
	//
	public static function getAxis( a:IQuaternion, axis:AxisEuler, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		switch( axis )
		{
			case AxisEuler.X:
			{
				var fTy = 2.0 * a.y;
				var fTz = 2.0 * a.z;

				var fTwy = fTy * a.w;
				var fTwz = fTz * a.w;
				var fTxy = fTy * a.x;
				var fTxz = fTz * a.x;
				var fTyy = fTy * a.y;
				var fTzz = fTz * a.z;

				output.x = 1 - (fTyy + fTzz);
				output.y = fTxy - fTwz;
				output.z = fTxz + fTwy;
			}

			case AxisEuler.Y:
			{
				var fTx = 2.0 * a.x;
				var fTy = 2.0 * a.y;
				var fTz = 2.0 * a.z;

				var fTwx = fTx * a.w;
				var fTwz = fTz * a.w;
				var fTxx = fTx * a.x;
				var fTxy = fTy * a.x;
				var fTyz = fTz * a.y;
				var fTzz = fTz * a.z;

				output.x = fTxy + fTwz;
				output.y = 1 - (fTxx + fTzz);
				output.z = fTyz - fTwx;
			}

			case AxisEuler.Z:
			{
				var fTx = 2.0 * a.x;
				var fTy = 2.0 * a.y;
				var fTz = 2.0 * a.z;

				var fTwx = fTx * a.w;
				var fTwy = fTy * a.w;
				var fTxx = fTx * a.x;
				var fTxz = fTz * a.x;
				var fTyy = fTy * a.y;
				var fTyz = fTz * a.y;

				output.x = fTxz - fTwy;
				output.y = fTyz + fTwx;
				output.z = 1 - (fTxx + fTyy);
			}
		}

		return output;
	}

	/**
	 *
	 */
	public static function multiplyVector( a:IQuaternion, b:IVector3, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		// ------------------ //

		var fTx = 2.0 * a.x;
		var fTy = 2.0 * a.y;
		var fTz = 2.0 * a.z;

		var fTxx = fTx * a.x; // 4
		var fTyy = fTy * a.y; // 5
		var fTzz = fTz * a.z; // 6

		var fTyx = fTy * a.x; // 7
		var fTzx = fTz * a.x; // 8
		var fTzy = fTz * a.y; // 9

		var fTxw = fTx * a.w; // 10
		var fTyw = fTy * a.w; // 11
		var fTzw = fTz * a.w; // 12

		// ------------------ //

		output.x = (1.0 - (fTyy + fTzz)) * b.x + (fTyx - fTzw) * b.y + (fTzx + fTyw) * b.z;
		output.y = (fTyx + fTzw) * b.x + (1.0 - (fTxx + fTzz)) * b.y + (fTzy - fTxw) * b.z;
		output.z = (fTzx - fTzz) * b.x + (fTzy + fTxw) * b.y + (1.0 - (fTxx + fTyy)) * b.z;

		return output;
	}

	// ************************************************************************ //
	// static Operations
	// ************************************************************************ //

	/**
	 * adds each component together (a+b). communtative. output can be an input instance.
	 *
	 * @param	a		quaternion to use the values from
	 * @param	b		quaternion to use the values from
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public static function add( a:IQuaternion, b:IQuaternion, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		output.x = a.x + b.x;
		output.y = a.y + b.y;
		output.z = a.z + b.z;
		output.w = a.w + b.w;

		return output;
	}

	/**
	 * substracts component values from a with values from b (a-b). communtative. output can be an input instance.
	 * does include real w component.
	 *
	 * @param	a		quaternion to use the values from
	 * @param	b		quaternion to use the values from
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public static function subtract( a:IQuaternion, b:IQuaternion, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		output.x = a.x - b.x;
		output.y = a.y - b.y;
		output.z = a.z - b.z;
		output.w = a.w - b.w;

		return output;
	}

	/**
	 * multiplies component values from a with a scalar value. output can be an input instance.
	 * does include real w component.
	 *
	 * @param	a		quaternion to use the values from
	 * @param	scalar	factor to multiply 'a' with
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public static function scale( a:IQuaternion, scalar:Float, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		output.x = a.x * scalar;
		output.y = a.y * scalar;
		output.z = a.z * scalar;
		output.w = a.w * scalar;

		return output;
	}

	/**
	 * calculates the product of 2 quaternions. not communtative (a*b != b*a). output can be an input instance
	 * (creates an internal copy of input if necessary). can be used to compose 2 quaternions together.
	 * does include real w component.
	 *
	 * @param	a		quaternions to use the values from
	 * @param	b		quaternions to use the values from
	 * @param	output 	optional quaternions the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternions or a new one with the computational result
	 */
	public static function multiply( a:IQuaternion, b:IQuaternion, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		else if( output == a ) 	a = new Quaternion( a.x, a.y, a.z, a.w );
		else if( output == b ) 	b = new Quaternion( b.x, b.y, b.z, b.w );

		// ------------------ //

		output.x = a.w * b.x + a.x * b.w + a.y * b.z - a.z * b.y; // cross - dot (to remove real)
		output.y = a.w * b.y - a.x * b.z + a.y * b.w + a.z * b.x; // short version
		output.z = a.w * b.z + a.x * b.y - a.y * b.x + a.z * b.w;
		output.w = a.w * b.w - a.x * b.x - a.y * b.y - a.z * b.z;

		return output;
	}

	/**
	  * dotproduct between a and b; calculates the cosine angle between a and b
	  * does include real w component. 
	  *
	  * @param	a 	quaternions to use the values from
	  * @param	b	quaternions to use the values from
	  * @return 	dot product between a and b, eg: cosine angle between a and b
	  */
	public static function dot( a:Quaternion, b:Quaternion ):Float
	{
		return a.x * b.x + a.y * b.y + a.z * b.z + a.w * b.w;
	}

	// ************************************************************************ //
	// Rotation Axis:
	// ************************************************************************ //

	/**
	 * set rotation around a vector. can be used for yaw, pitch, roll rotations.
	 *
	 * @param 	axis	a vector the rotation should be around
	 * @param	angle	The angle in radians of the rotation.
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public static function setAxisAngle( axis:IVector3, radians:Float, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		// ----------- //

		radians = radians * 0.5;

		var sin_a:Float = Math.sin( radians ) / MathVector3.length( axis );
		var cos_a:Float = Math.cos( radians );

		output.x = axis.x * sin_a;
		output.y = axis.y * sin_a;
		output.z = axis.z * sin_a;
		output.w = cos_a;

		return output;
	}

	// ************************************************************************ //
	// Rotation Euler:
	// ************************************************************************ //

	/**
	 * although euler rotations seem more intuitive than quaternions, they come with their fair share of problems.
	 * avoid this method when possible but more important do not use it over a length of time since gimbal lock
	 * and the order of how how the rotation is applied for each axis has a great effect on the outcome and might
	 * be wildly different than expected.
	 *
	 * @param	euler	rotation in radian for each axis
	 * @param	order 	optional order in which the rotation will be applied. default: YXZ
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided	 * 
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public static function setEuler( euler:IVector3, ?order:EulerRotation, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		if( order == null )
			order = EulerRotation.YXZ;

		// ----------- //

		var s1:Float = Math.sin( euler.x * 0.5 );
		var c1:Float = Math.cos( euler.x * 0.5 );
		var s2:Float = Math.sin( euler.y * 0.5 );
		var c2:Float = Math.cos( euler.y * 0.5 );
		var s3:Float = Math.sin( euler.z * 0.5 );
		var c3:Float = Math.cos( euler.z * 0.5 );

		switch( order )
		{
			case EulerRotation.YXZ:
			{
				output.x = s1 * c2 * c3 + c1 * s2 * s3;
				output.y = c1 * s2 * c3 - s1 * c2 * s3;
				output.z = c1 * c2 * s3 - s1 * s2 * c3;
				output.w = c1 * c2 * c3 + s1 * s2 * s3;
			}

			case EulerRotation.XYZ:
			{
				output.x = s1 * c2 * c3 + c1 * s2 * s3;
				output.y = c1 * s2 * c3 - s1 * c2 * s3;
				output.z = c1 * c2 * s3 + s1 * s2 * c3;
				output.w = c1 * c2 * c3 - s1 * s2 * s3;
			}

			case EulerRotation.ZXY:
			{
				output.x = s1 * c2 * c3 - c1 * s2 * s3;
				output.y = c1 * s2 * c3 + s1 * c2 * s3;
				output.z = c1 * c2 * s3 + s1 * s2 * c3;
				output.w = c1 * c2 * c3 - s1 * s2 * s3;
			}

			case EulerRotation.ZYX:
			{
				output.x = s1 * c2 * c3 - c1 * s2 * s3;
				output.y = c1 * s2 * c3 + s1 * c2 * s3;
				output.z = c1 * c2 * s3 - s1 * s2 * c3;
				output.w = c1 * c2 * c3 + s1 * s2 * s3;
			}

			case EulerRotation.YZX:
			{
				output.x = s1 * c2 * c3 + c1 * s2 * s3;
				output.y = c1 * s2 * c3 + s1 * c2 * s3;
				output.z = c1 * c2 * s3 - s1 * s2 * c3;
				output.w = c1 * c2 * c3 - s1 * s2 * s3;
			}

			case EulerRotation.XZY:
			{
				output.x = s1 * c2 * c3 - c1 * s2 * s3;
				output.y = c1 * s2 * c3 - s1 * c2 * s3;
				output.z = c1 * c2 * s3 + s1 * s2 * c3;
				output.w = c1 * c2 * c3 + s1 * s2 * s3;
			}
		}

		return output;
	}

	/**
	 * calculates an euler representation of the quaternion returning a vector
	 * storing the rotation angle for each axis in radians (in euler space: orthogonal axis)
	 *
	 * @param	input	quaternion to calculate the euler rotation values from
	 * @param	output 	optional vector the result will be stored into or new instance if none provided
	 * @return			provided `output` vector or a new one with the computational result
	 */
	public static function toEuler( input:IQuaternion, ?output:IVector3 ):IVector3
	{
		if( output == null )
			output = new Vector3();

		// ----------- //

		var test:Float = input.x * input.y + input.z * input.w;

		if (test > 0.499) 	// singularity at north pole
		{
			output.x = 2 * Math.atan2(input.x, input.w);
			output.y = Math.PI / 2;
			output.z = 0;
		}
		if (test < -0.499) 	// singularity at south pole
		{
			output.x = -2 * Math.atan2(input.x, input.w);
			output.y = -Math.PI / 2;
			output.z = 0;
		}
		else
		{
			var sqx:Float = input.x * input.x;
			var sqy:Float = input.y * input.y;
			var sqz:Float = input.z * input.z;

			output.x = Math.atan2(2 * input.y * input.w - 2 * input.x * input.z , 1 - 2 * sqy - 2 * sqz);
			output.z = Math.atan2(2 * input.x * input.w - 2 * input.y * input.z , 1 - 2 * sqx - 2 * sqz);
			output.y = Math.asin(2 * test);
		}

		return output;
	}

	// ************************************************************************ //
	// Rotation Matrix:
	// ************************************************************************ //

	/**
	 * calculates a 3x3 rotation matrix from the given quaternion. the given input quaternion
	 * will be copied and normalized. you can provide an 4x4 matrix as `output` and only the upper
	 * 3x3 components will be set, without resetting the other components.
	 *
	 * @param	input	quaternion to calculate the matrix from
	 * @param	output 	optional matrix the result will be stored into or new instance if none provided
	 * @return			provided `output` matrix or a new one with the computational result
	 */
	public static function toMatrix( input:IQuaternion, ?output:IMatrix33 ):IMatrix33
	{
		if( output == null )
			output = new Matrix33();

		input = new Quaternion( input.x, input.y, input.z, input.w );
		MathQuaternion.normalize( input );

		// ------------ //

		var xs:Float = input.x + input.x;
		var ys:Float = input.y + input.y;
		var zs:Float = input.z + input.z;

		var wx:Float = input.w * xs;
		var wy:Float = input.w * ys;
		var wz:Float = input.w * zs;

		var xx:Float = input.x * xs;
		var xy:Float = input.x * ys;
		var xz:Float = input.x * zs;

		var yy:Float = input.y * ys;
		var yz:Float = input.y * zs;

		var zz:Float = input.z * zs;

		// ------------ //

		output.m11 = 1 - (yy + zz);
		output.m21 = xy - wz;
		output.m31 = xz + wy;

		output.m12 = xy + wz;
		output.m22 = 1 - (xx + zz);
		output.m32 = yz - wx;

		output.m13 = xz - wy;
		output.m23 = yz + wx;
		output.m33 = 1 - (xx + yy);

		return output;
	}

	/**
	 * caclulates a quaternion from the given rotation matrix. you can provide an 4x4 matrix as 'input' and
	 * only the upper 3x3 components will be read.
	 *
	 * @param	input	matrix to calculate the quaternion from
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public static function setMatrix( input:IMatrix33, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		// ----------- //

		var w:Float = (  input.m11 + input.m22 + input.m33 + 1.0 ) / 4.0;
		var x:Float = (  input.m11 - input.m22 - input.m33 + 1.0 ) / 4.0;
		var y:Float = ( -input.m11 + input.m22 - input.m33 + 1.0 ) / 4.0;
		var z:Float = ( -input.m11 - input.m22 + input.m33 + 1.0 ) / 4.0;

		if( w < 0.0 ) w = 0.0;
		if( x < 0.0 ) x = 0.0;
		if( y < 0.0 ) y = 0.0;
		if( z < 0.0 ) z = 0.0;

		w = Math.sqrt( w );
		x = Math.sqrt( x );
		y = Math.sqrt( y );
		z = Math.sqrt( z );

		if( w >= x && w >= y && w >= z )
		{
			x *= MathBasic.getSign( input.m23 - input.m32 );
			y *= MathBasic.getSign( input.m31 - input.m13 );
			z *= MathBasic.getSign( input.m12 - input.m21 );
		}
		else if( x >= w && x >= y && x >= z )
		{
			w *= MathBasic.getSign( input.m23 - input.m32 );
			y *= MathBasic.getSign( input.m12 + input.m21 );
			z *= MathBasic.getSign( input.m31 + input.m13 );
		}
		else if( y >= w && y >= x && y >= z )
		{
			w *= MathBasic.getSign( input.m31 - input.m13 );
			x *= MathBasic.getSign( input.m12 + input.m21 );
			z *= MathBasic.getSign( input.m23 + input.m32 );
		}
		else if( z >= w && z >= x && z >= y )
		{
			w *= MathBasic.getSign( input.m12 - input.m21 );
			x *= MathBasic.getSign( input.m13 + input.m31 );
			y *= MathBasic.getSign( input.m23 + input.m32 );
		}
		else
		{
			throw "setMatrix implementation is bollocks";
		}

		// ----------- //

		output.x = x;
		output.y = y;
		output.z = z;
		output.w = w;

		MathQuaternion.normalize( output );

		// ----------- //

		return output;
	}

	// ************************************************************************ //
	// Rotation yaw/pitch/roll:
	// ************************************************************************ //

	/**
	 *
	 */
	@:dox(hide)
	//
	public function getYaw( q:IQuaternion ):Float
	{
		return Math.asin( -2. * (q.x * q.z - q.y * q.w) );
	}

	/**
	 *
	 */
	@:dox(hide)
	//
	public function getPitch( q:IQuaternion ):Float
	{
		return Math.atan2( 2.*(q.y * q.z + q.x * q.w), q.w * q.w - q.x * q.x - q.y * q.y + q.z * q.z );
	}

	/**
	 *
	 */
	@:dox(hide)
	//
	public function getRoll( q:IQuaternion ):Float
	{
		return Math.atan2( 2.*(q.x * q.y + q.z * q.w), q.w * q.w + q.x * q.x - q.y * q.y - q.z * q.z );
	}

	// ************************************************************************ //
	// Rotation QUaternion
	// ************************************************************************ //

	/**
	 *
	 */
	public static function slerp( a:IQuaternion, b:IQuaternion, ?alpha:Float = 0.5, ?output:IQuaternion ):IQuaternion
	{
		if( output == null )
			output = new Quaternion();

		// ------------------------ //

		var ax:Float = a.x;
		var ay:Float = a.y;
		var az:Float = a.z;
		var aw:Float = a.w;

		var bx:Float = b.x;
		var by:Float = b.y;
		var bz:Float = b.z;
		var bw:Float = b.w;

		// ------------------------ //

		var angle:Float = aw * bw + ax * bx + ay * by + az * bz;

		if (angle < 0.0)
		{
			ax *= -1.0;
			ay *= -1.0;
			az *= -1.0;
			aw *= -1.0;

			angle *= -1.0;
		}

		// ------------------------ //

		var scale:Float 	= 0;
		var invscale:Float 	= 0;

		if( (angle + 1.0) > MathBasic.ZERO_TOLERANCE ) 		 // Take the shortest path
		{
			if( (1.0 - angle) >= MathBasic.ZERO_TOLERANCE )  // spherical interpolation
			{
				var theta:Float 		= Math.acos( angle );
				var invsintheta:Float 	= 1.0 / Math.sin( theta );

				scale 	 = Math.sin( theta * (1.0-alpha) )  * invsintheta;
				invscale = Math.sin( theta * alpha ) 		* invsintheta;
			}
			else 											 // linear interploation
			{
				scale 	 = 1.0 - alpha;
				invscale = alpha;
			}
		}
		else 												 // long way to go...
		{
			by = -ay;
			bx =  ax;
			bw = -aw;
			bz =  az;

			scale 	 = Math.sin( Math.PI * (0.5 - alpha) );
			invscale = Math.sin( Math.PI * alpha );
		}

		// ------------------------ //

		output.x = scale * ax + invscale * bx;
		output.y = scale * ay + invscale * by;
		output.z = scale * az + invscale * bz;
		output.w = scale * aw + invscale * bw;

		return output;
	}
	
	// ************************************************************************ //
	// etc
	// ************************************************************************ //
	
	/**
	 * compares each component for equality within ZERO_TOLERANCE
	 * does include real w component.
	 * 
	 * @param	a		quaternion to use the values from
	 * @param	b		quaternion to use the values from
	 * @return			true if both quaternion objects are the same
	 */
	public static function isEqual( a:IQuaternion, b:IQuaternion ):Bool
	{
		if ( !MathBasic.isEqual(a.x, b.x) ) return false;
		if ( !MathBasic.isEqual(a.y, b.y) ) return false;
		if ( !MathBasic.isEqual(a.z, b.z) ) return false;
		if ( !MathBasic.isEqual(a.w, b.w) ) return false;

		return true;
	}
}