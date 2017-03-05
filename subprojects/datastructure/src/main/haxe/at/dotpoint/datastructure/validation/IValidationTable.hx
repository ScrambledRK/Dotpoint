package at.dotpoint.datastructure.validation;

/**
 * @author RK
 */
interface IValidationTable
{
  	//
	public function isInvalid( index:Int, type:Int ):Bool;
	
	//
	public function isValid( index:Int, type:Int ):Bool;
	
	//
	public function invalidate( index:Int, type:Int ):Void;
	
	//
	public function validate( index:Int, type:Int ):Void;
}