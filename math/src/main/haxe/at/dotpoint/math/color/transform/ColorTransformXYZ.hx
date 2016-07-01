package haxe.at.dotpoint.math.color.transform;

import haxe.at.dotpoint.math.vector.IVector3;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * ...
 * @author RK
 */
class ColorTransformXYZ implements IColorTransform
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
		return null;
	}
	
	/**
	 * 
	 */
	public function distance( a:IVector3, b:IVector3 ):Float
	{
		return -1;
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
			
		var r:Float;
		var g:Float;
		var b:Float;
		
		if ( rgb.x > 0.04045 ) r = Math.pow( ( ( rgb.x + 0.055 ) / 1.055 ), 2.4 );
		else                   r = rgb.x / 12.92;
		
		if ( rgb.y > 0.04045 ) g = Math.pow( ( ( rgb.y + 0.055 ) / 1.055 ), 2.4 );
		else                   g = rgb.y / 12.92;
		
		if ( rgb.z > 0.04045 ) b = Math.pow( ( ( rgb.z + 0.055 ) / 1.055 ), 2.4 );
		else                   b = rgb.z / 12.92;
		
		r *= 100;
		g *= 100;
		b *= 100;
		
		output.x = r * 0.4124 + g * 0.3576 + b * 0.1805;
		output.y = r * 0.2126 + g * 0.7152 + b * 0.0722;
		output.z = r * 0.0193 + g * 0.1192 + b * 0.9505;
		
		return output;
	}
}