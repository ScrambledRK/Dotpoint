package at.dotpoint.math.vector;

import at.dotpoint.math.MathUtil;

/**
 * unit-quaternion is a Vector4 like object for interpolateable and gimbal-lock-free rotations;
 * note - this class does not guarantee to be a unit quaternion but some methodes may rely on it.
 */
class Quaternion implements IQuaternion
{

	/** imaginary x component */
	@:isVar public var x(get, set):Float;

	/** imaginary y component */
	@:isVar public var y(get, set):Float;

	/** imaginary z component */
	@:isVar public var z(get, set):Float;

	/** real x component */
	@:isVar public var w(get, set):Float;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * creates a new Quaternion instance with the provided optional arguments.
	 * by default: 0,0,0,1
	 *
	 * @param	x	imaginary x component
	 * @param	y	imaginary y component
	 * @param	z	imaginary z component
	 * @param	w	real w component
	 */
	public function new( x:Float = 0, y:Float = 0, z:Float = 0, w:Float = 1 )
	{
		this.x = x;
		this.y = y;
		this.z = z;
		this.w = w;
	}

	/**
	 * copies this instance into a new quaternion instance
	 *
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public function clone<T:IQuaternion>( ?output:T ):T
	{
		if( output == null )
			output = cast new Quaternion();

		output.x = this.x;
		output.y = this.y;
		output.z = this.z;
		output.w = this.w;

		return output;
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 * X
	 */
	inline private function get_x():Float { return this.x; }

	inline private function set_x( value:Float ):Float
	{
		return this.x = value;
	}

	/**
	 * Y
	 */
	inline private function get_y():Float { return this.y; }

	inline private function set_y( value:Float ):Float
	{
		return this.y = value;
	}

	/**
	 * Z
	 */
	inline private function get_z():Float { return this.z; }

	inline private function set_z( value:Float ):Float
	{
		return this.z = value;
	}

	/**
	 * W
	 */
	inline private function get_w():Float { return this.w; }

	inline private function set_w( value:Float ):Float
	{
		return this.w = value;
	}

	// ************************************************************************ //
	// Methodes
	// ************************************************************************ //

	/**
	 * [x:0,y:0,z:0,w:1]
	 */
	public function toIdentity():Void
	{
		this.x = 0;
		this.y = 0;
		this.z = 0;
		this.w = 1;
	}

	/**
	 * conjungates (*-1) the imaginary components x,y,z of this quaternion
	 */
	public function conjugate():Void
	{
		this.x = -this.x;
		this.y = -this.y;
		this.z = -this.z;
	}

	/**
	 * conjungates (imaginary components) and normalizes the quaternion
	 */
	public function invert():Void
	{
		var l:Float = this.lengthSq();
		if( l == 0 ) return;

		var k:Float = 1. / l;

		this.conjugate();

		this.x *= k;
		this.y *= k;
		this.z *= k;
		this.w *= k;
	}

	/**
	 * rescales each component between 0 and 1 without changing its ratio to each other so
	 * the length of the vector/quaternion is 1. if the lenght is zero, it will set this
	 * quaternion to identity (0,0,0,1).
	 */
	public function normalize():Void
	{
		var l:Float = this.length();

		if( l == 0 )
		{
			this.toIdentity();
			return;
		}

		var k:Float = 1. / l;

		this.x *= k;
		this.y *= k;
		this.z *= k;
		this.w *= k;
	}

	/**
	 * squareroot of x^2 + y^2 + z^2 + w^2
	 *
	 * @return length of the vector/quaternion
	 */
	inline public function length():Float
	{
		return Math.sqrt( this.lengthSq() );
	}

	/**
	 * x^2 + y^2 + z^2 + w^2 (no squareroot)
	 *
	 * @return squared length of the vector/quaternion
	 */
	inline public function lengthSq():Float
	{
		return this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w;
	}

