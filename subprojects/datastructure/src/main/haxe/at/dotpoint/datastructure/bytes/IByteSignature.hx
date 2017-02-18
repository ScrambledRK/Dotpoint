package at.dotpoint.datastructure.bytes;

/**
 * @author RK
 */
interface IByteSignature<T:Dynamic>
{
	//
	public function getFormat( type:T ):ByteFormat;
	
	//
	public function getStepSizeType( type:T ):Int;
	public function getStepSizeEntry( type:T ):Int;
	
	//
	public function getSizeTotal( numEntries:Int ):Int;
}