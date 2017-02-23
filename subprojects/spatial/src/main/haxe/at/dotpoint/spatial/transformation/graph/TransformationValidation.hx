package at.dotpoint.spatial.transformation.graph;

import at.dotpoint.datastructure.validation.IValidationTable;
import at.dotpoint.spatial.transformation.graph.TransformationType;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class TransformationValidation implements IValidationTable<TransformationType> 
{

	//
	private var status:Vector<Bool>;	
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( numEntries:Int ) 
	{
		this.status = new Vector<Bool>( numEntries * 2 );
	}	
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
		
	//
	inline private function getIndex( index:Int, type:TransformationType ):Int
	{
		return index * 2 + (type == TransformationType.MATRIX ? 0 : 1);
	}
	
	//
	inline public function isInvalid( index:Int, type:TransformationType ):Bool	
	{
		return this.status[ this.getIndex( index, type ) ];		
	}
	
	//
	inline public function isValid( index, type:TransformationType ):Bool
	{
		return !this.isInvalid( index, type );
	}
	
	//
	inline public function invalidate( index:Int, type:TransformationType ):Void
	{
		this.status[ this.getIndex( index, type ) ] = true;		
	}	
	
	//
	inline public function validate( index:Int, type:TransformationType ):Void
	{
		this.status[ this.getIndex( index, type ) ] = false;
	}
	
}