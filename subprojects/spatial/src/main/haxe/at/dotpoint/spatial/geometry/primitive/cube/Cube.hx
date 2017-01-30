package at.dotpoint.spatial.geometry.primitive.cube;

import at.dotpoint.math.axis.AxisEuler;
import at.dotpoint.math.tensor.MathVector3;
import at.dotpoint.math.tensor.vector.Vector3;
import at.dotpoint.spatial.geometry.GeometryType;
import at.dotpoint.math.tensor.vector.IVector3;

/**
 * center, (half)extent representation of an axis aligned cube. useful for bounding box. <br/>
 */
class Cube implements ICube
{

	/**
	 * center point in euler coordinate system. 
	 */
	@:isVar public var center(get, null):IVector3;

	/**
	 * (half) extentions from the center to the outer bounds of the cube.
	 */
	@:isVar public var extent(get, null):IVector3;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	/**
	 * creates a new empty cube (center and extent 0)
	 */
	public function new()
	{
		this.center = new Vector3();
		this.extent = new Vector3();
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	//
	inline private function get_center():IVector3{ return this.center; }
	
	//
	inline private function get_extent():IVector3{ return this.extent; }
	
	
	/**
	 * @param value new min in euler coordinate system (TOP_LEFT_FRONT corner of the cube)
	 * @return this cube for chaining
	 */
	inline public function setMin( value:IVector3 ):ICube
	{
		MathCube.setMin( this, AxisEuler.X, value.x );
		MathCube.setMin( this, AxisEuler.Y, value.y );
		MathCube.setMin( this, AxisEuler.Z, value.z );
		
		return this;
	}
	
	/**
	 * @param	output optional vector the result will be stored into or new instance if none provided
	 * @return	provided `output` vector or a new one with the computational result
	 */
	inline public function getMin( ?output:IVector3 ):IVector3 
	{ 
		if( output == null )
			output = new Vector3();
			
		output.x = this.center.x - this.extent.x;
		output.y = this.center.y - this.extent.y;
		output.z = this.center.z - this.extent.z;
		
		return output;
	}

	/**
	 * @param	output optional vector the result will be stored into or new instance if none provided
	 * @return	provided `output` vector or a new one with the computational result
	 */
	inline public function getMax( ?output:IVector3 ):IVector3 
	{ 
		if( output == null )
			output = new Vector3();
			
		output.x = this.center.x + this.extent.x;
		output.y = this.center.y + this.extent.y;
		output.z = this.center.z + this.extent.z;
		
		return output;	
	}
	
	/**
	 * @param value new min in euler coordinate system (TOP_LEFT_FRONT corner of the cube)
	 * @return this cube for chaining
	 */
	inline public function setMax( value:IVector3 ):ICube
	{
		MathCube.setMax( this, AxisEuler.X, value.x );
		MathCube.setMax( this, AxisEuler.Y, value.y );
		MathCube.setMax( this, AxisEuler.Z, value.z );
		
		return this;
	}

	// ************************************************************************ //
	// toString
	// ************************************************************************ //

	/**
	 * prints min components followed by width/height/length
	 * @return the string representation of the object.
	 */
	public function toString():String
	{
		return "{center:" + this.center + ";extent:" + this.extent + "}";
	}
}