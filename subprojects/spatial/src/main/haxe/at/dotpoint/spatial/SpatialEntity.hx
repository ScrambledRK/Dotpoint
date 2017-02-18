package at.dotpoint.spatial;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.transformation.ITransformation;

/**
 * ...
 * @author RK
 */
class SpatialEntity implements ITransformation
{

	//
	private var ID:Int;
	
	//
	private var scene:SpatialScene;	
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	public function new() 
	{
		
	}
	
	// ************************************************************************ //
	// ITransformation
	// ************************************************************************ //
	
	/**
	 * @param optional vector3 the result will be stored into or new instance if none provided
	 * @return transform-component for translation in model/local/world Space
	 */
	inline public function getTranslation( ?output:IVector3 ):IVector3
	{
		return this.scene.getTranslation( this.ID, output );
	}
	
	/**
	 * @param optional quaternion the result will be stored into or new instance if none provided
	 * @return transform-component for rotation in model/local/world Space
	 */
	inline public function getRotation( ?output:IQuaternion ):IQuaternion
	{
		return this.scene.getRotation( this.ID, output );
	}
	
	/**
	 * @param optional vector3 the result will be stored into or new instance if none provided
	 * @return transform-component for scaling in model/local/world Space
	 */
	inline public function getScaling( ?output:IVector3 ):IVector3
	{
		return this.scene.getScaling( this.ID, output );
	}
	
	/**
	 * @param optional matrix44 the result will be stored into or new instance if none provided
	 * @return transform-matrix for translation,rotation and scaling in model/local/world Space
	 */
	inline public function getMatrix( ?output:IMatrix44 ):IMatrix44
	{
		return this.scene.getMatrix( this.ID, output );
	}
	
	// -------------- //
	
	/**
	 * @param new transform-component for translation in model/local/world Space
	 * @return this transformation object for chaining
	 */
	inline public function setTranslation( value:IVector3 ):ITransformation
	{
		this.scene.setTranslation( this.ID, value );
		return this;
	}
	
	/**
	 * @param new transform-component for rotation in model/local/world Space
	 * @return this transformation object for chaining
	 */
	inline public function setRotation( value:IQuaternion ):ITransformation
	{
		this.scene.setRotation( this.ID, value );
		return this;
	}
	
	/**
	 * @param new transform-component for scaling in model/local/world Space
	 * @return this transformation object for chaining
	 */
	inline public function setScaling( value:IVector3 ):ITransformation
	{
		this.scene.setScaling( this.ID, value );
		return this;
	}
	
	/**
	 * @param new transform-component for translation,rotation and scaling in model/local/world Space
	 * @return this transformation object for chaining
	 */
	inline public function setMatrix( value:IMatrix44 ):ITransformation
	{
		this.scene.setMatrix( this.ID, value );
		return this;
	}
	
	// ---------------------- //
	// ---------------------- //

	/**
	 *
	 */
	inline public function hasRotation():Bool
	{
		return this.scene.hasRotation( this.ID );
	}

	/**
	 *
	 */
	inline public function hasScaling():Bool
	{
		return this.scene.hasScaling( this.ID );
	}	
}