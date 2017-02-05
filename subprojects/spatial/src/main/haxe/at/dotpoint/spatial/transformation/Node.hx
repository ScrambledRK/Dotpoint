package at.dotpoint.spatial.transformation;

import at.dotpoint.datastructure.graph.IGraphRepository;
import at.dotpoint.math.tensor.matrix.IMatrix44;
import at.dotpoint.math.tensor.quaternion.IQuaternion;
import at.dotpoint.math.tensor.vector.IVector3;

/**
 * ...
 * @author RK
 */
class Node implements ITransformation
{

	private var key:Int;
	private var repository:Repository;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //
	
	//
	public function new( key:Int, repository:Repository ) 
	{
		this.key = key;
		this.repository = repository;
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
		return this.repository.getTranslation( this.key, output );
	}
	
	/**
	 * @param optional quaternion the result will be stored into or new instance if none provided
	 * @return transform-component for rotation in model/local/world Space
	 */
	inline public function getRotation( ?output:IQuaternion ):IQuaternion
	{
		return this.repository.getRotation( this.key, output );
	}
	
	/**
	 * @param optional vector3 the result will be stored into or new instance if none provided
	 * @return transform-component for scaling in model/local/world Space
	 */
	inline public function getScaling( ?output:IVector3 ):IVector3
	{
		return this.repository.getScaling( this.key, output );
	}
	
	/**
	 * @param optional matrix44 the result will be stored into or new instance if none provided
	 * @return transform-matrix for translation,rotation and scaling in model/local/world Space
	 */
	inline public function getMatrix( ?output:IMatrix44 ):IMatrix44
	{
		return this.repository.getMatrix( this.key, output );
	}
	
	// -------------- //
	
	/**
	 * @param new transform-component for translation in model/local/world Space
	 * @return this transformation object for chaining
	 */
	inline public function setTranslation( value:IVector3 ):ITransformation
	{
		this.repository.setTranslation( this.key, value );
		return this;
	}
	
	/**
	 * @param new transform-component for rotation in model/local/world Space
	 * @return this transformation object for chaining
	 */
	inline public function setRotation( value:IQuaternion ):ITransformation
	{
		this.repository.setRotation( this.key, value );
		return this;
	}
	
	/**
	 * @param new transform-component for scaling in model/local/world Space
	 * @return this transformation object for chaining
	 */
	inline public function setScaling( value:IVector3 ):ITransformation
	{
		this.repository.setScaling( this.key, value );
		return this;
	}
	
	/**
	 * @param new transform-component for translation,rotation and scaling in model/local/world Space
	 * @return this transformation object for chaining
	 */
	inline public function setMatrix( value:IMatrix44 ):ITransformation
	{
		this.repository.setMatrix( this.key, value );
		return this;
	}
	
	// ---------------------- //
	// ---------------------- //

	/**
	 *
	 */
	inline public function hasRotation():Bool
	{
		return true; // this.repository.hasRotation( this.key );
	}

	/**
	 *
	 */
	inline public function hasScaling():Bool
	{
		return true; // this.repository.hasRotation( this.key );
	}
	
}