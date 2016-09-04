package at.dotpoint.math.color.transform;

import at.dotpoint.math.vector.IVector3;
import at.dotpoint.math.vector.Vector3;

/**
 * ...
 * @author RK
 */
class ColorTransformRGB implements IColorTransform
{

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() 
	{
		
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
	
	/**
	 * 
	 */
	public function toVector<T:IVector3>( value:Int, ?output:T ):T
	{
		if( output == null ) 
			output = cast new Vector3();
		
		//var a:Float = ((value >> 24 ) & 0xFF) / 255;
		
		output.x = ((value >> 16 ) 	& 0xFF) / 255;
		output.y = ((value >> 8  ) 	& 0xFF) / 255;
		output.z = ((value  	 ) 	& 0xFF) / 255;
		
		return output;
	}
	
	/**
	 * 
	 */
	public function toInt( value:IVector3 ):Int
	{
		var x:Int = Std.int(value.x * 255);
		var y:Int = Std.int(value.y * 255);
		var z:Int = Std.int(value.z * 255);
		var w:Int = Std.int(value.w * 255);
		
		return (x << 16) | (y << 8) | z;
	}
	
	/**
	 * 
	 */
	public function random<T:IVector3>( ?output:T ):T
	{
		if( output == null ) 
			output = cast new Vector3();
		
		output.x = Math.random();
		output.y = Math.random();
		output.z = Math.random();
		
		return output;
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
			
			case ColorTransformFormat.HSV:
				return this.fromHSV( value, output );
			
			default:
				throw format.getName() + " convert to RGB not supported";
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
		
		output.x = 	a.x * 0.5 + b.x * 0.5;
		output.y = 	a.y * 0.5 + b.y * 0.5;
		output.z = 	a.z * 0.5 + b.z * 0.5;
		
		return output;
	}
	
	/**
	 * 
	 */
	public function distance( a:IVector3, b:IVector3 ):Float
	{
		var x:Float = (a.x - b.x);	
		var y:Float = (a.y - b.y);	
		var z:Float = (a.z - b.z);	
		
		var d_r:Float = 0;	
		var d_g:Float = 0;		
		var d_b:Float = 0;	
		
		if( Math.abs( x ) < 0.5 )
		{
			d_r = 3 * x * x;	
			d_g = 4 * y * y;		
			d_b = 2 * z * z;	
		}
		else
		{
			d_r = 2 * x * x;	
			d_g = 4 * y * y;		
			d_b = 3 * z * z;	
		}
		
		return Math.sqrt( d_r + d_g + d_b );
	}
	
	// ************************************************************************ //
	// convert ...
	// ************************************************************************ //
	
	/**
	 * 
	 */
	private function fromRGB<T:IVector3>( rgb:IVector3, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();
		
		output.x = rgb.x;
		output.y = rgb.y;
		output.z = rgb.z;
		
		return output;
	}
	
	/**
	 * 
	 * @param	rgb
	 * @param	output
	 * @return
	 */
	private function fromHSV<T:IVector3>( hsv:IVector3, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();
		
		if( hsv.y == 0 )
		{
			output.x = hsv.z;
			output.y = hsv.z;
			output.z = hsv.z;
		}
		else
		{
			var h:Float = 6 * hsv.x;
			
			if( h == 6 ) 
				h = 0;
			
			var i:Int = Math.floor( h );
			
			var n1:Float = hsv.z * ( 1 - hsv.y );
			var n2:Float = hsv.z * ( 1 - hsv.y * ( h - i ) );
			var n3:Float = hsv.z * ( 1 - hsv.y * ( 1 - ( h - i ) ) );
			
			if( i == 0 )
			{
				output.x = hsv.z;
				output.y = n3;
				output.z = n1;
			}
			else if( i == 1 )
			{
				output.x = n2;
				output.y = hsv.z;
				output.z = n1;
			}
			else if( i == 2 )
			{
				output.x = n1;
				output.y = hsv.z;
				output.z = n3;
			}
			else if( i == 3 )
			{
				output.x = n1;
				output.y = n2;
				output.z = hsv.z;
			}
			else if( i == 2 )
			{
				output.x = n3;
				output.y = n1;
				output.z = hsv.z;
			}
			else
			{
				output.x = hsv.z;
				output.y = n1;
				output.z = n2;
			}
		}
		
		return output;
	}
}