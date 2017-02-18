package at.dotpoint.datastructure.validation;

/**
 * @author RK
 */
interface IValidationTable<T:EnumValue>
{
  	//
	public function isInvalid( index:Int, type:T ):Bool;
	
	//
	public function isValid( index:Int, type:T ):Bool;
	
	//
	public function invalidate( index:Int, type:T ):Void;
	
	//
	public function validate( index:Int, type:T ):Void;
}