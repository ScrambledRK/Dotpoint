package at.dotpoint.datastructure.bytes;

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
}