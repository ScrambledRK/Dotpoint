package at.dotpoint.math.color.transform;

import at.dotpoint.math.vector.IVector3;

/**
 * ...
 * @author Gerald Hattensauer
 */
class ColorTransformUtil
{
	
	/**
	 * 
	 * @param	format
	 * @return
	 */
	public static function getColorTransform( format:ColorTransformFormat ):IColorTransform
	{
		return ColorTransformUtil.createColorTransform( format );
	}
	
	/**
	 * 
	 * @param	format
	 * @return
	 */
	private static function createColorTransform( format:ColorTransformFormat ):IColorTransform
	{
		var transform:IColorTransform = null;
		
		switch( format )
		{
			case ColorTransformFormat.RGB:
				transform = new ColorTransformRGB();
			
			case ColorTransformFormat.HSV:
				transform = new ColorTransformHSV();
				
			case ColorTransformFormat.XYZ:
				transform = new ColorTransformXYZ();
			
			case ColorTransformFormat.LAB:
				transform = new ColorTransformLAB();
			
			default:
				throw "color format " + format.getName() + " not supported";
		}
		
		return transform;
	}
	
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	/**
	 * 
	 */
	public static function toVector<T:IVector3>( value:Int, format:ColorTransformFormat, ?output:T ):T
	{
		return ColorTransformUtil.getColorTransform( format ).toVector( value, output );
	}
	
	/**
	 * 
	 */
	public static function toInt( value:IVector3, format:ColorTransformFormat ):Int
	{
		return ColorTransformUtil.getColorTransform( format ).toInt( value );
	}
	
	/**
	 * 
	 */
	public static function random<T:IVector3>( format:ColorTransformFormat, ?output:T ):T
	{
		return ColorTransformUtil.getColorTransform( format ).random( output );
	}	
	
	// -------------------------- //
	
	/**
	 * 
	 */
	public static function convert<T:IVector3>( value:IVector3, source:ColorTransformFormat, target:ColorTransformFormat, ?output:T ):T
	{
		return ColorTransformUtil.getColorTransform( target ).convert( value, source, output );
	}
	
	/**
	 * 
	 */
	public static function interpolate<T:IVector3>( a:IVector3, b:IVector3, format:ColorTransformFormat, ?degree:Float = 0.5, ?output:T ):T
	{
		return ColorTransformUtil.getColorTransform( format ).interpolate( a, b, degree, output );
	}
	
}