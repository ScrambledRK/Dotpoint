package at.dotpoint.datastructure.validation;
import haxe.ds.Vector;

/**
 * ...
 * @author RK
 */
class ValidationTable<T:EnumValue> implements IValidationTable<T>
{

	//
	private var status:Vector<Bool>;
	
	private var numEntries:Int;
	private var numTypes:Int;
	
	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( numEntries:Int, numTypes:Int ) 
	{
		this.status = new Vector<Bool>( numEntries * numTypes );
		
		this.numEntries = numEntries;
		this.numTypes = numTypes;
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //
		
	//
	inline private function getIndex( index:Int, type:T ):Int
	{
		return index * this.numTypes + type.getIndex();
	}
	
	//
	inline public function isInvalid( index:Int, type:T ):Bool	
	{
		return this.status[ this.getIndex( index, type ) ];		
	}
	
	//
	inline public function isValid( index, type:T ):Bool
	{
		return !this.isInvalid( index, type );
	}
	
	//
	inline public function invalidate( index:Int, type:T ):Void
	{
		this.status[ this.getIndex( index, type ) ] = true;		
	}	
	
	//
	inline public function validate( index:Int, type:T ):Void
	{
		this.status[ this.getIndex( index, type ) ] = false;
	}
	
}