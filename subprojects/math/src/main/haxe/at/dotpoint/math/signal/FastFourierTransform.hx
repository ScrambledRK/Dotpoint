package haxe.at.dotpoint.math.signal;

import haxe.at.dotpoint.math.MathUtil;
import haxe.at.dotpoint.math.vector.IVector2;
import haxe.at.dotpoint.math.vector.IVector3;
import haxe.ds.Vector;

/**
 *
 */
class FastFourierTransform
{

	private var m_size:Int;
	private var m_passes:Int;

	private var m_fsize:Float;
	private var m_butterflyLookupTable:Vector<Float>;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new()
	{
		//;
	}

	//
	public function initialize( size:Int ):Void
	{
		if( !MathUtil.isPowerOfTwo( size ) )
			throw "size not power of 2";

		this.m_size   = size;
		this.m_fsize  = size;
		this.m_passes = Std.int( Math.log( this.m_fsize ) / Math.log( 2.0 ) );

		this.computeButterflyLookupTable();
	}

	// ************************************************************************ //
	// Initial LookupTable
	// ************************************************************************ //

	/**
	 *
	 */
	private function computeButterflyLookupTable():Void
	{
		this.m_butterflyLookupTable = new Vector<Float>( this.m_size * this.m_passes * 4 );

		for( i in 0...this.m_passes )
		{
			var nBlocks:Int 	= Std.int( Math.pow( 2, this.m_passes - 1 - i ) );
			var nHInputs:Int 	= Std.int( Math.pow( 2, i ) );

			for( j in 0...nBlocks )
			{
				for( k in 0...nHInputs )
				{
					var i1:Int = 0;
					var i2:Int = 0;
					var j1:Int = 0;
					var j2:Int = 0;

					if( i == 0 )
					{
						i1 = j * nHInputs * 2 + k;
						i2 = j * nHInputs * 2 + nHInputs + k;
						j1 = this.bitReverse( i1 );
						j2 = this.bitReverse( i2 );
					}
					else
					{
						i1 = j * nHInputs * 2 + k;
						i2 = j * nHInputs * 2 + nHInputs + k;
						j1 = i1;
						j2 = i2;
					}

					// ---------------- //

					var omega:Float = 2.0 * Math.PI * ( k * nBlocks ) / this.m_fsize;

					var wr:Float = Math.cos( omega );
					var wi:Float = Math.sin( omega );

					var offset1:Int = Std.int( 4 * (i1 + i * this.m_size) );
					var offset2:Int = Std.int( 4 * (i2 + i * this.m_size) );

					this.m_butterflyLookupTable[offset1 + 0] = j1;
					this.m_butterflyLookupTable[offset1 + 1] = j2;
					this.m_butterflyLookupTable[offset1 + 2] = wr;
					this.m_butterflyLookupTable[offset1 + 3] = wi;

					this.m_butterflyLookupTable[offset2 + 0] = j1;
					this.m_butterflyLookupTable[offset2 + 1] = j2;
					this.m_butterflyLookupTable[offset2 + 2] = -wr;
					this.m_butterflyLookupTable[offset2 + 3] = -wi;
				}
			}
		}
	}

	/**
	 *
	 * @param	i
	 * @return
	 */
	private function bitReverse( i:Int ):Int
	{
		var j:Int 	= i;
		var Sum:Int = 0;
		var W:Int 	= 1;
		var M:Int	= Std.int(this.m_size / 2);

		while( M != 0 )
		{
			j = (( i & M ) > M - 1) ? 1 : 0;

			Sum += j * W;

			W *= 2;
			M = Std.int( M / 2 );
		}

		return Sum;
	}

	// ************************************************************************ //
	// PerformFFT Vector2
	// ************************************************************************ //

