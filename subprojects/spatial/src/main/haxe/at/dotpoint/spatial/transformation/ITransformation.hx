package at.dotpoint.spatial.transformation;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.vector.IVector3;

/**
 * @author RK
 */
interface ITransformation 
{
	/**
	 * @param optional vector3 the result will be stored into or new instance if none provided
	 * @return transform-component for translation in model/local/world Space
	 */
	public function getTranslation( ?output:IVector3 ):IVector3;
	
	/**
	 * @param optional quaternion the result will be stored into or new instance if none provided
	 * @return transform-component for rotation in model/local/world Space
	 */
	public function getRotation( ?output:IQuaternion ):IQuaternion;
	
	/**
	 * @param optional vector3 the result will be stored into or new instance if none provided
	 * @return transform-component for scaling in model/local/world Space
	 */
	public function getScaling( ?output:IVector3 ):IVector3;
	
	/**
	 * @param optional matrix44 the result will be stored into or new instance if none provided
	 * @return transform-matrix for translation,rotation and scaling in model/local/world Space
	 */
	public function getMatrix( ?output:IMatrix44 ):IMatrix44;
	
	// -------------- //
	
	/**
	 * @param new transform-component for translation in model/local/world Space
	 * @return this transformation object for chaining
	 */
	public function setTranslation( value:IVector3 ):ITransformation;
	
	/**
	 * @param new transform-component for rotation in model/local/world Space
	 * @return this transformation object for chaining
	 */
	public function setRotation( value:IQuaternion ):ITransformation;
	
	/**
	 * @param new transform-component for scaling in model/local/world Space
	 * @return this transformation object for chaining
	 */
	public function setScaling( value:IVector3 ):ITransformation;
	
	/**
	 * @param new transform-component for translation,rotation and scaling in model/local/world Space
	 * @return this transformation object for chaining
	 */
	public function setMatrix( value:IMatrix44 ):ITransformation;
	
	// ---------------------- //
	// ---------------------- //

	/**
	 *
	 */
	public function hasRotation():Bool;

	/**
	 *
	 */
	public function hasScaling():Bool;
}