	// ************************************************************************ //
	// Axis (Euler)
	// ************************************************************************ //

	/**
	 * 	output.m11 = 1 - (yy + zz);
		output.m21 = xy - wz;
		output.m31 = xz + wy;

		output.m12 = xy + wz;
		output.m22 = 1 - (xx + zz);
		output.m32 = yz - wx;

		output.m13 = xz - wy;
		output.m23 = yz + wx;
		output.m33 = 1 - (xx + yy);
	 */
	@:dox(hide)
	//
	public static function getAxis<T:IVector3>( a:IQuaternion, axis:Axis, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();

		switch( axis )
		{
			case Axis.X:
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

			case Axis.Y:
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

			case Axis.Z:
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
	public static function multiplyVector<T:IVector3>( a:IQuaternion, b:IVector3, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();

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
	public static function add<T:IQuaternion>( a:IQuaternion, b:IQuaternion, ?output:T ):T
	{
		if( output == null )
			output = cast new Quaternion();

		output.x = a.x + b.x;
		output.y = a.y + b.y;
		output.z = a.z + b.z;
		output.w = a.w + b.w;

		return output;
	}

	/**
	 * substracts component values from a with values from b (a-b). communtative. output can be an input instance.
	 *
	 * @param	a		quaternion to use the values from
	 * @param	b		quaternion to use the values from
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public static function subtract<T:IQuaternion>( a:IQuaternion, b:IQuaternion, ?output:T ):T
	{
		if( output == null )
			output = cast new Quaternion();

		output.x = a.x - b.x;
		output.y = a.y - b.y;
		output.z = a.z - b.z;
		output.w = a.w - b.w;

		return output;
	}

	/**
	 * multiplies component values from a with a scalar value. output can be an input instance.
	 *
	 * @param	a		quaternion to use the values from
	 * @param	scalar	factor to multiply 'a' with
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public static function scale<T:IQuaternion>( a:IQuaternion, scalar:Float, ?output:T ):T
	{
		if( output == null )
			output = cast new Quaternion();

		output.x = a.x * scalar;
		output.y = a.y * scalar;
		output.z = a.z * scalar;
		output.w = a.w * scalar;

		return output;
	}

	/**
	 * calculates the product of 2 quaternions. not communtative (a*b != b*a). output can be an input instance
	 * (creates an internal copy of input if necessary). can be used to compose 2 quaternions together.
	 *
	 * @param	a		quaternions to use the values from
	 * @param	b		quaternions to use the values from
	 * @param	output 	optional quaternions the result will be stored into or new instance if none provided
	 * @return			provided `output` quaternions or a new one with the computational result
	 */
	public static function multiply<T:IQuaternion>( a:IQuaternion, b:IQuaternion, ?output:T ):T
	{
		if( output == null )
			output = cast new Quaternion();

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
	public static function setAxisAngle<T:IQuaternion>( axis:IVector3, radians:Float, ?output:T ):T
	{
		if( output == null )
			output = cast new Quaternion();

		// ----------- //

		radians = radians * 0.5;

		var sin_a:Float = Math.sin( radians ) / axis.length();
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
	 * @param	output 	optional quaternion the result will be stored into or new instance if none provided
	 * @param	order 	optional order in which the rotation will be applied. default: YXZ
	 * @return			provided `output` quaternion or a new one with the computational result
	 */
	public static function setEuler<T:IQuaternion>( euler:IVector3, ?output:T, ?order:EulerRotation ):T
	{
		if( output == null )
			output = cast new Quaternion();

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
	public static function toEuler<T:IVector3>( input:IQuaternion, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();

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
	public static function toMatrix<T:IMatrix33>( input:IQuaternion, ?output:T ):T
	{
		if( output == null )
			output = cast new Matrix33();

		input = new Quaternion( input.x, input.y, input.z, input.w );
		input.normalize();

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
	public static function setMatrix<T:IQuaternion>( input:IMatrix33, ?output:T ):T
	{
		if( output == null )
			output = cast new Quaternion();

		// ----------- //

		var x:Float = (  input.m11 + input.m22 + input.m33 + 1.0 ) / 4.0;
		var y:Float = (  input.m11 - input.m22 - input.m33 + 1.0 ) / 4.0;
		var z:Float = ( -input.m11 + input.m22 - input.m33 + 1.0 ) / 4.0;
		var w:Float = ( -input.m11 - input.m22 + input.m33 + 1.0 ) / 4.0;

		if( x < 0.0 ) x = 0.0;
		if( y < 0.0 ) y = 0.0;
		if( z < 0.0 ) z = 0.0;
		if( w < 0.0 ) w = 0.0;

		x = Math.sqrt( x );
		y = Math.sqrt( y );
		z = Math.sqrt( z );
		w = Math.sqrt( w );

		if( x >= y && x >= z && x >= w )
		{
			y *= MathUtil.getSign( input.m23 - input.m32 );
			z *= MathUtil.getSign( input.m31 - input.m13 );
			w *= MathUtil.getSign( input.m12 - input.m21 );
		}
		else if( y >= x && y >= z && y >= w )
		{
			x *= MathUtil.getSign( input.m23 - input.m32 );
			z *= MathUtil.getSign( input.m12 + input.m21 );
			w *= MathUtil.getSign( input.m31 + input.m13 );
		}
		else if( z >= x && z >= y && z >= w )
		{
			x *= MathUtil.getSign( input.m31 - input.m13 );
			y *= MathUtil.getSign( input.m12 + input.m21 );
			w *= MathUtil.getSign( input.m23 + input.m32 );
		}
		else if( w >= x && w >= y && z >= z )
		{
			x *= MathUtil.getSign( input.m12 - input.m21 );
			y *= MathUtil.getSign( input.m13 + input.m31 );
			z *= MathUtil.getSign( input.m23 + input.m32 );
		}
		else
		{
			throw "setMatrix implementation is bollocks";
		}

		// ----------- //

		output.x = w;	// woops
		output.y = y;
		output.z = z;
		output.w = x;

		output.normalize();

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
	public static function slerp( a:Quaternion, b:Quaternion, ?alpha:Float = 0.5, ?output:Quaternion ):Quaternion
	{
		output = output != null ? output : new Quaternion();

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

		if( (angle + 1.0) > MathUtil.ZERO_TOLERANCE ) 		// Take the shortest path
		{
			if( (1.0 - angle) >= MathUtil.ZERO_TOLERANCE )  // spherical interpolation
			{
				var theta:Float 		= Math.acos( angle );
				var invsintheta:Float 	= 1.0 / Math.sin( theta );

				scale 	 = Math.sin( theta * (1.0-alpha) )  * invsintheta;
				invscale = Math.sin( theta * alpha ) 		* invsintheta;
			}
			else 											// linear interploation
			{
				scale 	 = 1.0 - alpha;
				invscale = alpha;
			}
		}
		else 												// long way to go...
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
	 *
	 * @param	a		quaternion to use the values from
	 * @param	b		quaternion to use the values from
	 * @return			true if both matrix objects are the same
	 */
	public static function isEqual( a:IQuaternion, b:IQuaternion ):Bool
	{
		if ( !MathUtil.isEqual(a.x, b.x) ) return false;
		if ( !MathUtil.isEqual(a.y, b.y) ) return false;
		if ( !MathUtil.isEqual(a.z, b.z) ) return false;
		if ( !MathUtil.isEqual(a.w, b.w) ) return false;

		return true;
	}

	/**
	 * prints each component seperated by ","
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		return "[Quaternion;" + this.x + ", " + this.y + ", " + this.z + ", " + this.w + "]";
	}

}

/**
 *
 */
enum EulerRotation
{
	XYZ;
	YXZ;
	ZXY;
	ZYX;
	YZX;
	XZY;
}