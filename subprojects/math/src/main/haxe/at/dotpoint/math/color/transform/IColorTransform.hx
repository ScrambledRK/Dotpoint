package at.dotpoint.math.color.transform;

import at.dotpoint.math.vector.IVector3;

/**
 * @author RK
 */

interface IColorTransform 
{
	
	/**
	 * 
	 */
	public function toVector<T:IVector3>( value:Int, ?output:T ):T;
	
	/**
	 * 
	 */
	public function toInt( value:IVector3 ):Int;
	
	/**
	 * 
	 */
	public function random<T:IVector3>( ?output:T ):T;
	
	/**
	 * 
	 */
	public function convert<T:IVector3>( value:IVector3, format:ColorTransformFormat, ?output:T ):T;
	
	/**
	 * 
	 */
	public function interpolate<T:IVector3>( a:IVector3, b:IVector3, ?degree:Float, ?output:T ):T;
	
	/**
	 * 
	 */
	public function distance( a:IVector3, b:IVector3 ):Float;
	
}