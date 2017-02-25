package at.dotpoint.datastructure;


/**
 * @author RK
 */
interface ITensor
{
	public function getByIndex( index:Int ):Float;
	public function setByIndex( index:Int, value:Float ):Void;
	public function getNumComponents():Int;
}