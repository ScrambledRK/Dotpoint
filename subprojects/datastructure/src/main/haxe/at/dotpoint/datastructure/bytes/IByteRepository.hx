package at.dotpoint.datastructure.bytes;
import haxe.ds.Vector;

/**
 * @author RK
 */
interface IByteRepository<TSignature:IByteSignature> 
{
	/** where and how the data is stored */
	public var signature(default, null):TSignature;
	
	//
	public function readTensor( index:Int, type:Int, output:ITensor ):Void;
	public function writeTensor( index:Int, type:Int, value:ITensor ):Void;
	
	//
	public function writeInteger( index:Int, type:Int, value:Vector<Int>, offset:Int = 0 ):Void;
	public function readInteger( index:Int, type:Int, output:Vector<Int>, offset:Int = 0 ):Void;
}