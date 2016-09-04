package at.dotpoint.math.color.transform;

import at.dotpoint.math.vector.IVector3;
import at.dotpoint.math.vector.Quaternion;
import at.dotpoint.math.vector.Vector3;

/**
 * ...
 * @author RK
 */
class ColorTransformHSV implements IColorTransform
{

	private var temp_vector1(default, null):Vector3;	
	private var temp_quaternion1(default,null):Quaternion;
	private var temp_quaternion2(default,null):Quaternion;	
	private var temp_quaternion3(default,null):Quaternion;	
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() 
	{
		this.temp_vector1 = new Vector3( 1, 0, 0 );		
		this.temp_quaternion1 = new Quaternion();
		this.temp_quaternion2 = new Quaternion();
		this.temp_quaternion3 = new Quaternion();
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
	
	/**
	 * 
	 */
	public function toVector<T:IVector3>( value:Int, ?output:T ):T
	{
		return null;
	}
	
	/**
	 * 
	 */
	public function toInt( value:IVector3 ):Int
	{
		return -1;
	}
	
	/**
	 * 
	 */
	public function random<T:IVector3>( ?output:T ):T
	{
		return null;
	}
	
	/**
	 * 
	 */
	public function convert<T:IVector3>( value:IVector3, format:ColorTransformFormat, ?output:T ):T
	{
		switch( format )
		{		
			case ColorTransformFormat.RGB:
				return this.fromRGB( value, output );
			
			default:
				throw format.getName() + "convert to XYZ not supported";
		}
		
		return null;
	}
	
	/**
	 * 
	 */
	public function interpolate<T:IVector3>( a:IVector3, b:IVector3, ?degree:Float = 0.5, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();
		
		var qa:Quaternion = Quaternion.setAxisAngle( this.temp_vector1, a.x, this.temp_quaternion1 );	
		var qb:Quaternion = Quaternion.setAxisAngle( this.temp_vector1, b.x, this.temp_quaternion2 );	
		
		var slerp:Quaternion = Quaternion.slerp( qa, qb, degree, this.temp_quaternion3 );
		
		output.x = 	slerp.getPitch( slerp );
		output.y = 	a.y * ( 1 - degree ) + b.y * ( degree );
		output.z = 	a.z * ( 1 - degree ) + b.z * ( degree );
		
		return output;
	}
	
	/**
	 * 
	 */
	public function distance( a:IVector3, b:IVector3 ):Float
	{
		var qa:Quaternion = Quaternion.setAxisAngle( this.temp_vector1, a.x, this.temp_quaternion1 );	
		var qb:Quaternion = Quaternion.setAxisAngle( this.temp_vector1, b.x, this.temp_quaternion2 );	
		
		var delta:Quaternion = Quaternion.subtract( qb, qa, this.temp_quaternion3 );	
		
		var x:Float = delta.getPitch( delta );
		var y:Float = (a.y - b.y);	
		var z:Float = (a.z - b.z);	
		
		return Math.sqrt( x * x + y * y + z * z );
	}
	
	// ************************************************************************ //
	// convert ...
	// ************************************************************************ //
	
	/**
	 * 
	 * @param	rgb
	 * @param	output
	 * @return
	 */
	private function fromRGB<T:IVector3>( rgb:IVector3, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();
		
		var min:Float = Math.min( rgb.x, Math.min( rgb.y, rgb.z ) );
		var max:Float = Math.max( rgb.x, Math.max( rgb.y, rgb.z ) );
		
		var delta:Float = max - min;
		
		if( delta == 0 )	// grey, no chroma
		{
			output.x = 0;
			output.y = 0;
			output.z = max;
		}
		else				// chromatic
		{
			var d_r:Float = ( ( ( max - rgb.x ) / 6 ) + ( delta / 2 ) ) / delta;
			var d_g:Float = ( ( ( max - rgb.y ) / 6 ) + ( delta / 2 ) ) / delta;
			var d_b:Float = ( ( ( max - rgb.z ) / 6 ) + ( delta / 2 ) ) / delta;
			
			if		( rgb.x == max ) output.x = d_b - d_g;
			else if	( rgb.y == max ) output.x = ( 1 / 3 ) + d_r - d_b;		
			else if	( rgb.z == max ) output.x = ( 2 / 3 ) + d_g - d_r;
			
			if( output.x < 0 ) output.x += 1;
			if( output.x > 1 ) output.x -= 1;
			
			output.y = delta / max;
			output.z = max;
		}
		
		return output;
	}
	
}