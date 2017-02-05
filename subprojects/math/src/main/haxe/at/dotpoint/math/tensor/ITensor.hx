package at.dotpoint.math.tensor;


/**
 * @author RK
 */
interface ITensor
{
	public function getByIndex( index:Int ):Float;
	public function setByIndex( index:Int, value:Float ):Void;
}