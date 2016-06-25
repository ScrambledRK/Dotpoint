package haxe.at.dotpoint.math.color.transform;

import haxe.at.dotpoint.math.vector.IVector3;
import haxe.at.dotpoint.math.vector.Vector3;

/**
 * ...
 * @author RK
 */
class ColorTransformLAB implements IColorTransform
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
			case ColorTransformFormat.XYZ:
				return this.fromXYZ( value, output );
			
			default:
				throw format.getName() + "convert to LAB not supported";
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
	private function fromXYZ<T:IVector3>( xyz:IVector3, ?output:T ):T
	{
		if( output == null )
			output = cast new Vector3();
		
		var x:Float = xyz.x / 95.047;          //ref_X =  95.047   Observer= 2°, Illuminant= D65
		var y:Float = xyz.y / 100.000;         //ref_Y = 100.000
		var z:Float = xyz.z / 108.883;         //ref_Z = 108.883
		
		if ( x > 0.008856 ) x = Math.pow( x, ( 1 / 3 ) );
		else                x = ( 7.787 * x ) + ( 16 / 116 );
		
		if ( y > 0.008856 ) y = Math.pow( y, ( 1 / 3 ) );
		else                y = ( 7.787 * y ) + ( 16 / 116 );
		
		if ( z > 0.008856 ) z = Math.pow( z, ( 1 / 3 ) );
		else                z = ( 7.787 * z ) + ( 16 / 116 );
		
		output.x *= ( 116 * y ) - 16;	// L
		output.y *= 500 * ( x - y );	// a
		output.z *= 200 * ( y - z );	// b
		
		return output;
	}
	
}