	/**
	 * FFT with Vector2
	 */
	public function performFFT2( startIdx:Int, data:Vector<Vector<IVector2>> ):Int
	{
		var idx:Int = 0;
		var idx1:Int = 0;
		var bftIdx:Int = 0;

		var Xb:Int = 0;
		var Yb:Int = 0;

		var wx:Float = 0;
		var wy:Float = 0;

		var i:Int = 0;
		var j:Int = startIdx;

		// ----------------------- //

		while( i < this.m_passes )
		{
			idx	 = j % 2;
			idx1 = ( j + 1 ) % 2;

			for( x in 0...this.m_size )
			{
				for( y in 0...this.m_size )
				{
					bftIdx = 4 * ( x + i * this.m_size );

					Xb = Std.int( this.m_butterflyLookupTable[ bftIdx + 0 ] );
					Yb = Std.int( this.m_butterflyLookupTable[ bftIdx + 1 ] );
					wx = this.m_butterflyLookupTable[ bftIdx + 2 ];
					wy = this.m_butterflyLookupTable[ bftIdx + 3 ];

					this.setFFT2( wx, wy, data[idx1][ Xb + y * this.m_size ], data[idx1][ Yb + y * this.m_size ], data[idx][ x + y * this.m_size ] );
				}
			}

			i++;
			j++;
		}

		// ----------------------- //

		i = 0;

		while( i < this.m_passes )
		{
			idx	 = j % 2;
			idx1 = ( j + 1 ) % 2;

			for( x in 0...this.m_size )
			{
				for( y in 0...this.m_size )
				{
					bftIdx = 4 * ( y + i * this.m_size );

					Xb = Std.int( this.m_butterflyLookupTable[ bftIdx + 0 ] );
					Yb = Std.int( this.m_butterflyLookupTable[ bftIdx + 1 ] );
					wx = this.m_butterflyLookupTable[ bftIdx + 2 ];
					wy = this.m_butterflyLookupTable[ bftIdx + 3 ];

					this.setFFT2( wx, wy, data[idx1][ x + Xb * this.m_size ], data[idx1][ x + Yb * this.m_size ], data[idx][ x + y * this.m_size ] );
				}
			}

			i++;
			j++;
		}

		return idx;
	}

	/**
	 * Performs one FFT on a complex number
	 */
	inline private function setFFT2( wx:Float, wy:Float, input1:IVector2, input2:IVector2, output:IVector2 ):Void
	{
		output.x = input1.x + (wx * input2.x - wy * input2.y);
		output.y = input1.y + (wy * input2.x + wx * input2.y);
	}

	// ************************************************************************ //
	// PerformFFT Vector4
	// ************************************************************************ //

	/**
	 * FFT with Vector2
	 */
	public function performFFT4( startIdx:Int, data:Vector<Vector<IVector3>> ):Int
	{
		var idx:Int = 0;
		var idx1:Int = 0;
		var bftIdx:Int = 0;

		var Xb:Int = 0;
		var Yb:Int = 0;

		var wx:Float = 0;
		var wy:Float = 0;

		var i:Int = 0;
		var j:Int = startIdx;

		// ----------------------- //

		while( i < this.m_passes )
		{
			idx	 = j % 2;
			idx1 = ( j + 1 ) % 2;

			for( x in 0...this.m_size )
			{
				for( y in 0...this.m_size )
				{
					bftIdx = 4 * ( x + i * this.m_size );

					Xb = Std.int( this.m_butterflyLookupTable[ bftIdx + 0 ] );
					Yb = Std.int( this.m_butterflyLookupTable[ bftIdx + 1 ] );
					wx = this.m_butterflyLookupTable[ bftIdx + 2 ];
					wy = this.m_butterflyLookupTable[ bftIdx + 3 ];

					this.setFFT4( wx, wy, data[idx1][ Xb + y * this.m_size ], data[idx1][ Yb + y * this.m_size ], data[idx][ x + y * this.m_size ] );
				}
			}

			i++;
			j++;
		}

		// ----------------------- //

		i = 0;

		while( i < this.m_passes )
		{
			idx	 = j % 2;
			idx1 = ( j + 1 ) % 2;

			for( x in 0...this.m_size )
			{
				for( y in 0...this.m_size )
				{
					bftIdx = 4 * ( y + i * this.m_size );

					Xb = Std.int( this.m_butterflyLookupTable[ bftIdx + 0 ] );
					Yb = Std.int( this.m_butterflyLookupTable[ bftIdx + 1 ] );
					wx = this.m_butterflyLookupTable[ bftIdx + 2 ];
					wy = this.m_butterflyLookupTable[ bftIdx + 3 ];

					this.setFFT4( wx, wy, data[idx1][ x + Xb * this.m_size ], data[idx1][ x + Yb * this.m_size ], data[idx][ x + y * this.m_size ] );
				}
			}

			i++;
			j++;
		}

		return idx;
	}

	/**
	 * Performs one FFT on a complex number
	 */
	inline private function setFFT4( wx:Float, wy:Float, input1:IVector3, input2:IVector3, output:IVector3 ):Void
	{
		output.x = input1.x + (wx * input2.x - wy * input2.y);
		output.y = input1.y + (wy * input2.x + wx * input2.y);
		output.z = input1.z + (wx * input2.z - wy * input2.w);
		output.w = input1.w + (wy * input2.z + wx * input2.w);
	}
}