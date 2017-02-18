package at.dotpoint.datastructure.bytes;
import haxe.ds.Vector;

/**
 * @author RK
 */
interface IByteRepository<TType:EnumValue,TSignature:IByteSignature<TType>> 
{
	/** where and how the data is stored */
	public var signature(default, null):TSignature;
	
	//
	public function readTensor( index:Int, type:TType, output:ITensor ):Void;
	public function writeTensor( index:Int, type:TType, value:ITensor ):Void;
	
	//
	public function writeInteger( index:Int, type:TType, value:Vector<Int>, offset:Int = 0 ):Void;
	public function readInteger( index:Int, type:TType, output:Vector<Int>, offset:Int = 0 ):Void;
}